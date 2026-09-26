Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D174503B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790400634; cv=none; b=qwbA5hZYr8N/I9cuWMwFwmJ3Eul9veXaxrg/MbRvubBJra6TSDBRL9VVdpZqVTadC4tq6Vn3jQ/4C+uWggg3UypOmnCPnbPQg5ZrmdAp4Cog4PFJc1j3N70UiyCgx0nsFsxLy0QluTZ6feVih3CVGMsmIzS/0Va9AGY3evEXC/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790400634; c=relaxed/simple;
	bh=9O2RnVbOSvKx6e5znyJyyLuxGmghwFTiuUGd5f1pOfk=;
	h=To:Subject:From:Message-Id:Date; b=ISsrAzO+NfkIH5BWCTFqRkd9MpY2E+fM77zrOItbUzf0TCK/buzlYz9Iy3acSjm+lkRxYlby/ZqLEtR6Eyfk6g2ryV2EYXQgY4WetPJfV0sUYNGd+9SxsvDsbMtKravj3NPtBGusBoKBKjjrlJyp6A5B6BGjfO9MzeQOCpjF1SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+oOaoyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+oOaoyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C16C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790400633;
	bh=9O2RnVbOSvKx6e5znyJyyLuxGmghwFTiuUGd5f1pOfk=;
	h=To:Subject:From:Date:From;
	b=A+oOaoyGQg9G4zs0HATvBW0lGxwC47kdId0fDUkdSiCB9e0CNW7Xu/l0SdluTR4Nd
	 pB63O0mcPYFaLHULTGHPAFOx6Fmr9ANQFMEtBallzxjea3BUQt1bZC79DFup/LpXh1
	 GTdZvUH2eWT9eYb7PS9ljjMwXj04IUrIuRnM9joiqqGaA3qpQoqhHILBRDnb/GX81A
	 OcfhT7/jtSgOrGunHmQS/h72dq50+o6FRKbe4pYry/8BHhS4sAuzsPfp3D+LYXRkeo
	 mkSGftBPT7Mjj6sArzC4EMWamA5or+yD3jx2bbOVhAXMS2MqprC5syRrNhQt8IV078
	 F7ySB+7yfIugw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05CFC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040063368.29380.5433508776429354243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e548f856f174d3c06b45a6491e6e618be4473c0f679131efecfef5742d7b22f
Date: Sat, 26 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790400633
