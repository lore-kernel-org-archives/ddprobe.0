Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322D212542
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780113814; cv=none; b=fXU+5n30hanLpTJ2yFvxueeAOcFs0QPI8ZBTZerRh/YRAS8yaibZQAXOa/hIMUi2MUI+8VWfNdXM4Xj6gHpznoGmoXdFooXpMtI/wwAQP1KbDiX2WTIZDgZnfQx1AySk1sdt50Zn+tElrkeRvFwInAq80AIDp0XbGQrOWXwgpvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780113814; c=relaxed/simple;
	bh=oav9ehma+kvuMCk3z7wnppjwMRRCzmnlCKctph77oMI=;
	h=To:Subject:From:Message-Id:Date; b=IL/wXO7umdxLW9wOfX1pdLZnbE20PXn2OcT9fLO7JCSeNs77bvEEK0llTdttcLEycoiBGPMeXWSzX9mQJCcjpNO1wR5AUdYQrrxjjzrHbifHz3t43WtHOMC0tZu1X+iiWmgCJt5hfMlhFLPah8mmfJu4elwd8mosv6eK1zzA2F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWQgqBVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWQgqBVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA63DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780113813;
	bh=oav9ehma+kvuMCk3z7wnppjwMRRCzmnlCKctph77oMI=;
	h=To:Subject:From:Date:From;
	b=sWQgqBVmcxpx0eSye2sPkfuC6ECU68xm6yyT54tH+FUlyGiORpXC2Yr7967cs0O9O
	 lTovesbDNP83M9mk165Qermhrm6CqaWbgEeS6Jb0p0pI4vp0LDzqp+sk9nmqXADtvH
	 oNqywljuqu5Y6ngmOd/s6LCd9g5j9pXjeRBM7xDgvrj2y/v6krsxyMVM9RT4MwS29y
	 IoLcEnkjQR68dSpMMGcBI9MAtr5bXB85RBVgbBabobZ+dZRkMHUKDsN7jJ1Xgvc6iF
	 VVHJJ0Uv4rsBBd1WeBMHRO9rZ1A6KihVH56cGuuw2YX8zuUSEajLe11GcCIvg/CtJq
	 BzY7zSRl9trxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57ACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 04:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011381368.3520.12795618696911474229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d0d9dbe1e6451049bff53794db7d7cf675dd68712a7d1f0aa3d1f60edb909b
Date: Sat, 30 May 2026 04:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780113813
