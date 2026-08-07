Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2961E34F479
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786082434; cv=none; b=DgYqbxR7ID0tTKNoed1qYRxcwWVImnksZzWF6j4k2gttkqSHNMnNHyAxq02CBbdOBO04Jp3zO6w/GyOuO21+Kuoj4kWnBTXZdE7XXtSsRapHatsgngXcURzYdNtexeZZjNY2xm0MB6u8QRJ4GMZHp42ekuGdDyyRgVmC9S2TPmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786082434; c=relaxed/simple;
	bh=grPz12maA4H043mHnWVacZWa63R0BmL83RuXjSvS7QA=;
	h=To:Subject:From:Message-Id:Date; b=glyjV1Di8fcgHix0g5hbgnuFaxdcHdHpzdzyoZ7foppyPLB+/8HTuXHDcBqCtBW1JUWInV1g9J3kHHvVb3k58/L1NEuJzgavyDA5RmnUtzAnPccQhqWgQPAQxVwxfY/fWsxbErLUqs6MzRKShMpAtHKRHaW0QxRp1eOAwDOg/l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4+P/c6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4+P/c6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD93C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786082433;
	bh=grPz12maA4H043mHnWVacZWa63R0BmL83RuXjSvS7QA=;
	h=To:Subject:From:Date:From;
	b=n4+P/c6/VyNwGKI7TakbNa/p0R/xaEQzp2zMraNTwp9O4J8gQr1Ij91TH8suYdM4p
	 eGskRHhYL8Tz3rIUXwkj/yP4V9GRU1fpCGoNO/HffSpHmLCWSZLcIFbeWc/HsZQu+o
	 rGuFwQlkhU3NR4UsofoF198kV4Eq3P0iu/M8pTFysB2xfsqcNEl9o0LUTv3WzkxduY
	 QF8XVm9bgAuNGX64zyLD9cBgmJH32/G+JvznAbO1UQpA7LAoi2g46pEV65MmVECcF9
	 KBa/UegiCqM9WRTSsFaWOjO5txRJOl3xZQYchJzC8y9rUzpCpytuZ/1Wu7BFcH5EDI
	 gDk5YsXj7z/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D7C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608243369.15686.4328338015385967986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a0588324e42f13a97458ebd2e4556ca3917049a1feb817022b4b4187e5da7a
Date: Fri, 07 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786082433
