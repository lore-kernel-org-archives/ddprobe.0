Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DF93FEF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769234634; cv=none; b=OG8bGu/Abci8jKOZarx+vnRMrAAuRt9oSZdljXpcq1OIJUVgSb8iGf0Tpm4t+wDev6gmYPsGWuujfm0ibUwSYMveXJYOPZHMSF1X0faHJNSCO+dcDhHU/OjVkHnKHWcfJlnbiCxKmv0X6DCSXQk5gzG1P8sBGk/SYl79IGW9zAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769234634; c=relaxed/simple;
	bh=PyUEG0ScRDmyUeF2N4Or4d/uDNWugVqIxG3qlU6h0nc=;
	h=To:Subject:From:Message-Id:Date; b=jQeRPkyJr7LsDwaKVYndxfmVzNwyxtOk+ReuKabugVuexwpEP0YDjOEsA6m6aObhxvjmDC7woNvzHQlm6cVzMSScLEb8kfHsvQfa/LEbf9PziARPHdvPC2LtzjlQsdYuV3+n3c3auCZtEMqZ6YWuvddDSUraW2jpkQ/ycjqphdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ0k7Bod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ0k7Bod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5104C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769234633;
	bh=PyUEG0ScRDmyUeF2N4Or4d/uDNWugVqIxG3qlU6h0nc=;
	h=To:Subject:From:Date:From;
	b=JZ0k7Bod7YeY0S23QwBWccsOlSeBdSIHAcqOLuqs+0JbYh48gwt6qmKWgR4fVqXD/
	 +Ec8z9KMs9pmepEaBBW75tdMFmxR0JHblE039a3q4EbDw0HkmXmiaPvIQzywPko4cU
	 ft55776TigiwdKTBeRpQCE6doU0NjiJC6ZVk2esTIViPFwYdNny6zy97ezFuLB4WRo
	 dxjNwNGo4gaFY6Lx/Rzdmxa3e4Sx2KA78jnkk/OShumevvNqjqMnQ2RDEwkD8QiJgT
	 SZaTu4RvbJFNAGLrIGB6HMOxffjR4/4W2gvl3thPCQ/vIaDgNYp51Z2KhG09B+MBr8
	 BWvqXEqRtvYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780ED715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923463358.23992.12110129076771155553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39547829218a5d75d3a057078b10f9a7fbe0980d522f89faba3e2bda8dc438e9
Date: Sat, 24 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769234633
