Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51E3016F2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765510374; cv=none; b=qu8Y10mM/fHZdXUUStiMz2nTsAE9/IrmPYw7crOu5c1Gz0QuTpKEXmkZR7trQL+990AGpKphhbks32jOgZwx7EKI8gqQr1csYOUIa5KtFGARonOopmxB8uAfI+vqdKW54ysYYSb8pzjbFly/yNhpkC0N2+BxFmHudz0/fI2I/gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765510374; c=relaxed/simple;
	bh=C7XecYJg5RYKGpfanveMHCtNLyXEcPPvIAydjAEGGPU=;
	h=To:Subject:From:Message-Id:Date; b=o8tkprQICDIL3TyJhghFN6oS+MYERLLyURU8fPVyhp5WhPgeLb3NjUuYe1tbTwEJTpZiKzgMfbAvZZimh1bQNpWtJ6ChN/Af6ODAcEDt0hKf4xWRN9u0+71hcNVPNwjSWHyGQsnoq/EzL9wFrZzQF9ue5kJgrrjhLsr4O+dXU9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgjywKKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgjywKKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B3FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765510373;
	bh=C7XecYJg5RYKGpfanveMHCtNLyXEcPPvIAydjAEGGPU=;
	h=To:Subject:From:Date:From;
	b=cgjywKKcoUlsg7duPN6ARjQ8nD81lzLKjl/iG53t+s05G/IpXCKobwHtjCAxUGaqg
	 XRxpkxSCXvm0T4cGnU/408UvZv3FB3MCrfLSmxHa3zFePa4v+O7E6vgeouHEK2l7jz
	 qTJUnoRK4pn0+YIrC0Z+wGAlgeSQdUltYUClP+rEsK3mN8g+Qm6R1n+3/EBSWO58Xz
	 3xvsWav+GS93CubQDjNpk9Ar5N7BBKAAPn8A3P5440cRxopO/op5beQfkMzLuVGTS4
	 GTXjYfeLcTqu3bXV8Cq3jF8Qq/UWFXc453+v363+zGlXLKXatqDCE46PIM700stkV6
	 Sn0CgL40Klwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DABD43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551037358.29346.3831888768198591329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb05c5b8c2ad6891a6d3a19bd7ed324658a843ef1f6ef4b6a7129fb4d54c4b03
Date: Fri, 12 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765510373
