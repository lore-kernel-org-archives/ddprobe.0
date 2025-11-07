Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F0F2FD7B9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762516194; cv=none; b=slZm+z73jkFfcvOOQR3fwrTjGot540Tw0tu5QktzUJvg9HFX/ExIs02NJ6aJIYBVAfYPmVcz7JWLSEORdDKvLybKtVrtvoe0bMugVO88Jm2B2cMgmTR+wvjubgi/HZh/4Wp3HUoJ6KRA+L0uc6XEUNGR9/mBAhz3cfgsuHrtuBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762516194; c=relaxed/simple;
	bh=3O/Pb1ciCk1xPycgCHLIUYfb3vr1sSOcintICqRhBu8=;
	h=To:Subject:From:Message-Id:Date; b=LTUU7FMqKoT21+eP6/Igf8NDJvcdkKfF4HemtUgOZMSgQNEHbT+0caEkX2v9s4qRnMZOhW6kpU/uTBMnmebDYS/QtXPIukvRh4FD0Jrwa9EKwA2oQDc8kxhCJBWKpis/S5jecYUTWInKMGz+HOjn7Znd3Ppb/MtiiSefteBGqn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvx+Lo/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvx+Lo/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B39DC19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762516193;
	bh=3O/Pb1ciCk1xPycgCHLIUYfb3vr1sSOcintICqRhBu8=;
	h=To:Subject:From:Date:From;
	b=Uvx+Lo/fkKFKZaMkNWEfUtnAZnDcbsKeuz37YLz0GessnamVlBNE/Qr7Wjwe3+ZWl
	 BQF556LKlWj35IULleYRyoxUkgAFBQDao4qmDbedbOBrhL+6Ojr0UfuUzDXC/3eLnR
	 11wEcy+AIQTALSQrjiQs4S0Ds7h67PEamSNp7Vj5R5/apDMuELUntYZLGV2UBXDzZg
	 1+RXCEtQYrS4+lMfMZJvfpZ8Ey5fjnRF97RSYjLnQ9QiPHs68bEN0uKnO5g7Fac68q
	 x7cg7hroJ6UpY8Ytwv+4lqQDLQ/FXcrIJOMF3LU1m8MRx0QDaWjrDAV7YYRLrnmA7M
	 FFxoO2mbWJFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAECCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251619357.6621.6217754834523019497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d335deef387071023e0b2a5aabf20d47d78c48b0c383a87abd00dd1dfbdb57f
Date: Fri, 07 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762516193
