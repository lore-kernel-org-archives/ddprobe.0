Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1AD4A0F1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789047034; cv=none; b=XpSMjIwXIl5qXVj3oGV3iIN0bZfT4H1IhV4qi//wPziUQLMcZAm5OuAxvyV5BC1COKlaeMGx42ghjo/yBmNhM4w5BkNBRsZetFXEt5Ay8ut4W8GiigOwRTwNtllFvg2kYLlqgvYJEZsIAP31Wi4FqbuAJwPI7Prvc7saX9ul4mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789047034; c=relaxed/simple;
	bh=Ws5BJpehvYlBE2aCCFTi3t8b1WfV8lnNTFsfFlYjKz4=;
	h=To:Subject:From:Message-Id:Date; b=OOQdQCOHpCtmQi7Iwl5t62aMMF6fbx9Oikm8UgQUFt8kyf+wZA84UBjEEParBvBfRP/gdJIWU0RETW9Rd+R0Gha35oY2bZLQBuywh+r8f6PTgVDyg0of91N7dXgkuKSliDmTwEeb1Hfk8QtfV0SMuIM5MPhWgy+rpLt8b3GeBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOCp5+Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOCp5+Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C84C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789047033;
	bh=Ws5BJpehvYlBE2aCCFTi3t8b1WfV8lnNTFsfFlYjKz4=;
	h=To:Subject:From:Date:From;
	b=fOCp5+GvZaAD68eouFmmJpmiX/MK5Tfo6mRpVijOty6zmtUvmD0tVanTa7AaxQVod
	 JEAEqhZ3OLEkdx+onp/zXBm1fG68BzPEVLqs7BNbjNvGn+kG3i9M7KHiSyO0qZRCNk
	 eB+XVmeezkpYabtr3Vw82nP60HOrH2mjPkFYXpxuPICR3KiHzlqAoqDu2nDDELhZtD
	 tmPzY/WU+KaVQ/R3JJWTS7iR5e3G/E2Cb72xVDLrmOzu+lwbCQs/QRyT/v8H6w0doT
	 thlCJNYGxaaBvTFQkngBfvHfiCbrBZYOlPnsE9UnpdYA0HHND0VQ86F2pIGnBykgdB
	 uOIvOD5X1LT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC68C88E42
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904703375.16407.14493038756152672487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864a322ecbc54227eceba00a16ecdf31324c184373741e38e5ef9acdf4c97b20
Date: Thu, 10 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789047033
