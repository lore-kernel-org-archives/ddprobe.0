Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD541EB36
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728141954; cv=none; b=LmW8+zLiEWYvwP6KX9uKsB5taN7bjRUREIecjbHpqSxgAsF7vTt7zBRPZ8i3iqVpYBRXm6PDacQtp5zUQ4PRADNOFu5Qbi+vHy6l2+OOQE8CYqUm+6ajHlGEph5u6L40X43nMCS2y5ZaW8WHQy8BuIvwV3JhxJLHWRYmZo/0K14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728141954; c=relaxed/simple;
	bh=67+m/ZbLjN+kyhiydf/78cUFHVbKXgJWPat4u8AWoew=;
	h=To:Subject:From:Message-Id:Date; b=unYLVxDu4EuJZqSv4YCRCm/QChYW1S28LUIz7N050CxBGFs//3BHUvAHPjHexzSG+nptmtSaJGSzwa/+hnpPzeNSw2ek77PZOaJk08H0KqlxHvRFgRwIX4ilAt3mMFmVT8ErsGGLBs+4cGcZhbTp5tgpVAwiVeFTJkB+VLtPMfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SStfbM3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SStfbM3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55E7C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728141953;
	bh=67+m/ZbLjN+kyhiydf/78cUFHVbKXgJWPat4u8AWoew=;
	h=To:Subject:From:Date:From;
	b=SStfbM3C2u5KAxgy9CukBiwpuNm2lIOzKHUdIzZM9ypOFv7u0yekrvlgaSYZ/A+8d
	 ztCOxu7J0mSfBixSUsgsBveq+5UnR7iV6yP0pa1RBq3kJfsAwMw+XEigtSRcMC8dc+
	 eqEvyx2RogtjaPTAJ5dg3pOLAJCcAa6351oXoQFgKwks9n7nLOAsHXwuc9OLeq+/es
	 1wQlImaFoluL7qHAIFWQ0ybNTTQKtr/C6+U+cGIef3rEk1DVdXyBqOMbR9ho+QUGTl
	 7SPivLUGvdpJjMlQobreN1mKoFxZtqgjlcMC21nTTznVLA9Rjur2qsUbfMTiq2SoYm
	 UDwgkX9aNAxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12A3CF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814195362.4319.15709833947421055178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e1b3cba9742b732e130174b8b7573b98b9a3f0b26e3914630d1bd4d2ca19a6
Date: Sat, 05 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728141953
