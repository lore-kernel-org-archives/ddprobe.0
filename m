Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D4D342CA2
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772603694; cv=none; b=Ih2F+unBG+AcFGQ3R2vYkn2/z7Ni8AR8KxBMFFJLI56dMT8eTVopoNbN+KAYtLTJ7ON4h8uqQPcsrzYcFY1FPMEs2XFU20hUZfhgniW5+ITcyfaDwQkx8Gxla/4is0LBENJP41EQJoQl76U9J5R/qkIyeYAyk7vrZFBjFqIzNos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772603694; c=relaxed/simple;
	bh=chC4XHhuZf770wgZ21XTx44xovl41JyrzYoChe7hqp8=;
	h=To:Subject:From:Message-Id:Date; b=jP+DcmdJqMVsJ8ktq447ygfGyetyX8XQLTujFuwAm0s3Hto9MqeYlSKTTxSL4ZzDBOWKQL3KiKrolX1cVFshX1+zp4LhBJKt51XWjJ68Tz+EJOvoWFbZvdb49mVu1LgSmQ0y8WQ8fyUUCEqa1ydzjYDogKf229xfS5jL1DAzoCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqcsQ7wE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqcsQ7wE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DCCC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772603693;
	bh=chC4XHhuZf770wgZ21XTx44xovl41JyrzYoChe7hqp8=;
	h=To:Subject:From:Date:From;
	b=XqcsQ7wEqNOwuoNaYW+6b7HufQjs3FjO2YUmImtY8XVnJPwV9mdBebrIvFkF1qWQ7
	 b+wcyjMSt5Qi9zPFceLg1sVkJ9S7cCVC02Z0R/DP7aJv9pHvxr/lmabn0OpwyZbEcl
	 thY6rRAggaVJOKTkdumjuPdv05lq5NyQrDbmDAXsBJ8B+o13lKFzqr1mL6RH+iRmys
	 WE7wkKHHcoykFdCN9WY6Ly4pn/UQ4fQBHc1EOi27sfQ22PKQoBIClP72MneE327Jj3
	 JakwAwpn0xZcYPiqrz1cTRFn4xqPef2kwWeWH2f4j7xcL1bslkGyIdiZAfV0+/yxtA
	 U7TlXxN7raeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1B4EDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260369362.30229.3093345970845309118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9401e0089fd04d94f67a84cb5ae7cea3fff1fb1fdd837455cfa332c677dbcf
Date: Wed, 04 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772603693
