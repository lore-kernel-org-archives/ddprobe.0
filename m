Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3460BBE5E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824794; cv=none; b=fNb5ejTm1hKaz9Ma53pxht5r9ssIq+m3syC55neWi8xIgG3Oz74aSMYrvuJKhZHXCjZ3+KVuWIsJWUf0PRf2HFACrIvgqVfbdPL0hAp/ncIVw5SXH4ADGay51ish4QURhplV4gqEpyCh6yiGr4trqVt5jaOXmRjXCtBFfs04L3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824794; c=relaxed/simple;
	bh=t5PKPxt0oAnA8FT5InSIQQT84MImw/QlFbs5t1dRkGA=;
	h=To:Subject:From:Message-Id:Date; b=cPMI1imu8QeqRErwJwmg5fxcDxyDYe6qUnuuirhAnmzgbMclY2jJwfX+tmnIVipM0ig1EZVZcvvXDUeJ0P3tIwYW6wtx4kHovl9mDuKFHUKKd9qylras4fjZVc7b8ibbraPYD027rmccA104nFEXLXBm9BK5FfJ1NxIAyl/AYEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpYazRFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpYazRFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0184C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742824793;
	bh=t5PKPxt0oAnA8FT5InSIQQT84MImw/QlFbs5t1dRkGA=;
	h=To:Subject:From:Date:From;
	b=OpYazRFp1gRbHxLdzR9996VwmO7xbuQC5hhfDfBlDaUKr1ipEsjdUWMZbY2CM27y7
	 i1DukEhyFLXaNnD38eeqaurjFeqz+fW9MnJPnTXHRqIc/fntLmhpIOBp8Qh5sDVus7
	 NJ1vcVstZGtOKBwQXWGel24qYzxBCTZ7w6Dy7WrunvRIVPj73qbjUs3pm8swOiadPV
	 o0LiUmSX8KcJYFEySre+zEysvExbCudoE2Z/aSmZ2ryG2h3zg8+7Su/NnyK4rsRFtm
	 sMcmc13UyuLXfYqvVIIjA5EwVL0W5uc086Fhq6p05vZivU5R6j+Ppvh20aQ94L/Ko9
	 w4a6wCH8rzHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E367C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282479363.10725.2313235798836528390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1831e3cfe47dd410bfd6706bb6d416ad98d3d1f6c1a3a535c61e196b97df2f92
Date: Mon, 24 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742824793
