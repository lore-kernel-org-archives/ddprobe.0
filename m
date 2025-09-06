Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D90E1367
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757168394; cv=none; b=RbZp97WgWwIrgVbouwQDlIrQnQIibB2r/ewl1D1Dkwk295XUVrypecxjdsp1HnI0xV+e9zN8+mG1v93jpHZOuxhOnc58QuoRqxDcivarybjBHRGu9orZ2TPtKf0Ce/k/y4xOqJ0h9DMdsTe+xqJCGQ/5lYAiT4Gl8Z5BCzhlhT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757168394; c=relaxed/simple;
	bh=nKkt8jmwcNz6ahqEROt0R0xiyHdfztMNnE4FxyevGpI=;
	h=To:Subject:From:Message-Id:Date; b=JehEs8LEXQMb3CKm94oLFKJiNNPg4PF84Qy/iECf+jnCe1ZkeAAgkvSn2RaUc9R653swof1RWiQpCRkJZF4Ec/bdEiRWXWL0Z/Tdimv7ClJFEfc2qvKcY7Kkx7mIe7inVJivvi3Wm6FDxUpwuLHhjdN5ulujzUHHcUtdnRpYdz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs1J0Zql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs1J0Zql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D53C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757168393;
	bh=nKkt8jmwcNz6ahqEROt0R0xiyHdfztMNnE4FxyevGpI=;
	h=To:Subject:From:Date:From;
	b=Cs1J0Zqll1jAFCStSaSiTCgG7y18MirWRq7seNnIlkvEkB4d5RWmqRwslveGAIfqP
	 +Zqp1bIo8SOGTKiEEQ4YYkMlBatZegud5s09otaKqdSkamzR1nrvdS2+8D/vZt6fms
	 zhcXK9LAjq+T1SRMU9+07pKep20mUuVPCfYinwcwbC9vLhdrOzK+/6VF/wxrj6sFTB
	 jxHJ59uWC2DELGBsmqi5KYXEjq1uCYo64JJhONx6JWF3dNVBgXFasGFdPtR0UicgnU
	 2IMj21Na6/SvoF5qKdhUdUcfqeXoWXlWaqylVLBU7eKJZ5ZNjfuz6zA59xPQHd2i+x
	 quvKpQ7t4O0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B39CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716839358.1511.6936961846106186140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475855ad2a903e966e0e14a1b0b1629780a1b9b475a66c06371ed438695c09c3
Date: Sat, 06 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757168393
