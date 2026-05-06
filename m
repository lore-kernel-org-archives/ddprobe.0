Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109E31A724C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778032054; cv=none; b=FhylrUXzlC9LoGJU0rXoR4kZbT+LMDYS4L2w7ALDDnyMnh3NS+X9P/i41QGsUpSgFspEOLwkckI4+SXSsHBqKtcSM4+NVhUw4eN9tWRhoOp62my+m5rgbNiwlNyr8Z1TowYV82CEtgn0CfmmI3FrgZxz8Qp9Id2YQnvolF7IgNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778032054; c=relaxed/simple;
	bh=IaYwoW1WU6jnXml/OF70Bv4GL8Nru8hhhQMf38qcDFc=;
	h=To:Subject:From:Message-Id:Date; b=M/jqerOyzS173LBchbblgt9jgavJC16eqoI/oQwHKAMFsvRTP+lKbsAhcFyLpx8WaiwLIfRDzgI/Puy1awan5bkZTrKHx7l2YeCOY5li04aV6chdg9rBFS5GgEUr1wApTNMBWek/oSDob8D0VsYTVt/tW7AysyK6ngLLzl8PHt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqmulr22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqmulr22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE334C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778032053;
	bh=IaYwoW1WU6jnXml/OF70Bv4GL8Nru8hhhQMf38qcDFc=;
	h=To:Subject:From:Date:From;
	b=Sqmulr22DFaYQlY3flHBBIZgLqcrwry8kypFySso0PwHztvg6tmaet/fdRV/0vj2T
	 tflzShWIyOV4hywKgLcpOR2MSRJv2sqi2dnmMq2oMJiH8s106fG7OFQ6dHkVsWwv7p
	 OXugWV3i2vk8RQ6br05EUi4ylOczUmus3EezwVVduJ3bI0TNs2bm7a5Sf61kj+g4P4
	 WGHW0D30Uvwh2Y/Y8zecKjBlzfXEKDg6Tas0Oxx18aY0qrsW14YokfqHd4FxoTiOnR
	 +9HXXgSId6E5mtvsKplUuH7eoOHBg4rrXLj+M7TzLJw8w4VBF3olBKXzcs0Lec6wC3
	 QGi9IttGJrikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07EDCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803205368.30351.10756010349166337307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958d232df20dc01f2991f0733c25021282841dc74946c17f91952cbd60af4c6c
Date: Wed, 06 May 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778032053
