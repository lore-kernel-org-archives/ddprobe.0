Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E15265630
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758152394; cv=none; b=RN22LKSLuFArc/rJ+qz4LKcSGwOHOD4ifjtE+cjP+/C+ZKhN6IG6a4gO9GGEIcF4xmdgj8ZBwd52pzlrWg+BXetrMGtXb92KGIzE9iLyginVIujOJU8Po2+vzvKYDd5KCQQ+Y19lO4aTz7NMsHslOtSwwUF/HZZlZHN7BxG2bI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758152394; c=relaxed/simple;
	bh=gz1iEFI3MPtspkl5sgQLEd4P8l3vMdpGA5PhW/6b65k=;
	h=To:Subject:From:Message-Id:Date; b=P5knVcamX8MZbVdPXJgKGk6m2/KSuTBNoBaZOALoEFmaSntDbI45p5Mvrcd1jJ7Q6yRN3CzcySucW9UM2nkiqm64cP/dJuXWIKR0MynNLpW/d4LlHeF2jO6wAVGsyNkVEKX7LEQThoDR2gVQZ+C2IhFgjJQf7ZTSlkl5aHtC5qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOHxPLDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOHxPLDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758152393;
	bh=gz1iEFI3MPtspkl5sgQLEd4P8l3vMdpGA5PhW/6b65k=;
	h=To:Subject:From:Date:From;
	b=OOHxPLDvN247SQX5XH6+wW54tiMP5tN2J2NAhJoefPrQHg2noVjKI5FScpKhVVgcE
	 oUDR/qEyj5CWZX5gNETkj3XHbjlnB5YTHxbI+F/ttjALQrTE3qMQLIAnpIVz1NH+tf
	 ZBQTNj6u4hbFujSzcHIib6HBWF/TY8Ri9UBloYVPaLTfcQdmmpPdaNe/wj0abMMVnc
	 cJBc0GfrqOXh4enD7L9F7PwykXsIypMrtTIL1GtxGJrjhGCSjyIQ0K4VB9yXT/iUYv
	 CHGQNlC0WiO/GBUirPHHNMHxzP/epQ3JuRdcZHgP95jIrepIPUd+50QnzVwuDhpK+c
	 k+qQ/4B5l1w8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095DCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815239358.24620.1090091983957546695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f26582165a3facd1d4940a4f5e5394fc8b61331949faea09deef39c4388bf63
Date: Wed, 17 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758152393
