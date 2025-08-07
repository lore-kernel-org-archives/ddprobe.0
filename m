Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D2204583
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754574594; cv=none; b=u/Ugxy7gfFTDWbLBx7WrBK8c6WAi2BpMjGBhlJF5V2RLeJg8EoLWq8/J258M4IVCGIEd2CJhz4MfUySQTqGUTocWNHRZ9OkB5Szdn5B4rJ0WDEZUfcqlk3rlx1XF/FijXl0KGpo1TfSYwQLja+Jo/v3Vclbd3w7eib/uDsMmxkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754574594; c=relaxed/simple;
	bh=pIjqinD65Bk0bsmSsn4WWaN3G1ZU9AUGSRHOvGGZAmk=;
	h=To:Subject:From:Message-Id:Date; b=QFkC5MyWAEcPFUcXgMFSsaycYZXwBGxjhHGjNJ2IKyDXhTj15899WQvls6quujc8WChHtEObdBajilMzI6zyz8NuLPgxu1MfTDbM9nu8dBaI3mgNJKtri4GYzawrnwPE8z2vL5SQU8glq60VQH8Va77yOmysgGC4hfwh5jf419Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4OtJbRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4OtJbRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7614C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754574593;
	bh=pIjqinD65Bk0bsmSsn4WWaN3G1ZU9AUGSRHOvGGZAmk=;
	h=To:Subject:From:Date:From;
	b=P4OtJbROVCTsabgHd9hl3owdpNDn1+YTrIy9rL5hUFnlysJFIPc8D5aGOcXhLV0nE
	 hArfbaXAZAnGOx7cQGl4Q+zZVbBAC+4sHLzNdBNJV6+PD6VcfnfYjjFDPWnpzNtamg
	 2dN0ICLg3MpsaHqF1PxkNz9gMW7e+N7LccSimqAdtNv9k8QQIJDFnQTuzTlzSwSvDo
	 Ly/uFjQvoUMobGLp2A9anuCgBvV2r2ZZxNG9hiQxyoznvZIvImuGR+/VYNAlBavwtS
	 Ya4HVM3BV57JlfGPypUtptC6880aH3gnSAECNvgHIq1vr9788gqoVfkzLf3TrjXksQ
	 zZEcwgjxKc2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED4C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457459358.28787.13750930530330132470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5225998983587ab0138451749c359ff43c7e116c8e2b447127350ea2932dbc
Date: Thu, 07 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754574593
