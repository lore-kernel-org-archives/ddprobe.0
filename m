Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0271C687
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730423154; cv=none; b=crixufK9Zilk/xQNWhIM4MKf7uWZUq9ub1sG7Vb0uSC9AQFtkRv6dVH4Q6GrugPYs7tBZXqD40BKGW+oMhm1o1Z76h6By32EWFobeOjEp6WaLY8SvlgKwb9yogVYhZNcmgeN5aL62qwvezI2rV/d79dsQMgE3RZBhczGFzCYpEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730423154; c=relaxed/simple;
	bh=gMHpm4FduRvtvv46rKp3c3yt2QNEshxt9Qdh0/p4M7o=;
	h=To:Subject:From:Message-Id:Date; b=XXJ8PvLyAcGhAeAmfhadK/Ay/2TCwyan2lXbLaD5eQc3vFNZuzgSfQp7DQycsH/N7jsmbq8GUzoQ4nKvUMefJoweRYUQPGauXZTQVI5DewUnF6x/DZapu9RTqJQG3mhS049WLoHoiG+Jbu+lyMmp7AGFNzMd/Za1/LOvD5I+NH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqbLdmBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqbLdmBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6392C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730423153;
	bh=gMHpm4FduRvtvv46rKp3c3yt2QNEshxt9Qdh0/p4M7o=;
	h=To:Subject:From:Date:From;
	b=GqbLdmBWaoIkFfA6XLl+tcqE8rYdx1ncOa5wvrgj2oq8Z1goftxQDH/wHG0uAMZ59
	 aLDxGhZGLe3fincBsdsuPJChagjp+SkiIJ6mlf0pIxFvGKPTjGu6+E9CKXs3WvImPw
	 A6dw4zgXAVvFh+DZXCmFW3kwD1ybXUZsMIbiAQY+hKoFc+rdVuB5WjFnW0K7gFzbRz
	 /H3cv8kKdCPBSx7gkon4ir1WtXozDmyOEKgudTMEQP/Y9YeEUFXzvmYLDQD3hbIjxe
	 +Kw4HHzNXZ7GX2eIoDpLcHlwuLXmcAjYDOX0Be7/TbDZG8mj2++y8gr4azsvG2SIwA
	 pIvkM4qw+IiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5AE67492
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042315360.13634.5743028724659175620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6529bd04b1679a57427fa5afde171ea6f80a099564ba7941fb1b82b503f4db31
Date: Fri, 01 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730423153
