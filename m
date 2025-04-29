Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB2132103
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745963394; cv=none; b=lJobIiMmXyzBlnyT+GxsphcR/o7PLxDSIpPQ2WA2J7EYxC8CD64dKIiYBMHlulginvw94abGDV0PgkRUBmExZ0X1g8auBDjKZSw7uwm6ZqkuD9sqKJhzAYCQVg2hXMZj3n6tVJVR1vViG+C4nBEzWPBNMgPIQDgJ3H3wngztCk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745963394; c=relaxed/simple;
	bh=2zBdyb6LAlmUWVDNRHD2YvUmG5c8ubA+1jWQlhWODog=;
	h=To:Subject:From:Message-Id:Date; b=t1j0yOBbE+DVJDnrd1HKclwesF/Gui0qgGSqs2YuaeeyQhDoypNtYpUFnbUu2GU3N7OmrsAw6SHzFF/QhU6a3CHEKzEoakn7gywPQR3YhswpNFeVj7dogOYqRq4txvNMoJA57zjdAMJh2/txLHPyYGnWjoxbcjv/z1d6Dem+reA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVYTYCEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVYTYCEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFE7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745963393;
	bh=2zBdyb6LAlmUWVDNRHD2YvUmG5c8ubA+1jWQlhWODog=;
	h=To:Subject:From:Date:From;
	b=TVYTYCELGBZ9yR1apfrnumg4hDIfG2e9YwOTkLoCRjb7DHAdZQY4V8jJiNTzzwvUM
	 +CEx7Jx8ud4VbLViZKQXlF7/Wk2+lhj1+PTN4ozKzOZU7bdlDSxEo/WYwWWNcZKhi8
	 SHZHWhjEw6/PpMaSHAoLek5BAhrvpksV24HB589WU6IB1ADQ8f1B+kxMn+wX1t0GRF
	 y8tFoChhqvNEEHhLfKCGHBCfoMuY2xM+YRk/I4bjVEKuBbizhUB+rl2SeHIulB+umq
	 oqY2Ftu/8UVDqHMmB8AIz7X9ntAp3q6R97Zf9FUPieHO/cZ826hL1zycgmSRaYs62f
	 YhXNlnlGn2nAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E508C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596339357.11717.9947631190271853184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8219d393ab9586855dee17e8e2be33f6f57e27f0ab9e05f535e382463bb58cc2
Date: Tue, 29 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745963393
