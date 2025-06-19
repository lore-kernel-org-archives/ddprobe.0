Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD11DE885
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750307994; cv=none; b=LFhdSLca8o6S5dZoUKvUXrj7XrBB5i+waMCM7zkMURUS2exs8SqhsHORwrvWuJV5PRnfcsQRmRI9Dl/yx9bJ3ADYCBShf31RQT75uYanYz+FSlIKDqx7RR9G9kAeuf/tSMehllRvbApen7jjN99W+tPljf5MoWrkurb8Z4AkYBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750307994; c=relaxed/simple;
	bh=1c7/DkxRpcZNuRNJm7UuSXcPIf8D2dSR3LP9d9E4/Iw=;
	h=To:Subject:From:Message-Id:Date; b=azzC782KrwiKGi0yRrdFbXu+fWTFSZWihqeQzJVLgNjWQ1hpX7WZfsepYJpCVdaxM1/S4aCMFG9drYMCega6H9wjnmxRVniuOhLznKNPdljeSqY/tkNtosUgvIZe5wbDuuAgA+T/WWVnJROkvMsRc4XXg8pceOfdOHn7c5oKebM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An9flpBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An9flpBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F5EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750307993;
	bh=1c7/DkxRpcZNuRNJm7UuSXcPIf8D2dSR3LP9d9E4/Iw=;
	h=To:Subject:From:Date:From;
	b=An9flpBChtph/6apN14CPtzlETufFgQsadYzeLrGAFBJn0gj8GWGB3wm7QwAAdeN8
	 ueTGfFcDYmFtMtIehSWH8e4L+g9Qfsz29qcQIJrKdC1vUv2v12ewWlgBs/aFUA4w4G
	 hE8XdoVxuLOOMBth493z5iHTpdZJVSbQOyVMgQfFiXFcx7sO1MOvDH0Iozz3kPHEaj
	 Sye9cni22ygbTWmQHR21FY+j5kz64+ZTo5A0zVKgpBCBwpzw5Xpr6PlQuZfFfaaQ7f
	 IHVIvx1GpMSCEowY/8nWE+YYBD0KrmDYkdBalRw61Qz1jKNRwT39uSWkD8fIetiET3
	 pmHftd6pRYuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98863C71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030799361.17403.4180573371370228890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4d71a305cd130f4e0ead12b38d34307f649bffe3ce4905375273eb18635dcd
Date: Thu, 19 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750307993
