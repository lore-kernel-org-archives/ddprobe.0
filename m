Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDDE3C5550
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310494; cv=none; b=kTq8U1GcdmUwoZkeUDt+ghdemnVPhX0+argtxnaZw9B+aZr17d0TIE5UylXlSkqoiJilNC+a/10w/Ra0O+I3WVwaaQ9wZ9iiuW9m+xyO0OgYBREVILSq09BnEZu6ij94M+2PNI9DPCzXkB3cfOV9USNNlsFm7bn1DV3U0cWs6Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310494; c=relaxed/simple;
	bh=WIQmSCZTNBPQriCDjSu7PO/TTmVya07aaLbMWhq83OM=;
	h=To:Subject:From:Message-Id:Date; b=b5OR+dzQ0xVUmSaQUO1BtRJiBERB0zWxLOjtzlpfE42QfnpR6/YZoBHnGOFkz0uI2xdr1+/ZwhUiAgU6VA20q5fBhnCw1PW2XorWG7eWB20S9a5IaBJKVYmBj9L7HrgBOoqn4qcDggoKZw7RG+f0vJ/aOdYmX3JiOlKQFAbPsfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSHnrm3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSHnrm3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773310493;
	bh=WIQmSCZTNBPQriCDjSu7PO/TTmVya07aaLbMWhq83OM=;
	h=To:Subject:From:Date:From;
	b=JSHnrm3OSppp0Cw4KL5JfrWarrnepUra/tw1xLyfucK1O9PIif4YPb01Uo8ei51og
	 iNrBrC1F6z5yJ6r96lfzouJavM9BJOKNEhdqmAuwVPJxSKdFxS4sVEgsWjqfUqutex
	 2KzZvIwG5OPfoZAYDxY+4rl+/FoqJRnSNKIfmRMU3YCcm/TZwW2JaOV4QQpiBG/k/w
	 7DeeoK2e3t7Csyu9N4IsP9seRVF83X2dEkXIjLYpTaVOHxRiU8fFUx3fEXaxZp2gdI
	 S4+IMaYrdu5bgKilLCvAKn6l9fltyxjXPEo+i6hSfD6PVVlBzD529hoOAOdQTraTL4
	 AgyP3zgLrvM4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F637FED2FE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331049357.26444.4000461024286294011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09598e55f19b73404242543444f77392826e0f2babc58c9655c0ec99371babe
Date: Thu, 12 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773310493
