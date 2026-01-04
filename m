Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDCC145348
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767492234; cv=none; b=tkVV3cAW7baZ/Yj1oa6LCLvaPEJ/jTV2EGYS7ZHIH4gwY1PUZX/bi9WeFGdqivhxeYUhoceG6wCFPDg2Ii0ZKTAeB/4zRa01IytkfJeppk+wkFQa/XtFjESR7B50W6TsN8+w0ZHUn5XUKRf4YeUZY/YivdmkUT47W/ZC2k9aMSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767492234; c=relaxed/simple;
	bh=fFy5bTjHg62B4XceG3UBxsRc8BHTCVrKUzDiOozSzBs=;
	h=To:Subject:From:Message-Id:Date; b=ajdPXIJbd5rwU7MXOpNT4xhtelHiJbShdRThU2MXjnCK3SJvTUgJxbunP5lu4COzn9L6j5xe355asbPTFyIkda0sR9VpxGOvEE2BB1Z2VfKhMSnW9OGdL/w6epjt8U+AZmuf9iEkMFKlW65Xx8lrHpItukEN/BIx4AWn00hyDO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6f/Tt+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6f/Tt+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D62C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767492233;
	bh=fFy5bTjHg62B4XceG3UBxsRc8BHTCVrKUzDiOozSzBs=;
	h=To:Subject:From:Date:From;
	b=O6f/Tt+MpVDxVWbsP17hkcEYN173fTiZGJloghOf5pZaTxlEu/JFDRJxYLvvaT/eJ
	 l7ZTcAEYValLPRJCzw3g9n7dtsZ2+DCbPQINbRsOd36Xx3P61KzOXOCK0ljsblanS/
	 /UvJDevVqTts5sCQsh/w0z4K+mbilngUtOttLBfEWmF0O+2ybqB7N7X9oCEOfnBAI9
	 ZNILtjLZSpknLPRJaMguHnsedEJ6TAYKowhib0f7cRNoKXmc5OQ19Z3CjdiWwSADfW
	 7wh9weyW523AUhkXWaFUMxzwlJiIY3edwiIGkPkSLCdK+KiOvM7uxgR1YRqkqZkL+8
	 VPO1kbcEeMcmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9579EC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749223357.13834.17872120684068777128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ad5bd8546de3eb6b92de967620e211ed81a3c66fa13f190f46e02b460208ae
Date: Sun, 04 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767492233
