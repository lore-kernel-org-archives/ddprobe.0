Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2400819F49D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726761954; cv=none; b=X31K0NMYpIUSTlzsm3u3z3yui8XB0rAWCzPpmDAHjFGL/ppF7Wi7NSEBQ5rAZXWWkugQ5OjixflIAkFA7cMGLlXwVSMHt5VZxa766mNUL6lCuVySQmD0Yx22nmtwnpVBOfTTEIvJwnGy6sY4W7Gfdoe5KjU0x/uQADX021OiUdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726761954; c=relaxed/simple;
	bh=DhmFKXBPM8y2awzBH29W2x/61H2brOQvyWVh4F2xRmg=;
	h=To:Subject:From:Message-Id:Date; b=Iv0zM5HAAbFnzuuAmj1Y3UgJ2YUt4NYr9/8HPT+QdJ5u06q7eJJR+NtFePLIWn2abPfPAfxuSrz6JZZ+pt4VTzkV3dru10XwV7NcQJMlNOu1/8Uk/2hlV0dSWYb5wtW7XtFf9guZhtZcqBkDii2oWrrs2m3vH16JeqpEWT4MpeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4WYlftK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4WYlftK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733FC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726761953;
	bh=DhmFKXBPM8y2awzBH29W2x/61H2brOQvyWVh4F2xRmg=;
	h=To:Subject:From:Date:From;
	b=u4WYlftKWMCFjrbxTGdoYTon3Vei52kQyKuc16c0FHjohwb0R413LByewpOCGp73C
	 6Ta2mpTwfjy2iKm4palcWvO/QZgSa3a3XyTAe+ss4jnWmddcS+Z970CO3cHSlNx/q1
	 cQuf8/TrGj7qTNt4r7rNOgomDHs6/p273aJWjDlr4VDLek8DXG+Wlha1I/qhZAB175
	 XzmZxFxrg6wdFTErt09NZ3PEByAJvma3m2+LhLRUj2CLi+udLOPSoxl1l3ANnjSPBy
	 Z6fBeGg8tay1vKQUG+fxbtZu4F+IzM5L2V/AdaZEBrgbC1lm3VN5OjlV3oOw8E1LcV
	 5Qh4+0+b1ozJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95290CF3959
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676195359.3271.15591948212278978556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19078e559f1283bf6feb545d5a2c373fc7e2123fd5c4aae15e9ab542a76c3286
Date: Thu, 19 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726761953
