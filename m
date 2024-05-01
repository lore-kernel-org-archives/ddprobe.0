Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B5021105
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714557143; cv=none; b=PFrQWXlGnr2z4kkf3KNPRUobnyC6lMIAkje4ySenDSfacs1tssTnnTfl3lCxoupl/X3iT6C4f7sDcMz18T8DLsJgDUvK56IPG7jAgFj2YiZg0NKVeNilP1f1UUtPmdsaaiPLOl3+iKClpRwRVkg5twL7eZ8jw5jdWdKP/ifSuXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714557143; c=relaxed/simple;
	bh=fv2+HZ2Qaa5B7TtNCisn9Dms4arhFvtRmd+IDGuGXLs=;
	h=To:Subject:From:Message-Id:Date; b=Hf4aEvO7klX1++gwZBMP22yvnoCeCi2ksIF8BHz6+O11PYhDU+F4wJnubgez16csH4fMpOHTShzuXNV4AOEDtHYHzN9aisp4xtXDlEE4pXHXTelISwMyKqZO+YEmF3qRNCIihWDFCQKSkO6/e8NVUheNscsmfJlfigFqZ19nKTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMbl0Vwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMbl0Vwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B38C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714557142;
	bh=fv2+HZ2Qaa5B7TtNCisn9Dms4arhFvtRmd+IDGuGXLs=;
	h=To:Subject:From:Date:From;
	b=DMbl0VwpXD5O3sfCeAGFravc9fEV9WFxmdxivFU5jE47nO/i2qD8shYknqoMoHV8/
	 enDYbxvFkvRnrTG+R84IHn8qRjxG1H6T2ZIvJB5PY6Dss0Tu/syLioPVnc+71l18Ef
	 gc/LJlJTwL+812Rja40tdDoXGYF1sM4bpK4FfRrdTPDS0QYbaLxOzkDVxqcEKALPIP
	 EcCn1cn82XAKKGN26aFBsPO9SRU+DPQak5La4TbMd4Frabe7OmBdyijtsNMnTM7nY7
	 SZDcsyXhfMR7IvKfiP2GbmarWwzOW7lQtUaiWewP9oH0mId0Z3lhtuQbbjWSwqFaZE
	 wKhMfok1uJ8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A35C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455714276.10398.2544179429562815143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dbf0a01f4d6819051dd41c87bb51ce8e770f9cb29a6301ef9249be1cd59645
Date: Wed, 01 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714557142
