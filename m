Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C1F155345
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732876555; cv=none; b=Ci7Xr07gbGzafJLcy0RgT419dnnOFWLXbZg/yVpDukMV4JTOwt+Vrq2EaGSfpnF6IalkVABFCSbAdYlQrPTmFt/jfn0Jn1m0hBJ+8HxN7eXpGTQv1R5FJKDMaiBldBie7R8JDUXl1bVTT6QbQkgZqZ26m5oY0jUxORpgHx9g/fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732876555; c=relaxed/simple;
	bh=q7Rug+jvvgvoZFHBBCWgVMr6IoS0BW2oM6h8WrIHjTI=;
	h=To:Subject:From:Message-Id:Date; b=gMO1OG8NbocSqFHFbHsmgoqU/OM/EVFfPZ7ZMz8gQvd0S0wl5xrAl7781lf9HcLe5DQE4JZqci32ZyuLi9SeWF7+9Qzis6wjHTVKFlmtozOdPvQhYxMjR+GGZwICtmMqhpgV5IizBSxcZprBfwKu2OS6pWQSMGC1cm0KeIUlpyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUAMHlcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUAMHlcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2226C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732876553;
	bh=q7Rug+jvvgvoZFHBBCWgVMr6IoS0BW2oM6h8WrIHjTI=;
	h=To:Subject:From:Date:From;
	b=oUAMHlcN7xBN8RtT/9djDYjozq/ySLAKLN1ai97vbMNSQsH4AyI6alpak0loLw7XR
	 m4QyLzYMkkFKsmkhUV5ksZwQEAN9y0xO3OMA1eYAv/1ZkRySPngD2PjkTWqjRkMod0
	 fs+xeW6rruvaYs9pSkyjU3E0/Ujwjch1I5+fR5ETCRJoRhO2QujIHWa+ioGt6Kwnzr
	 hzM0pBeE/mIyuYf9T3sgBaYeF4VMTdvzAuulHQsoCkaEUq3e5Ng8rvLbD4ml9zJQJV
	 e+6hT88l0f5lCTwRFl7RQHroo+J0q4At7DownQnr58iSQdEfkAad8slpK2nNjcV2Sk
	 twhbU+gxk8a7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A3D6EBFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287655361.21722.16325177668673286201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2660dcf60fe577917c2bdf1710ad5a857ada28f4177e1a06a43e4184d34883dc
Date: Fri, 29 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732876553
