Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574CC1C14
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721437554; cv=none; b=NulFZcMoBJtoJn+9o1kKYFJU88KBAy+/lKDPQSagoLNa5PJolntfwc/FPIUbWWCcIjf7vapwttNkkI8aGAcEe8jg+IaZntIgGl10P24S+8TsHUaQnnHPvEPJqzv1vAfUGjtPZQKtT8gsQ89yDxlGwDGlsde1NTSSo20wEKZ8tEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721437554; c=relaxed/simple;
	bh=39FGobHEJyB/DbtrgyDfIHo/ExMnLL3gR1zoEIzkRjc=;
	h=To:Subject:From:Message-Id:Date; b=XChpzINw9i1UdVM/C2YsfpSw7tNMgLR3vd13UXAD8nUXoUG+xb/sKJkOZ5IcIv59t7lVV29vftP6MQrt5zP5H27JkeAV2iWazgapsSHQUWBQ3VargWMJY281zyrfIp/0EgxIyftCNHVoCc/Vb8IrVI5OPo1OFbkLDs0F8XRWx/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWemO/sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWemO/sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5351C4AF0C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721437553;
	bh=39FGobHEJyB/DbtrgyDfIHo/ExMnLL3gR1zoEIzkRjc=;
	h=To:Subject:From:Date:From;
	b=dWemO/sSHxYpSWBQMT98Tv08MZ3+mgdd8no76oCBy9zO3QbgSx95bs0VDaF+ZYKRg
	 urUkOQv3OJEa70MWoMYR/KdabbAzi4MJQ4hbsFAx/bJ+JyGBaV05LmT6yQxnUYePvA
	 VE1KIKgs915tq8FxyzLDEeDL2+xU94sFnI0AkTjMvOvLCHkcR1DCq9lAl2ddtRPnPi
	 5YGaIYnc7b8lW9mUXhID3CicGOqUGmuMoHh1rCBvHeOTVjAW2VzoOeW2SJ7r9GvRmL
	 GT89tH2TbvidZ6fusoJKN5I1Z5tRk5NFrLsxP4JjZQMv2zyd3+tjZ2gwD9ijMM5/yL
	 5a5YlT6oW6J1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B5FC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143755362.24315.10099981881087305565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2600018955bb3f2e1382780b3bb0b182bcd286279e42c862185dc4d280c64680
Date: Sat, 20 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721437553
