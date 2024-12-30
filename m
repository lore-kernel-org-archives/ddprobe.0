Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063C1A9B45
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735565754; cv=none; b=NzXgMoTWFhFkT2es+qPfUPBBKjIPne1p3EQsSdDikcx7VyTWC9l+7EZBVYKucc/rEL1LrfALvVshHccruOP/cqfRX86LpliEFKerO8a2py7kbzQWiY5apoGfS7d060K0oLsPg1MgHlP8quz2laYDlyMbq9FFY+uteJ5xaei9Aa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735565754; c=relaxed/simple;
	bh=bPisAE4unSGjZCau3yqr1XRjyfXAt7GEU2KFv9x/9/M=;
	h=To:Subject:From:Message-Id:Date; b=gaislckF3XYmP+2iIfmFbk3IDfOM8wlQmcJIw/v1DP/biMepIfHyMKqlEorouNVEa9sK9H7Palgr5jOVWSObf47T0e65uvhRFea2zymOrajpLR1yj9FHqLxss/8DbJZAk+1rYqBhIdGdVkooj+DQ1iiqyeDk6S1IlBxXLNOE95A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtZmlkGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtZmlkGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8581C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735565753;
	bh=bPisAE4unSGjZCau3yqr1XRjyfXAt7GEU2KFv9x/9/M=;
	h=To:Subject:From:Date:From;
	b=AtZmlkGpsRjzaLT4MlGa6pJeHEQixIj3TCvUd4CGDlwaQ6JJ502icWhc7hdN/sEZm
	 wxYEkNDI9YTcsE5ohT3JGGgIYGS2RfOMOGa3MEyYOUAhw61LG8WQHA3RWrrPfRKf8r
	 6bteW0Ni0c5EbTdjkdZtm/bjlIVwTNwLJko1OKX4SBJTmq3v9SMt6MWYr/sj4gkoFU
	 C9jXDXIODl7vjoAxs62k+SodQ9J+v7hDu5wNQvDHG/230GyOndToGFbr+V+hycJ4at
	 8ZFdahefE9c1Pwsp6lMboKGrxemsj3KK8tMaP1hfWKNuEsRJtBPSlpLT7iR4EoBYyJ
	 x2xsC216B83gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEDE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556575359.26237.16164171325439356288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37cc9b3356d47aea27d9fb21ed94e21fd10f98b272f614d066229ad786feb30c
Date: Mon, 30 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735565753
