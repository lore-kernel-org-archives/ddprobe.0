Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567B22157E
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765926234; cv=none; b=ftrq7V50L5caI8dRWmM2pOdsRK8vf8AYZkfvy6mzqPO2TPjzWmfU+e3GX8wiEKkAgQI6WaGfQMfLn8j77whl3HcCUdnuwqIC9HMgxMM9pi6r39t6BSsTChBVrYw/GBcYXcuznawTyVOaWd6mhvgsSz7mY7EvBvaW7IKKV4/DsGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765926234; c=relaxed/simple;
	bh=hiNyp5eUokf6RPJnVgYcsoUHoQIuPRoJlE3MvgGTTuw=;
	h=To:Subject:From:Message-Id:Date; b=YTccAvw19nvSCGGxvphyFk/YOEOkmGfTkSHkct7f6GjUcHxRl2x9GJdbXY07LkoBW5YNVDGpnah7m/w1mp4MJCH1FRSAFORLSFk5474ZbCE4zXtH7V4XXgpHzgFtuSRmOJYhNzxsrcWbCizy1uLHsAYbYtmlX3VgmmmmTfPv9Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdh2OfL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdh2OfL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADDDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765926233;
	bh=hiNyp5eUokf6RPJnVgYcsoUHoQIuPRoJlE3MvgGTTuw=;
	h=To:Subject:From:Date:From;
	b=tdh2OfL0/vSne1ltF4CreXil+IA6INBIZJOLlXJxpldLVc4J9xiK+nxi+NzmIJwhq
	 9jMXF/suZIlt0sgJ3gDG8Dbv84ROfe7busMKWc0s22WHLy40cGFx9OBUiLKiK1rTwR
	 aNkoUGF5T6XtQ6vB6nHtJkN5TjiaqdBgsoD5v682B7pKJ15FjB9T1Nmvo83P5VyW7F
	 lwAqldPR9pfBBnIBluFbmGlhvcHru9xW940k09kPWHRAyuJgACGR6bmKRmNzdMaeOy
	 GoUumaiGxKyTCxBRc9aYoF1sgH+JtnAVcaPdRYATCVlvczJiah4VecEyTXkVFcV1Mo
	 E1tIm5PWY2Y0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96245D637DF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592623359.12426.3684579931044854752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5bcc10f272e4fdc7bc30fd96f393f9b475d14d326bbfe616a8d07d668a2605
Date: Tue, 16 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765926233
