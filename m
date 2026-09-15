Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF46356747
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789449634; cv=none; b=Hw4t+D3aX4Za8tsM989cRzJ7DJqHxPNa7Jiz7XRataQqDFGneOJ+GGhB7Q6eKwIQkENsi3s8C+EuR0ubdhgSvy/2i0qkWvA1XzhO6e7fh9uKNMnhL+TnW8Z3rqEIPJNVdHfIEZ22kib7n5tIIQfFigOIlJRDoUQlAfv1NM0UkC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789449634; c=relaxed/simple;
	bh=oNF3qWxDc6XY904URAuDPWFo2PciKMTWgtajJ9G4LF4=;
	h=To:Subject:From:Message-Id:Date; b=Ge/7+trJLU2nTbLQuRF6v2YB/OfZISpNlohVf4SAYi2tEgUQdTDsUzRX4vY2EX9QfdD349kEPlsHeP6mEjH2ST5k7TRAfRq/cwPMYrGcPgx6qLsClUzgk2yrC0S46nVO2m9/7C6zFpCulDfrei1Fpw5rATABY9rzBHPTCS2rkWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yi8loopW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yi8loopW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD92DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789449633;
	bh=oNF3qWxDc6XY904URAuDPWFo2PciKMTWgtajJ9G4LF4=;
	h=To:Subject:From:Date:From;
	b=Yi8loopWtVqsXOLoUkioOBcC5/QPmt1f3OVJkorI14RJBZOviHqjh7BpIgKqAoCtm
	 6vskolRouN/jk0sB3zqTLk5dwa3gWLB78HZt7KhgJ22+8NuZJNPzJ1E1d1liNP/BBt
	 FGxkwfPWgNC2mQMKmfG/Cv1TomyT7GcoPcn2SLt1DPXssZi8jWyEtVDILrTHaqiLgN
	 vXSowLry8YhNYYi4xyF7bm33+xSO5UnOmOSwKd4bDlfwdNde0iNDvLe8/zugodbk4D
	 xhOHWuMqW8oTLLEgjv2tBwWzVtOy6kZUD1sw70Dp82LaKO9zlvKP5EGHPDg20itaAH
	 /D8wH7q3+/VEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB5CC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944963369.4224.11288880700234305438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5aadb7287e9a44b41a0e8009d7be4169b011d4af6b55556de544be33c5778ac
Date: Tue, 15 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789449633
