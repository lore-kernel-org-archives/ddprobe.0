Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C222E401
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712322497; cv=none; b=rfMFrsvrOJkca7K/au8Qu9dB8VlpbpdrtrwFBiJX7TGg2cWsX3cGpe8fMb6jwP1+5ELOkz7bprM4hSGqXsLOfhU3Q4sneyEGQgLZYc5CFvJXGFQabqPTs+EluHTCE3voNkjWmyN8OukpEbkl/eO/65Y68fKDdjIGGy/VNc1o8q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712322497; c=relaxed/simple;
	bh=o1zJT7F0FGvcyu79H29rNvrkNkFopSxDsUvGrov+CBc=;
	h=To:Subject:From:Message-Id:Date; b=Ua02WRZxm96L30v2CWhGhKycyMzeRZgpiDX+i7R3qrsSvpmratUN7vh5cHOUzM0EcmTamzZJ/5HOndXHaxe8jbXxasIfIdiSWkHXgCOC/zHxatVqdeq9f3jDu80Fu8XcUohsarEw12yNh6CjYjzN9Skfv2zuqgp+6+VtwunkCmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdxfPGpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdxfPGpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA5DC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712322496;
	bh=o1zJT7F0FGvcyu79H29rNvrkNkFopSxDsUvGrov+CBc=;
	h=To:Subject:From:Date:From;
	b=hdxfPGpGEa8/xLj2WnnPZNbCuYG7faLVTBfvp/7Qedo72MR2sH47iyX/gIkBg+XZE
	 uNNfxJgbW9hAE4cPe4RihmIAlc41xQ2jIrFLKuuaw+Usr9QLfXwkegY/9FrY7w5AoD
	 jab8REv0KvGlyamrOnhjKNqacYYOmU0KDPa8ECwQz7IZTSYSN4vAzzGfd3JkyV5K97
	 A9GNXgE8rT03hh/tdWcrrCC6WHO7nOdfBDxSztGMKNPW8u7B7TlTQMGLvBwq8NOFFc
	 T4JuV450CDXzACOP0T6aSQTv/VrfMLtcb8cNgpS6KeYbze0GTSIKKbUlc9A4IZtOil
	 BReDCYZnYMXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F22AC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232249638.25429.18297753426663961875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8b0442a9b902559294290b20f75e66e543d2aa8c21494e2a20df09e754e01b
Date: Fri, 05 Apr 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712322496
