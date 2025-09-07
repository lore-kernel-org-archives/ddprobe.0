Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230E710E3
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757223594; cv=none; b=k91LDMYbgyC/f8ai77vsG9zLkkHxemQ+iqkJLzy3dCiBjXtQ/j6QJHcbcXbkf9aSOW0B9nIbCfklZjdfG5Es5oNKV7Eo9yOhqjufG94ELa3xdb66k+BHEEDSOuGxc2wm2E+r5ZvfqiB4+hj0SbUsth0cQW35PH1h9U/DymdoYiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757223594; c=relaxed/simple;
	bh=VyoFtOohJTsU3XTnCUmNZq062aP1Fkr1DvE0cbmshmY=;
	h=To:Subject:From:Message-Id:Date; b=hE5dVj+m9VneSrRUgw+qpvNCYgC3aX3OAMEpyxLXCk1Rn+vyHNhwfIbN02c8q8u6tMNun/RtTHrpRdt+z/niyrRGEGCbFsuQD7PTWer7xJ2LUj+19ymMprrgrnbU81H8ClcLa0SazcW0IOvNLmYiGxAFiPIMunCD4zDkL9ghozw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAwTZAp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAwTZAp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF53C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757223593;
	bh=VyoFtOohJTsU3XTnCUmNZq062aP1Fkr1DvE0cbmshmY=;
	h=To:Subject:From:Date:From;
	b=ZAwTZAp2PrhhNZPa1vhulNVbh8yOW0EOVOkREGaVG/Y7xizDc6aWSPV+N7tbUwkVk
	 QqJ8qRx16vJSVikPkpDE5/MKv0SMTZ4Z1lmyV1pkFZ+hyjsAIlB5VL7Env4uWUlQlF
	 jbHuFRkThIcnIJ2h0AeHOitpCAD3QASHqDEKeLjahmbCgPyCPEe1cLwzgmLWuU8Rht
	 Ss0BtTRNibwOSWhtLyhVO3JciSVvwSSFkSdq9u1nnR+MNmctV3dKgAdXGzP2luRO95
	 K1/T5XSw8T3g0dnA1ouq/H+yrtMxs5xHg+aWA/xRzb/vgEx12xalbbqmWyXyot7XC0
	 D/IFoJgYWLgFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E777CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722359357.18443.5023744794601168895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ab9a18738c71a6edf7a6afcb8a61eeb404e0856cae980e9f5e47e3821d5de2
Date: Sun, 07 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757223593
