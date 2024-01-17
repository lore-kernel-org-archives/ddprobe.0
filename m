Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2921B642
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705469297; cv=none; b=bu06ZheK1vq4D9Qx37PM3f3Uqy9n44TmLOpFqq1zfoq/VUavs2QaO6oNrE1bJOWGbxjy8ZHgDs4Z50QB9LLt28wmbIYZAalvgvnP20tiJeonFYRKsafz43OC2C7wP5H73Dk8zTI4Q2NHX7N0UXIYjzf2+zVKFk31WEQdAuA963g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705469297; c=relaxed/simple;
	bh=NyHIFp+3JqQvlV8XyBlZYnfxfMNzNxi5e6DV3DXIy2o=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=FrlgaAER4JjOlMwgMkosaF1m4UDBhh9jNO34btXZj1ru4EZpwRaqjkGJ5PNHQNrrZeqRsv1fj1kgzKhQE1Z9ZOBnXwAWmFTeoND08a7T9Bnkcwp1bBJJVbq20OtkYI84RNrV79i0t88sUBMV5NKTF1T0mr+a2/epmUZ/7eKla94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhIoSObW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhIoSObW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78123C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705469296;
	bh=NyHIFp+3JqQvlV8XyBlZYnfxfMNzNxi5e6DV3DXIy2o=;
	h=To:Subject:From:Date:From;
	b=qhIoSObWzQ0uwbm4MTKIzKmipujeR972bWMluK6Q/d2DLd3A35S9UazPpYPnYmxoj
	 c6IgCgt/ekLeOJHwrJdMOJY2MyzUUKQM4Vw0SHkI91UZk2o6F/kPRBgaUdZPC4prL3
	 /P2cQTWaU3SBaK6gPEn4Nft7kNX1cU/SEFKT6ra/W7Tkok2t+1/26XeWyQGYeueeSb
	 4O+sboVFuue0NKL/GKUywDDyeJFUBBi7lGfMaJyOZ02G7YLsuFo9E0wuyJJX2Vch7N
	 L2t53X3aFNrSpPuKEdpGvA+XeKNNURKJxro0psD0IpYkQnMak69Fo6Qt4ElVx/bJea
	 Qnhxmpy3OdEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9DBC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546929636.15836.4491639238566309232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b4375d0ad5a183b85015715db2043877c989a9d69e21c2465cb97f9e73b4b
Date: Wed, 17 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705469296
