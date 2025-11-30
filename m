Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2425F1F2380
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764535974; cv=none; b=J/0bK0qbNgUyNd0xvQSQ4NO1NnScGsYZtWzjI1mFsrFSa+c6gsIzV5R403JnNasSw0HkEPI6zh4cjvXiOqxrBcnYlO+fI09Qm8AoR/yVaRdkEzDNQDrClffpGOkv5GBwijCTpxoUAo+5VrBRzNUa1q0OF5JhnKIPAL3y5TpBnMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764535974; c=relaxed/simple;
	bh=NTUfsQS14kf+Oe1tYaBfwda05nfnzyW4qSdaL2Zfjx4=;
	h=To:Subject:From:Message-Id:Date; b=F4r3ihdKQM+Ux15jXNWf/Uo1nKyLLV8SW0pZeRpgCczJjhLD7n5n+ZuJ52aSkKtyniZc7PGWIWwcXzz7Uc5b/81rWOxUrO6M/1kYi+Sui4sbX/iCtgtdpDpA2NEpBjN1ZkX8v/xoeuuQ7YZ/HSaawR1Ab7SBxMjmFJX/cHhYSyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtS/XIip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtS/XIip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B482FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764535973;
	bh=NTUfsQS14kf+Oe1tYaBfwda05nfnzyW4qSdaL2Zfjx4=;
	h=To:Subject:From:Date:From;
	b=XtS/XIiptZvXxJl+5By9Cg68NdfiBhPCynw8te9Ogc088PbUM5hJdnX3DmxaLQ25o
	 JpvkI7lCVoLOzaZ1xh5daUf7DGWqN8uQdkWzx5qDXATRlqGeY/PDwh8SMQJmVHDAmw
	 7yzkznIwjkgIqkB6Joy1TdcyCIeTpxiOYpLa1M4TNuL+57kWQbKplOB/cl8TAnahCU
	 avZt86eEYaVPmgNzSxqdcCUFiv27lwnXDeAene6RAoloZR5xmt7nO1bIxFWtxGpGaV
	 P8UCI6w3IS0MEpIr+/0qYydrfl33iEyvzomK6djiv869ItoObm4AIs8gyBNUmAq/uT
	 ePKFY7WQg7ffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A057ACFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453597362.26808.13947969807081664809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa64a7a4a55f1c9b195c94426f33ccf5ecd2d24b6c39b82b35919ab0363fa95
Date: Sun, 30 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764535973
