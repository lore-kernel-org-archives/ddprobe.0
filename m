Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA3239184D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772613894; cv=none; b=NRXs44hPSUdEYQR3C9QfeNfPcgtbYYRkXV9be6fISQOQqb9cYA/jR21wTsqJDyKxyE1SkQSimCwO534c0V1N3CA2tbCzlTxMiJbfYGJGsgoSBeP6WyWB7xzC3jAbRwNEFQZAIPSSJ5IiNQYmCbprn9+9EAkk6MKw0+s8NdJUzkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772613894; c=relaxed/simple;
	bh=6/D4sQFiIRFMIiKsDvW5VW9e19PCRFD+q5iromWPBMU=;
	h=To:Subject:From:Message-Id:Date; b=sc0OusvyPU0d8ZknexV+FuZQREUWG6u6QwCYCKCywl/P44X1p0LaLCZbL4qBRo3jV8PzfYZwPmX9NSo09Swiwc+NdF9fQZX2K3MpseHclqgwMsJYmKe/p+muOCsWgWi0w6Fl4K5uScGZJAxDw3bYUEe8AXD1T3cb6NO84BMd2LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/613X9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/613X9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E76C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772613893;
	bh=6/D4sQFiIRFMIiKsDvW5VW9e19PCRFD+q5iromWPBMU=;
	h=To:Subject:From:Date:From;
	b=j/613X9E+LhKqhOUaJg+sCy+H6oM84ioMzmggnMm5G/Lwe4y4tu7zdX0Tlx/hVNx6
	 Wauaw04IDhCA2TG6Fj+aTpde2GsD8hoPqdCwizlSCSFbkzy0YVra6IVXA9/oHbLY38
	 w0TL1OH0mHEsBFB6bxdnOla0FXpv594leg2RBC/QIxSwqf+yff/uHx1N64kWjQRxiq
	 djEUUkBwo41QEvPpvSVlECwVSo99bvjCHrONq23P5LHaxVWIfQHA/5iAuLzWnm8eIl
	 4ziQS50kAjwVy9gDRSGESci3Ar1yCZ87pPMaUUl73GtAfwv0rT+pfYt59jC+flW630
	 rcE8lPcL3t9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43F5EB7EA1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261389366.4414.3866330338715338586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad403b974f679bf154514bd5b3889404f55aeca4dcd9ef3db37c4ebb4a8fd3e
Date: Wed, 04 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772613893
