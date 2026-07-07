Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817D2F8E81
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783411714; cv=none; b=NQqVgzoMheAOHFzxMm9KfxLo0GMs+pw3a2Q+hvuCDwAWgvdM5boJ4rbn4eNqFa2JOhJNSKOc36gOzI2Y03QxBjZG7cRRnxFPwuyzu7sZ21UnCf1WRFFbManPiCySK7qBrWHWxSTXohLHTgzUFW3ftBi6yY+Ndo7rfFsLvyR50zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783411714; c=relaxed/simple;
	bh=lyLeAKvdEYdMFTdUuxrfsiQGElwyjtJTrbhyh6dkji0=;
	h=To:Subject:From:Message-Id:Date; b=FlHOqsKOEzLfh7shrJ5+g+GiueeA57wsQr1pxDPlOxfFGow2/JGsC7YATPtkg32ZMtMfH+pro5iAbC95TLOluMCQQ1QJaTr01x0uD7QicQ5Pcd0D8I6dKHah1MYToQfkfWHgRz7krYu/OMftykJp6o84oBA9d/A2mri/kNxN8jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxCLFy6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxCLFy6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7BBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783411713;
	bh=lyLeAKvdEYdMFTdUuxrfsiQGElwyjtJTrbhyh6dkji0=;
	h=To:Subject:From:Date:From;
	b=YxCLFy6KHpS6b11/YagKBDsEz40KSwVmrdOyUXqMk1niPQXCgHd5ry/IYLK8af/NA
	 BPEX8/RD8fAuU/o9HVOs+ZgX1hBxJO2tr210geeNKAZzvXPZxAF93xumKsNd5E5pcK
	 kuWwluCpGJi62UFWk+uhc5zXTW141uwkxx+AjR2NvqA3SNrh6C//lkJJ6aGe8/eQCZ
	 XTIkrYDzmR9zC7EKAiQf8YF80RqkxyNimF607B61KGqfVnffJj9a+d+UHD/UDykyNP
	 rw3Cb63XqsrOo3hdjk6iiSITzH3cp0cU5X/1m/HezBkfn+RitVsepqvmD74uyYf8WB
	 yFTAS/olTJ5KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5053C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341171373.23991.2348801827357431059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2389e35323aee1764a7b0d4c9c64f2c60abda91dfcbdebe646efb1e83cc470
Date: Tue, 07 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783411713
