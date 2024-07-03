Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF9228379
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720034123; cv=none; b=m+eq/tx/ZSAu7M+6oensVfXy9+a7FNwdNwTVcgeXhHPwJNB/5/pNr6t2Czd3pA78LGYYrm3GOXX8irpt8NOsiHIdhbvHSOmrMiFJUxawB04QJSHB5s8gLrX2eB/rRE+iItTFwnco84ETxnY48f4UniPnM0sHNq47fpib8q1Ub6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720034123; c=relaxed/simple;
	bh=6+aRm1LTFkGxoK192+DX7+971Mneh/SS95KM/BgCC8Y=;
	h=To:Subject:From:Message-Id:Date; b=pl3kiatWGZF0XHpDXNucuZ301x01+Dav8gsmQzptSYB+uq4xbsRfUG4CTnsfMK2YG4IZpNG+q1d9u6Jv4RdeTrEBlYAfX82Dlcx+SangGjg4voAXKavGovkIlB+nAFcZ3+QuuFN39M++DcGEk8P4ZyyFpEIxApM9rfSXw9bXtPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEohpGBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEohpGBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B51C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720034122;
	bh=6+aRm1LTFkGxoK192+DX7+971Mneh/SS95KM/BgCC8Y=;
	h=To:Subject:From:Date:From;
	b=pEohpGBi8E2ikJps7gC/W1+vyrE15lxz3qwORY8agtuc9jlcjWEcmLKU2393UpJM6
	 9nL01iP0Da+sdpwXM2o/cqrG06VwnlA+uEKmORElOuRye5wqf82zDRpS/m4EBtygZn
	 0FdPFrzWMOupfAkN+s432yGtGHNusl/ihpbjowWacCvfVt7jJTu8izhEEIxEqXqQ4k
	 tNuIZxNZ/ij790UWSIkrN795993a7rJnyXVRTH4BCSY6mVHkuZjtn8My4yKQAMG4I5
	 C76QmWHQ7U1PkSJviIFjUFAUt+GENVMIQYq2zQUSQpS6SbMPBZ04qUnRrTZNF0hWOP
	 2GUeHnng5JzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB383C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003412275.30671.7564993629370108220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7670544a2fd1ab327c2d4921f8a92ede86e8bab73d91446050f3990af257c58c
Date: Wed, 03 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720034122
