Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1840A2E370A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751690394; cv=none; b=UgjGdNYvx4w91aZcM/hG+MAbpvuEGahk/c0PTPKH+EGucnacJEpbNSC8l+kIlr3iINLR1tmCePtFYaY1tHUyUi8IK8+vb9ZlEKp3xz8MZtkw+h3R3vgCBhBTfyWQikKDxOVWUxe7XRE8w8HTXQjEufxeAR22VL1SIcCutHStzxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751690394; c=relaxed/simple;
	bh=FsElHIGxjqMhYP5GgLsd8YhT0LnuNGe/ma96+gIf8Ug=;
	h=To:Subject:From:Message-Id:Date; b=RX4/GBc3p7mDDvFbOCJnytmuei8phTfG/Bg+08fTx2JeSISTzJaeY40b+Y1mH8OMyA3a8E/EqsN586iNi8AvE4M01DyqWbl6lsgCoLCxC5m6uqpQktujfCn5SesYglcKrTRth0kCUMqg/kfSGHhYZv4Tw72m4BLiwRvSmRx4dQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meqrAq+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meqrAq+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751690393;
	bh=FsElHIGxjqMhYP5GgLsd8YhT0LnuNGe/ma96+gIf8Ug=;
	h=To:Subject:From:Date:From;
	b=meqrAq+xQonRk23I5c3DZbOQ/riWT7XgHwNwFGuCK3PjYktw6uSrGRO9fH4KDuQEL
	 HA9O2s4cGZPo+cK4OEJu0vjTcmJqzBTMS8SUOWBUxsssqvQYeaKoabqULokbviLhTt
	 CEl8RTv07OFt9KKxui/k20SBTQXyaJaI7YumZ6UyXZYQWi/BiauWuO21oC7hgKb1It
	 NEygTdlgkyc+Gxxxo/RRz5Zn4Zc1OvU6+e+5nIqWwFMiPSpdKNTSSnEOwz8FCHwE2t
	 kW1ZBrpeUkodeh4l7Z+Wiuh+GG6J86U2nL29qOvRVrD2Y5EYp0Glj+pRt6uNVy7II9
	 OyH95eDSIXpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93387C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169039358.14740.371845545084992521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad79c5e41742336b1edc05e22520745201d1f325db98c79c6f78525ad3cca4e5
Date: Sat, 05 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751690393
