Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307C33D8908
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783582114; cv=none; b=otvI4Rh8aROPUcFnNfRm3+aauWqkBoPwuClcf5BTh50RBaUGcsCut3RG/TMg96bIILwHV4vGUW+5uKKkVVhQvl596iqdYKBlfjPzvCZWVm39EGZaxA1SZD+tJR6PkETBb8ARog9xmvB7vXUppCFxw1u1BRQTFTWkhRkVsEbrokg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783582114; c=relaxed/simple;
	bh=xvtip6THVmX0RrFrBZeVorowAGFaqvsB6szmYAn4dMA=;
	h=To:Subject:From:Message-Id:Date; b=XsS3vNT53iRAvx/XTMMhn/a92Jgy9eHzRFHlKYAEARIcbWgznqx8yqLpz42rs0SsFxKUbz+jwfr/bFPsqbA1MR6rvHAvJq0S9LQU2u4lkEQ6sGUD98pQtjspILmOe9mwMxd/2waZ8/QMkr88RXFEjAV0o0TIfuvYtsqKUH1fQvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nymw4PDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nymw4PDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83C4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783582113;
	bh=xvtip6THVmX0RrFrBZeVorowAGFaqvsB6szmYAn4dMA=;
	h=To:Subject:From:Date:From;
	b=Nymw4PDlaRkXphF4Vq770O002sqwmVws1TIv8QbW1PNEZn3ks78S/p0HJ69PJP+vA
	 X+UKJiBEG+c0NTqCHLyYSjK4o52QAraYB7CpjOTHhFQRdsPCW5D3M2LASPmMayoP1/
	 /3ALn61Co6sfeVUG+M0swE53JU7cxlXY33AHtVBYvupFRCqSyCkWuoqsz+kBCd1R0p
	 Npy73t0sNlETOq9o9Yi/vStlG4++62jeDkQ2kpsK5L/xSWSC5J49hmn8C5Pswa3TXL
	 gD0qDqHSiF54TJcXnV+5E3OiCg96oYw5xmhK1242zLUlWijBOGHTe/iINcaE9boRAF
	 nw7jGepUVFY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A38C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358211368.29098.7639864776302761883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183afe60a0f0f0c36e7bc504e8ec642d48af716b32dcb045a0e5dd35cf4a4c9f
Date: Thu, 09 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783582113
