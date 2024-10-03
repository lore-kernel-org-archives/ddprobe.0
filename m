Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37BE81742
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727944553; cv=none; b=Vw5PswWJNhtDbMDWm3seFEbOpNnyyAgZCmqms3skGD1Vt/PrN4gNNLxg4yLkgpl4nr2nOisVXsi4o6yPivw9CqyC9Q8mWpZfeogPLURs0Sh1RsAHO14lV15FIS/HinChKaBniLvzosyV+/CUYPCV21qrcOQGCgiGRz0BFmIlwFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727944553; c=relaxed/simple;
	bh=JzqwdNeYAAqi1L+q+AT78Qjasdj/fk2H8de5tKJpvg8=;
	h=To:Subject:From:Message-Id:Date; b=n8T6LB4VRKzmi4bwAdFNtV93fuxJOfv1Lf52CgcXf4mB3p3INq2W3DiovPDvtcfDcktPllXs1byf1LLPXGFipXPFSJPFt4+WQsoHJCroYZEm0dVT93WUfIIlVjcU5x8kCBL2cpERsy6IiRJuRpIrIVWMu2VfDOrTWA1cUQyB3Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK3mZDVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK3mZDVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EFFC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727944553;
	bh=JzqwdNeYAAqi1L+q+AT78Qjasdj/fk2H8de5tKJpvg8=;
	h=To:Subject:From:Date:From;
	b=CK3mZDVVMwM2SdHuFosN5G/mOaACqMZkAmNHU5anjPzSeHylgqkF5r/XvoXYXBVD5
	 S7Sg96Rv+gYDZEidOHvi4JvrIV2/VxG8Dx7OXbf7zE+lqGJ2j/n5VJe6lGTcm1RFZs
	 2z2SJJd5EujvIQ5QcstcIzRdiYojmUYhqNetkOyv4R8O8ZP9pjcbl94Vmty35llacc
	 35OXNrHFoEijUKXT8cTjYToq/PvbQytmOWIUN3+U0Utl8dLo26zumbymkqyKrF6XHr
	 KHIwEAB52L9eZJUo4AL4f+J22AvX515DnyP8D1AF122G4NXSK8LE5IwLl7P8HE0/bq
	 LGydhIFc9xofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C7CF856D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794455359.5560.4460099342102471907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0e7a6910525655c1fe4eda971cf845a123c3f9af884644d5c90790ad530e60
Date: Thu, 03 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727944553
