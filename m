Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AADEB665
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770590634; cv=none; b=k8tXGsYsefOSjbM0Qz/xfxd3RtpJmJhrxkMuJkaeUO4AfjjlAx1kp3S3tSVRRUILbnvXgdaJWtqyy3ubdFkv2kRyqP8uYQ0TVsOz43F0pZWbfhDb9F+U/WLMe/I2goYR5FhLhhnnSppb+j9Bl60bHlfaZ1ZQsJ2sfb0ihprcino=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770590634; c=relaxed/simple;
	bh=dAuxb0vqXZ/hhhQwI+57VPaTXf/2RrITYcuxsFS4md8=;
	h=To:Subject:From:Message-Id:Date; b=N3q5RgzERo6SG3lMCoBtyJXP/mHnambnxoh1FC8Y3bTbkNeMzK+jvJ3l0ICh6CcW4Z6ebjmoqPMuEQo2w9qPSc9yB7N7SrEYlpNxZceg1c0XzbAZs18wyMKgSojZqT+BCnJ2lGBdhbdGHQ2XvTOFDmZAaXYtojD3sUh/Wm/SXEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1LNhfLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1LNhfLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB09C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770590633;
	bh=dAuxb0vqXZ/hhhQwI+57VPaTXf/2RrITYcuxsFS4md8=;
	h=To:Subject:From:Date:From;
	b=l1LNhfLHf74Wf/aeZATqWqHN74yRRfdnPLIs6vsHmJApmPvMUyfjI58L0j6ANVX/U
	 LcEcz99bGcG+LkDULsvOK/Q0MaIf6ipQOpzic0zA3gddSf6aiDJS6mBBikCCQCC2Oo
	 coUBzmqVMydzTSA7kvOtR0HZuEVUksgG0BH7YdkO6AIM3TdDO3S2ZAFL0LOPKSWaeY
	 dYzJXdpYUQpv+13RaMIbp9NKx+Hx4k5l36+CjAUG/WCpDc7DpxbqbZIalQ4h70gfvu
	 4zfIUtBETk7v7hd1AO5cPKfaFSXnnGclWTjd6Sw4TjrOYumdZlvzWXXVIeaIXCDz/E
	 Wkyo7l04Q/i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C79EF06E8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059063363.8214.99373031957176150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eea105879a2961e3e9744d446e4faab6cb8d30ba0474e64ad715101761f97f9
Date: Sun, 08 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770590633
