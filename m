Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A8F1AA7A6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771086894; cv=none; b=GJfbu/BIs+JUJukMHszdNuQMCyfbHQWSKNtqejj2JPR+ebNhT6bkqnAOxrQJZuyz1vY2BTmpKqYXNaV8XiQmVCXvTOGvouM/9+NKlAwemTRZk0W3nI539ILWAoTwxFl1NSqg92+nm6X9WBI1puSB65y6wZIj1mxUVf4d4ImYN4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771086894; c=relaxed/simple;
	bh=pfVVQYIZYwYL1NSgVXMLahhcHhHBZVV8T5S0qnIuc1A=;
	h=To:Subject:From:Message-Id:Date; b=f8lvN7I4Yx0jFCaEQLc+cOqxQWJy6Y6cUXntUtMuj4GCcYCKC8E+eVRWgtw3nLCl26FEFxgO9uUQLfX3yis81d31cnnp2k7C1pHrEiu7Izj1MTnEXKLUQD2LBkBO8uP/EcGN8lmFl5U9EOY82PvF6lcV22UewwL4latdD+3S6DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxwptF+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxwptF+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DFC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771086893;
	bh=pfVVQYIZYwYL1NSgVXMLahhcHhHBZVV8T5S0qnIuc1A=;
	h=To:Subject:From:Date:From;
	b=CxwptF+K0qtAJbk8Z0KS5mzWvKqI2C4NixaeUuqbOTvGZ23R/8S9MYmmzkdxd+VdF
	 iG3vrITpDBM1amWXxezAnhAw+54I5e6KFeplwVx92DNr4Pg5hQhEgY86VQIUGl/6Hf
	 hR/ivPKwjdLURm2/QzWfYGn/Kui9L3EgIu8j/d8AZAzFvIETNCzrQOpIvbRclRFdvE
	 qpy//TVlsX8EWpKvdRDZzEnWa2i5hcQQi127posOY6NJIViV4gWWDAP56m3s4iaLAl
	 m/KRnLBckf5zlemrNrjLjLj9l3F29hBsLxbfT2yNqYZiV4AfxUJhLc+5Kog1489aY9
	 X4AfJuneps+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A92EF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108689359.19311.9380344578268810950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c31f0d8ce0fc3d392c02377df32510413a99ecd5af1d15367438360b64d7716
Date: Sat, 14 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771086893
