Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2F32F56
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730178354; cv=none; b=cVm6EqlSRmGSbFcIl0xq0HSRPYUXsvfj98ZCgABYCX59mtjXVWxPDq7pde4OfLqh/Ai87qL24iHZQUaY29gLeGkGVcCQcxlrP3x4PvgVSJ2+ZO6e3VbZbAnRnMY552xAb5J8g4rYFRNBYWOLmgOoX1tDszS/sj5YnbxEuUXnrmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730178354; c=relaxed/simple;
	bh=aLgSqg00Djl8TmIPsdlyiMiMkmUhXehCdgmacorPXTE=;
	h=To:Subject:From:Message-Id:Date; b=tX4BkxecxfQQiyZfMbQ8X1S3s/SxhKg7JXd9fSFAGWMSKyDAfusEp3Tb/+96u3hzDJHidxx3HMOEm950PsseN6XqzIk9Eg/S0UCSsFEHt/2suOqoLvNgkV95X89EplmrGKldQkw8uwyzD2j/yCUI10qEaTCFdMd/Du9gmS/nlMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4l1Fe1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4l1Fe1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1D1C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730178353;
	bh=aLgSqg00Djl8TmIPsdlyiMiMkmUhXehCdgmacorPXTE=;
	h=To:Subject:From:Date:From;
	b=K4l1Fe1uVBGz0Oi9yRhpHwbV6yBAPGvmobk93dRQOlaip80Kq0F4AYtq9JqqB8nk3
	 xSsNWEiy24MKyJaDPIRqAhrV/meFHRGuenvQoo7uxQzjsgnMOevGz9MHezgic/RpM5
	 +JSr/iPZf6b1tHdYLFNkLJgsnbdqDos7GfBsYAak8m4SaaD7DwY+WpytPj9fcbdH8H
	 qV+VoFW+ab8ExNYlJ0HDQ2ASW/xN1HlwvdeIM502zVeaQ85gbr0bw5Z6l5sMyUpZOv
	 zfRVEFxXRb1p/SsFQ7nmPyHOEVcAsh7f4ebzZAt3aKYncsOdvqz+R6qOfsUT6nxBwm
	 gyEw16jd8Eb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991C9D5B874
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173017835360.413.17729476924650276547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6229de1f27f58c6609319458c7746f6036e7ec5e692dd16aecfd953367bcc025
Date: Tue, 29 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730178353
