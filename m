Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF8A165EE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727422554; cv=none; b=Uz7b2g+IgdDwUMAV92Rf0Rbetu8ANYKlU1qY3UpUcNjm5AmA3T4K0Rq0r/+EBh9+NJpbsfnH5ZUpPvYShfeGJDCuL6WpO5gbrQXv320yuKoELvnrP1I/1mw1FCeVoMbs1Pv5T8HJS3Zj0WNogq92iAZDZL6HhCpsLwN7xea5QJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727422554; c=relaxed/simple;
	bh=oke7Yp/fS5TQKym7G0Zw802wrLBBMCrA+Ih9lx0se40=;
	h=To:Subject:From:Message-Id:Date; b=qqhvq2FZhjpRU342FyPcB/eStcz6l9RMBBg1bCQfZWDkRE3CFO6mthK0SBZCg2P5SyWr5ScLR0JBMrGoz92PWNk/7jENzChd81XYLdMxkcB/eXPe7MiOjoGZ77BqKrvKzSIiCSTU3wWRQsDKmx1cTo44WAuRuqFVuS/1WNluuLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu77xcUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu77xcUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E9AC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727422553;
	bh=oke7Yp/fS5TQKym7G0Zw802wrLBBMCrA+Ih9lx0se40=;
	h=To:Subject:From:Date:From;
	b=Iu77xcUszIr9U5HVfGQtm1PiGD2PgDde03hfPlo88ECQJAMU+rmfnoJq+uMiZO8E6
	 9JFcJrVMXFhQ6xRNWtJwHcE8TokDNxR5KSWa/gOz1DdsgomTyUEbhDWujONh0oosr8
	 RyhJtgMUlDQpPDz1QqrLrEH6wn3uotbBWqg2YYRtFVfUHkDW1gIEfD/yJQ+4GcrOWs
	 CpALSHl1s6UXFs5WR8lS0YE4PTzOQsCEIl68akWqSiQrJu2xkrwdRsJKl7JPMA1p2c
	 SmGD/7SymssQdR67LK4AtKryDmM0J+JuHkup2V6xQkRGREIcRZMca4cqv4UacwO4Y4
	 Lq8Y8BFrv08QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0E4CEBF7D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742255367.15559.17424708488408220171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb37da7fb045fd3ce4849a3e5cbe807936c7c434b32e59399885717fc9ce50cf
Date: Fri, 27 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727422553
