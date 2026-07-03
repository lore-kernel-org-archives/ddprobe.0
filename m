Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432C73F23C5
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783089514; cv=none; b=M90QD48O7djDh1vnOOqW233ausX8A8UH0diYxsmo727A7H4BMUpI915YJoQTah6yQjMeh0ky/5BquUJeNoCIdbdn5E8IKfEIQFS46JyRrC2Ba2rmQdxyDYU/LsOZQI2LLGg398mD/dEkzZ4Q7dmwwkvETf+pDoZPsIglD5zuykk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783089514; c=relaxed/simple;
	bh=R56yz0ZxC1G6Ksa+/7v9lHdd3kKsrxEoz5IxkQ2PqeI=;
	h=To:Subject:From:Message-Id:Date; b=sAp0myjbidN4x4JH5IG8JA7wvd7+j1qrjeqA+fWvrYDSlw2fJBzHB/RWsqBZafPRlrtbROiHQZZYPcnibcBpuJDUE5FRFYMZ2yqSRdsFUxjWSG6QEombGHiqFExDOCr914spKzLt7CJcYzhyQ0Oj83PKVFjLqmVIFcLnM722vq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdILdF7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdILdF7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D475CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783089513;
	bh=R56yz0ZxC1G6Ksa+/7v9lHdd3kKsrxEoz5IxkQ2PqeI=;
	h=To:Subject:From:Date:From;
	b=WdILdF7ShJgGxTPRs3vYwfvsgHJ68tmleYarhLXLh/Zxyr8gDAWlDh6ITeN6VsDgr
	 jQkH8i31xpU8L0I03YTyEBNxAXIEO9GM4/IeJigJDMPGz1qVDHt1Bv/rS3aTdie3bl
	 jncd4W5NhpDkAJL0QxmfisjT59/3ODxoogi78XMbJMXhtO3p060oncAVeuCf5iXlEN
	 HufisYocyVlr9th/RqAT7ozOF/ZnxCZH596g6QXxj6iVU+zvn/8RMxAIzxaTUnxyi2
	 HsOTDghAyoHy8bSswfzQXupDi1DxKYVtm8TZtb79VbllvqbOrBu2sddpoY2JJAmAs5
	 s9ruY/yo0dR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD45C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308951369.17669.9967805103031368570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b3dac78b8839a07f6b38c0dc4f9c0bab36ca8f655d392e35464bf1fc75ff3b
Date: Fri, 03 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783089513
