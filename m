Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380E615D1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741951734; cv=none; b=NIzlxgG+W5TcLDojXfxrI/wssZh0ZgTFI/qhRgfnabiEPJdxOvPj8BM/Jrgpi8l/+MNIPpPGPTKVbtywdf0EcfdGH0RCeXHSxzao8GhrkVZ4xRXf0m2iX2gJAUPn4mfl1Z9SfS9Wxc/5opKMDNg3kLBq5RhnIsldzvzaasT+pG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741951734; c=relaxed/simple;
	bh=fNz7IYTphr88uolV2SnMSydtPNzKLHUkpBI1wSdFEOU=;
	h=To:Subject:From:Message-Id:Date; b=I/fMecXqc9CbwUvWcd4VnLqErCXxl7f05w1ujWaaky083AeDilwG2kCA5CGGRXJIOlRPWjtbKIzPBIoL0aRTzlDF50YlnwmzYXuWdQceP08jQR+7aDvDGsypvJOv9LrjLbto5/q8PAlLmgilIKf3ypGTsQF6r/9+ihpCOLkmbbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVhxJkWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVhxJkWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C54C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741951733;
	bh=fNz7IYTphr88uolV2SnMSydtPNzKLHUkpBI1wSdFEOU=;
	h=To:Subject:From:Date:From;
	b=kVhxJkWl4a/xNorC47ax/VIub6Fg7hwwNIUm0bfigCl918mO5h3TeKoA83UnK7hLQ
	 CelEXzuKc3x1SXUoGr9axuMc+xTlyY7NuflmFOI73lfh7AegiueYQsdKQ5KOuXJnLt
	 Ec8nUgD5OIibg8rcvUAuUVcfMJHPVIRT4D3CZ/fDT+gfJmWytBKWNkv0EQv+tr0cz2
	 DLCQJpH80cJL79V428Xj6PZF6H/4xfFQasXvC3Fs2GhHuEnlVkqY+fNiqc+UAo74Ig
	 1S7zw8ytBPq03vfT3ThZ6COs6VFPbrklVWickznO7Q9mNTsKsTsnyhKyOzlhYuipq2
	 ee22sgS89p/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DBC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195173360.5904.5900607319606278818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32c943c6a30fa5dbfae22c567bf44b1a4848f1d6c6a2197f3f2af3b13629bb1
Date: Fri, 14 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741951733
