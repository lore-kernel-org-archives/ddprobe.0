Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7533EBF0F
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771811694; cv=none; b=l6Rctw4aolXeRyeVR/KEfHakcbSHmqePe3n5knSQIvmUUDGnZCoAaHlC+1Mz8u5KdLtyvfsI5NrP7MGfN2A8zjzxzZLtFjB0CaRoPrkdUSBYuawajfjQY65mHaU5m3m+W/h2vaHV+UFZRHbaoUewTh/jDbDFrSyndDUfxOvPTJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771811694; c=relaxed/simple;
	bh=gmHBn/NBTRMWV2xQeage8KfZGxF4V8KsCXrE2P1a8XE=;
	h=To:Subject:From:Message-Id:Date; b=SyFrYO4zLG9A0pRMrKKyB1BUP7CGZqntM2mxiKY9VmcHuic8wuQ6jsAGs6WvBY+KwNXj3q5JeoSv7/zPEnAB4X8AyykOtgp6qYyZZRrFauwMJTqSBzMO/7Ynbp2VvobjOHZRXyWvZfbncRyBHBEP0EZk8TYN1Z7kKNDtosmWQVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMZr1DDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMZr1DDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D1CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771811693;
	bh=gmHBn/NBTRMWV2xQeage8KfZGxF4V8KsCXrE2P1a8XE=;
	h=To:Subject:From:Date:From;
	b=dMZr1DDlSf4mQ8leJjboWD9vWYAGtLrnPnW2vVwtSCvryMP432o5+599IKX9NaxUU
	 VUYq99DYHPc5KQADTKf2ZaCTbG7KhqIhNuIdEqGDmoceirGmhtd9VWh8Oo5I+xCOHv
	 GTpWdI4ELkD5WiIUctkvBN8I72eHpxOgrNt1a9B5S5IsahgSfYsNqvCH/ISfn4zxzE
	 Ycb7neFnL16aNdMUrtcKjhdBC49pM/HpSmOYeSu7J0kWS3D0QKbNC7DimRh65B1d9L
	 CIcXMHGy/W+zU5mVDRb3Qr89TNXFZtzOpLg0lKopl+aKJJxupqRrMdafxYlH0EpaQO
	 IDzWQmIEQ6LSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12B4E83847
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181169359.2227.7918001555614954514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b4318f4520b8ee3f0fd84b4cc98c44f6bfe4eaa12767ceb76a35070edb3027
Date: Mon, 23 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771811693
