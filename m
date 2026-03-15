Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF29267AF2
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773575094; cv=none; b=qQABL1bSgoGvMtA1rq3geVaLnjYAmhz91+QkDyfBvsQv0gbWHWNJ0a+v8dp9Fl3ouy7ZNDMwSpIhjazrGHhuBJVHbYSvhVwqPYR3EkyvJ/B/+9So+ATshVMK6Dte5y1njq6QKm/p5LsPtB0SlR+ZDPglHl/Ij1WJZkdzaR7q9Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773575094; c=relaxed/simple;
	bh=iz8xDVrioEzmhGnqpbC73IQPB4JUMaAyTtaQZyiYBNI=;
	h=To:Subject:From:Message-Id:Date; b=DIGi8z7f8XBlEK+3Dma7H1vM9VYCHKYuCobYKQ4XadfBH3gNlL48ok+0eM8Gg81rBDOyxOstDcZ9XYigYP+GIj3BszEPzO88XfLY1vCYh+CPlglE6ONrBRHtbMfX2MEU0BgRFDL9gdsPKA5LMZMjtTrrjwt5mO4KMpDG9jV55sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gndGvbUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gndGvbUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC93EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773575093;
	bh=iz8xDVrioEzmhGnqpbC73IQPB4JUMaAyTtaQZyiYBNI=;
	h=To:Subject:From:Date:From;
	b=gndGvbUmolo7HKnVUu9IuxI90H07uMP2xvupERGzC19G++O+u82odVSMTi8uYYAU9
	 El0NjmPKimJ/xR7YVtMFVaWKSpns6/GsMp0EOkP6tSpZa8oEf2i5YhJ/plPR4062Fp
	 DzsqxVdCMExMRksAqXR0UBwutozzCnrNJDkQZIRp8appXNqoerLC+zqZ7THioyTuII
	 M07QTe1tCFxvnImhiNGQ9hkPQNVGSYMP6mJ7BoeIuXKKCxnbp43Lmnr01HCry8qURk
	 2lvC2jTej6zBRQx05t6PZ4jl349vQw6I6rp8nI4aLXRQGL3rxz3yoCBw9HrHlCJNCV
	 wrcIfzQbhAUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3AD58B19
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357509358.1045.9242209737592815238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f3886c6bb1f0026541a8d3b4861fca3b06795598384a2fa007e04d6b2070fa
Date: Sun, 15 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773575093
