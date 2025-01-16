Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA661547E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737054354; cv=none; b=fxCeH7K3Af20CyMcXqFi2ubg/TPMRhErTx6is+0H5RFX8GsIMm/SGioKffkUNk+Dl8vtF25WmZ4L0OszrtOhMQEh4xiqAFpdve+4MkfNL7Nquj0Dh8iL2HIT2y3Rh5KmN+R37whkReVVR/2qYWTH9rbD9X9EGoyGWvi8rLN/JtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737054354; c=relaxed/simple;
	bh=zg+f4y1CgL3CJz44MFZuoE2y0JjReOZWjKdcIyWsaJk=;
	h=To:Subject:From:Message-Id:Date; b=Vj3wfWtAnGnmxmpqLh0lCH1D8ilPbWiMTjB9YZft/J6XXfPdqpnMYu7gvhtv9AWSreysmbo8NxU21pF2epBg0fYg22vp1VIEASkazXldiM4sgz5Y1LUBlnq7+avMvzfC6YaQJGQKaNvmdPiUaGiqbGuRdUtR2EcrlB1ZZemv6mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfPi3h9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfPi3h9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608AC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737054353;
	bh=zg+f4y1CgL3CJz44MFZuoE2y0JjReOZWjKdcIyWsaJk=;
	h=To:Subject:From:Date:From;
	b=RfPi3h9l8HfqSYW6W2bR0sKkX4nym8ga3art0n0CX+jqE3D4RItZS6Q6FvVDsU4Px
	 L4OMkaf8hsPJ1y/hwcmD/Ujb6BqLjwhHbcCn2tA8vkdO6+LdAx1tWBSnECmFbvY8o2
	 1NmWKu8swSDSk/obOOmgrWP1lN7511esziIOgYbNHhkkYxY0ZOgaXhLgeS6QUC/m8o
	 F3ECjua2MkwfgdOR4bfARi8j5TFWeEQ0X0/6jp4jq36NyzH1xbnsHAg4JYWZ44mVK9
	 dWyPO8/YZlksxZaOCSTyEXBPhrmJNQejNegHN9jnLN6fid0saJ2fHVGHnVP4lv4VPH
	 v4ycZNBknq6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DDC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705435360.3558.3811280918403236489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee0496718717d2614305ad78cb857c8c2151b3394930fdbc7a972d5c92e6066
Date: Thu, 16 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737054353
