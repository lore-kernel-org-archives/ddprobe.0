Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FB7367B91
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781981194; cv=none; b=aNKMvQ02QWXQyIwrTqld4FPt6/ba7yGTNlBduCOMbcBIlfyHWqgCgXhaFnkblk6wOj96zSt/JKh2KuajdguSY83yPoidCm07TNXt+qtwU1MimLA10Co/NSj8lzDuMys2hPsBZQA4ffR1s50wzkUXUS/ggYBF+ZpzS/3UxNYaw/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781981194; c=relaxed/simple;
	bh=zrUtcCcrB+4XZp4SlBUht5cpcBsqs982Rbo6tP31lbM=;
	h=To:Subject:From:Message-Id:Date; b=QCXA3UbH1zlVPKknzPtVPeKBVJhfenB/mRi0n4kN7hqN/ziLteCjkFX9epypG6FDHE0VXFfSUgiF+ppphXTsS7tzDCAnZHdk+DeWK5yjQnEMSh7MwaxvcS1gRibIzcOlDKjT8g0iUqTPZTf1Whn/VIpS6uEV5/YCf2kpT+oyBhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1gNisBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1gNisBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83D8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781981193;
	bh=zrUtcCcrB+4XZp4SlBUht5cpcBsqs982Rbo6tP31lbM=;
	h=To:Subject:From:Date:From;
	b=L1gNisBK7fJatvVbUzr8ENeGwviHtU6gFAL6bAXIOuPngsc4q2Jh9I8pCGsalOQgs
	 aRNF60YJABVjHslTSSkN3E5rUvw0YP5AjifeCiia0p8q8ZCiOfKGu2Q8ZhhIRyVeD/
	 qzSTKOIJmRYRrl0jwrh6vKUrt1XeLtQddLIjoeze75B69AVU/fR/SG0aTBpkt9FV6v
	 fpn1nkgud40/LuLoVt15EGHA6tDc+/1pahtCOkZpfZzpLaWOu+id4XF9WAhU7kQP+R
	 TSY4baFo7KR06v/zpq1U36lWvfCan+wkxonmGi4V56fgFiaImk2/cMg2ZLYsoHiR4/
	 xg7yIqrXtfhzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD007CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198119368.17070.9850301817685738520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5daaa61d23546f54baa5342a9cd3d9ecb3438bfaa53fdaa12885d4c5b265238a
Date: Sat, 20 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781981193
