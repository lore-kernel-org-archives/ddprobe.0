Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466982E64A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738821954; cv=none; b=OeGL1LkAa2CtI3jjZtQPtH4zrNOehdyjVJ1NRvgY/TFLzIRKf3nd4N0AjVxbJ97G/7AIc4RSQ8/n72auI2eK1Zesdnkma37NmymXzNAPb4Wdw08Bstky8L+X/x9f39yiWry8YAqqFS++0dpjOYKG2JImLGTZfM9hX0wio8qcGb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738821954; c=relaxed/simple;
	bh=KivRe6NkL6xudSnaYx2/6u0O1sO2ir1jGoLEI+kGHWk=;
	h=To:Subject:From:Message-Id:Date; b=tyXGauKchXG3/1c4BLE7ytejugK+uREY60WQhuNsFLrtKm+eznx1PuR1n5n22wRQZZMxOJh0kbbUxWR3SxOBvXnMEvAsTwcRG8DmGCAVRvagURuE8YeG5+v16wXrpg4Q6DNgLAJTjRg+uMBaNCGoCMaEqioOXDj7Sz1CGDEGZSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urRlDT7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urRlDT7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32EAC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738821953;
	bh=KivRe6NkL6xudSnaYx2/6u0O1sO2ir1jGoLEI+kGHWk=;
	h=To:Subject:From:Date:From;
	b=urRlDT7InagyekkWvuCYI+biS0U/9/lGgpndTx6qglUHgmO/9CEBXfnIh0bASd3Sx
	 ICWumkSQ2w3XDlXFzdUlI7xDA8jCtaZIsYsMUdB8NoVigXRGRl/MXPGrgVfKvyyW3D
	 6kiaww624wOen7tYzN4l5cbwqHFKGG8CleHoAc0XJQrSUkt/LFcv8drPR9PL3lPTKp
	 K4g8FHwFeOKRZTlF5g1UiBfoGAyP+WjLtILA5ZZrGUJRBBSC1HDurUOBI0RPhzaOQS
	 E+pWuPLtxJQmD7TnbWmQsa1ZvGadRpHOIUE5Gx4EHZNaV+cuvlWFKSvizKjLG7n6kq
	 Esd1FAYrsGazQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C6C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882195363.7074.16469881334298617413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fea48f1eda5c8f56fc6a9dd7d5226e2aa215b3be08d778da87007d2cbc7a9b
Date: Thu, 06 Feb 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738821953
