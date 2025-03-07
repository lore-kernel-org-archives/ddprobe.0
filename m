Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BA41465B4
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741315134; cv=none; b=dsF794Rf0fLgt1EGcO2rUwARO/hZ/79gEfU4LavUSjt10a1p54RUDqf9R6snonMlS0ru0IZ+aVljZwJpsAz2kPffzTXI6LmO0Rw+w1M1ehGAMrIOm45DlEvoxK1ZTH5riDgbyrfRcX4RdBRkUGsOwpmox9rEqXTste1TT3jD8lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741315134; c=relaxed/simple;
	bh=+vkzq21jMi/gZo5bhKwPqsWrzOsOWlg5vzK9qcbwcz0=;
	h=To:Subject:From:Message-Id:Date; b=FsmFO9fdbhwTASIUITVXjMbCnW26/YwTxMgaW7tDemrCyCHHnBPhq0//UAjsJb1j+Qy2QW7shHq72c6tuC+9CdZSZziMrnB1dHsq8RjPVoUZ4c5Q30i7+H8vSWi2cX8kIy5EMg7WOaEZ/cnB7Llov7l6fw/nMAiBxBiX4vIeVnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRSDE8AV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRSDE8AV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE274C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741315133;
	bh=+vkzq21jMi/gZo5bhKwPqsWrzOsOWlg5vzK9qcbwcz0=;
	h=To:Subject:From:Date:From;
	b=CRSDE8AVPNkJ/wLy/x5hJGxbfNkX9ZMqRjpv1wFaUd+2hsYR8DqAdcdlzoF4m/ScN
	 tSkxkKpKrvZKf2JXtzL2Z9wUP48juF5272I05Ip4b84vUVdgocMh29i+L4/wLUp4rN
	 Xj3+Ld5uyGDHfVVV3wLeIw5KpysnNw95o2PQW7gHqrCoo59+rwdPzEZ+S62nae3Ru/
	 InAMKr0q2FR6zCJAPbNSxhWLL+m6ClLKFtUumst0iypAo4B4/vL3cXhw2CncasPtdn
	 EXN5F4ejlCnqM6/FA2g+zNXxj2BOLbzD4nreo2WpeyU2gjpoAmuNtqpWgT+Ys7wW+x
	 mDRc5QzA+7Cgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F09C282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131513362.25501.18306637904738326402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227eb954ad348d7c95e09bd42384be5844090347d3f610cc78b1057968441c49
Date: Fri, 07 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741315133
