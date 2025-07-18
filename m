Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1E41E98E3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752831594; cv=none; b=NRHdkVlwKmYJJtnH8ubzRrfNvmlid1wqd8/4iRGdzUgIiOqppLZ2MLqR0HmBethUsv4vUVzkL0PYT1ZqIGlZwCArvw01tGXAw2TYx3AHtobjkbGoZSQ7bzuJTYE8n+lsPKer+7DC+O0gZUQ/pa8cQOUlqlyCsnjbUrmbz4vNH+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752831594; c=relaxed/simple;
	bh=4aw8YXHL+u4rhvy4XuDZdFf5Ou+VuXrHvobveCs2MWA=;
	h=To:Subject:From:Message-Id:Date; b=AGTS+n31/15uq9bIzOe8a+YLVHsjLRFGQp2SRNKN+PhTjIyzddaymwnVPxrZMFRBCjynXU6r0AAFP5UCSJHtnz5BD1jODP3rCoM5lpjiCCR4XCJu0wk6+k6TlLzLJzL4Nd4qhgdFlhPy7aHeyRAv8jMnkurhWpMlq/5NLHFMRBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtjTDX90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtjTDX90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC94C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752831593;
	bh=4aw8YXHL+u4rhvy4XuDZdFf5Ou+VuXrHvobveCs2MWA=;
	h=To:Subject:From:Date:From;
	b=VtjTDX90Ez/frkPHzVL62G2fp0yFuRgQuQq01lIfyuU/Ws8dLDnov0SKwkh32qPmC
	 VJNPz5Yo6+aoRZiK3xyhEC5rN3Ce6Xb3gK1I7FlPTg2BogeQvxDVwb2AKATFr7u1PJ
	 ApfBeLo+MRYCb4XYviAdD1fxZ9Ili3Ffmgq4SVyVu1reEcKmcGfpE6BX/EIBln+AXN
	 f+kdTIiJ4iPTaffxy656w2a+fESolpEAFAkmFDIPcfZyV9Lvzfj21U5R1Mp7P/G5/j
	 vu9A7Y6dkz+/nipqEt7uB6MTthsjJw9CT5J82JpF++XGo9mroN2aI6Pv235mAgsQKH
	 AVn5yX4JuHrhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DAC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283159357.13148.3526317564257813517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69198958a76a109657c77af71f76a4038dcabc07aeb42c4b2f4746b7643adc59
Date: Fri, 18 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752831593
