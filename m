Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267298834
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758586194; cv=none; b=Xrk6LbU5iNYQdEEuNdg8dSP8LsdNKEHZFTUFCaeuHsGg53UJuX5OYEHNG74ZTXx/RsY7Frg8yNuCZR0QZlzeT6ZHK07B7RjMmhmngRrm5xOZoEvvbQcEH4PDQJZkO8rTpqGGqw88W5IE0y3xtAthnKZHVoNn+2C3i3UDSovSw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758586194; c=relaxed/simple;
	bh=3QA9H8zJWLgl7rkE3DyA7nPADN/xWtaNZKgCf8dEqEk=;
	h=To:Subject:From:Message-Id:Date; b=RCTcCTGrNGSBGQxFmOFhicztO0guVVk0DDbgBxZWfxo4U7GT887PsZUmDAcyzEDTGpqZGENp3wenIyiUK8FQTqZl902/NollYSJPd9C2l5e1D/49NypaGA9rrezvPDS2HcIa8g8WGsk3gFRAvxSrBaRH11F3RBAaMQ9fTynEWA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPsUmdi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPsUmdi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758586193;
	bh=3QA9H8zJWLgl7rkE3DyA7nPADN/xWtaNZKgCf8dEqEk=;
	h=To:Subject:From:Date:From;
	b=kPsUmdi37nEduf/4Fw206M8j2ebLwP0H3m2P9J45yHD8R58qx0bzB608Q74tbJQ8l
	 rquI7+oLFrmoo0heX5uDOLg+o9zQ9zZTBIRybDTVz7KVpV5URoTj+L56g1FJ6yn+wm
	 9vpBWfBDzDIy6os/neAFwGD7Q8Y5eJoWP62dPK5sJazBV1yU6Y4o/QjYMyKkAaLUaI
	 2CxUaTf/zmmozOadp6e0X0Na8X0mb0pRFze9HhOzwvtzMgKwghjWmwfrriqP/oygpT
	 Wusqy+iNEl/a1uXToKl5wsPc9LX0j0IwY3juEne6dWCBbRlrnbZEx7wZZmAL3jE/cY
	 M1C77w4G8S1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90058CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858619358.32134.16169925537501241408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b7bd78e8fd6a20ed9740d28ceecff0bae972b8932e1418283a3f9b19cbbed1
Date: Tue, 23 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758586193
