Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D742285041
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770357834; cv=none; b=KsKkyDLpjwi8mkotA21VLL9CRiPs51LSkCbbGrX32gm5DX92gRBvmHsdxH808ojtjWxA792dYEJ8m/CEQ2BVyLkx4yjPn2QMll7A5vqnU4GO2j94+J0x/Pec30nBdJA7avWHT7C4mXqbWUVZnVhGaHwxnO5dwd2QsM+YU9h1toc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770357834; c=relaxed/simple;
	bh=q0TIASdv9HLff75G05gnJpEZ9AdWmxX0bXmYbYdy6ro=;
	h=To:Subject:From:Message-Id:Date; b=Wf7TdVC0PzX6PH1oWJiG8CxByjGScYCL7vScSB1ILswaTh+NDWZdZGXk0ZIkfp8UceOVRil77iA9FCYB/f/zEectDUpVbNdfxufroqn+HZS84Cz1dnvwXLAqvXznHK8WWH8nlnx5GoFeVGFTYUdTdM1WB1uYS3YnySIg4gJyOME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBVmVg1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBVmVg1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9823C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770357833;
	bh=q0TIASdv9HLff75G05gnJpEZ9AdWmxX0bXmYbYdy6ro=;
	h=To:Subject:From:Date:From;
	b=gBVmVg1rGyzbJLhMnGK4RFP2OxbrGbVMU3vrj2doajO88YQR545M5oLGG//l8xA0A
	 VKI/AAdia68Sqg5UXl4RK3ev5ljrk5wiiCB6vT1nzriQscBt9COq+HoK5gN8RM7P/f
	 lELhuDlgP6pEj2LLrR4PRSX5aL7YieO0d0KAQ3coWayeNsF+MP5rI5HmJ3zQxV3foU
	 aeYiotXDTHYHxNobUbBgtOyHipron+Usu03wU8Zst9NJ9cYtdCHYVy5iCg/y55G04V
	 nSbtsPKElPdSPEawiXFFipIy+wpzrpFsf6bMlSR6jyXxMbLshLNX4d84V2wPONcxOH
	 iHXkqH8HHCBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98875EB28CC
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035783361.19822.13562926462074491416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f15238608f4d12ac34bfd5aa61ea53bc08ae5727deac1807b013e4217a874ed
Date: Fri, 06 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770357833
