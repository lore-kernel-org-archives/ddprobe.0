Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E5418EA1
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717750643; cv=none; b=RHzbCrcj8YcwXRV0tj3dlLKK5l4Q+TISOEYZRaR4Detpitug/vSFAcWFWwSyuGmQIArz8Yf+X/qu2ymRCQ5NP6hCFjktES7uychbfJ1qZa/THZjF3hjBeY7VfYnAfzZuZAE/t/C5ZGa/42FKp/ErOYylSK8A4m+C9+DjQ3p1OBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717750643; c=relaxed/simple;
	bh=6r/1OOWLChg3klUhbgV9I8OM4Mkcxh5Tuu79Bqybeng=;
	h=To:Subject:From:Message-Id:Date; b=IEGdaEmyyBrNIJ8xX0/5LCohuvdn+r96YJygudWJq0HmxTEN76zoqu63ya4zP+UFbpGBFNtJJQIi3rUU93baIGVaz7MckWOajhmFmi1m513917SX/Bpl0TdVFC+b3mZpeVwg7FUbR1Z19qFA/70wUmsm7eggMoiM87ENOVaJzUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgP1a4D9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgP1a4D9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED38AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717750643;
	bh=6r/1OOWLChg3klUhbgV9I8OM4Mkcxh5Tuu79Bqybeng=;
	h=To:Subject:From:Date:From;
	b=pgP1a4D9DgXNM9GgeRga2oP3s34/3aKECz8C+jcg/ii9W462ZPhssSTCWjSnSVZtA
	 Uyk77Y44KaNyiFaWsZParNXKCAI7WojDap0gRQWHZ7PjCe9/m/ybodkoSCXMKSDb/M
	 wmW47k6U+YevlBF59SNsRIbdS8vqQWJzcf81lXyLEoe2I4dGVch1EmSo2CsNTWWA6Y
	 2d7t5cS6o+gXaFizZFs9Yiv4k5/WVgRaR6O+cWLpIXJitRMOVi8gZIXpB5I7qzfw2m
	 l03mP4Vl3PJWm1kgvsae4duFI2q/w8gAgb/NSVOZ1qEbuIJ3r5Il7mNi/a+7VQSZY2
	 5NysM4mXCjTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B97C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775064283.9373.647663605944601519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b8cca6bd5bd90799b2ff3c955b54aaca45075c32ea5a694cddfbb7e655b865
Date: Fri, 07 Jun 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717750642
