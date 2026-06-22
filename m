Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28380238159
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117394; cv=none; b=E46Eh1C0mt+OF7ZJ0U9flHt33d+HCuGO0rsxdK1NzL4DKclBASo5rN6Efe1PbfAnqcqhkgnbKE1AnmD11KUmFsmj4rqAV6pMkFDZr113Tmnq+Hp25D57L8YwFSVkhVQz5IEp4MMTm5h8qStdVfbr28ud6FkkkvKXWwaEnc3mN5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117394; c=relaxed/simple;
	bh=dvXR7s2QH8la6PrFOu2jktMo/OgmXeP6B4PXYjitbW4=;
	h=To:Subject:From:Message-Id:Date; b=VoLR1b5WA5A8O+cgdn5UUw4ivAFF4glkxcID87ZuUJYH7sp6FdNZ1l2q95EGqLLXSlB5BElponKc52y95D7hZmKFcbSDeTV1ZPig+XadtSyXTOLfQceHVxaBcQYlIp33pHrOQlJG6xE94hrQZO4ylz8W8GiLN2rMWPZTWxXir3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDnjL+qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDnjL+qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CDBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782117393;
	bh=dvXR7s2QH8la6PrFOu2jktMo/OgmXeP6B4PXYjitbW4=;
	h=To:Subject:From:Date:From;
	b=fDnjL+qzOHtRsBUGueNk0xBa3EyE/u8ilSJ/sTGmwTJ+b3tiaF8BKLn42SHx6dqpM
	 P3HLV0Bfove4AqrdWrqUbGJcB3vqhA85V/IaMuwS5O6wlA/WWO9ES8CHze3qJuaLDd
	 QKyYb8R2L8he6kjfwoI/KOFRtrDIP0Ctv0/oJVCw3uTQXkfBgDOUi4E0UqR5kzTykx
	 A2S7Lkjo5I+vR6j0e9eHBXOzLg1RbCuN0VZBctpH0EdLiq5bVE0NA0HcL9tX6YsN7M
	 NKEMNTSd/0VdfXdxeZL0j/00HdaqXf1LnqlodoKdmO3hB5c9o2c8Snr04RAiCC+LDt
	 GAjN3E9J6Lb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF41CDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211739369.6807.15217735920900186824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8d9e95a3eb51d850e2148d8ae46146cdfc7f75b2909d8de7042fbf75ce3b82
Date: Mon, 22 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782117393
