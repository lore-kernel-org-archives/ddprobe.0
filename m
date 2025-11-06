Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7032E7650
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453194; cv=none; b=gkIwTrDF2X+y7/cJVtRM7ZexuGQQrQbcZf/cuUagHGNnMwPSicYL+MJB4ysYxfT9kuq9R/wA8Tr0PdhcARJdBd/2JovSUw/xWdUgUGAlObV2CNCr3vix2OtstuaGX/9VEvJNo0D93D3hMemhJFVhiXWfI5dWEN+jcYW/LO2xZdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453194; c=relaxed/simple;
	bh=8BAAaPa4DlBCPFIHOln3n44J+iZGTgqrihE/2YJ0vKQ=;
	h=To:Subject:From:Message-Id:Date; b=RDr4OQMURf0TimvpDnh3SiBfg+4tTCWBaz/Fx3Zlo/Uchupj4tavV1VxRulyFz/ef0a78YfrimgRlkRmuo07RlpEobcLEDU1m6VkkyzQWI/p3QRxD/ZUjD9YA8E+eCrcD2dmjO5PKgx9Es4RzFXtgKUAUKybWF5XhyTsBcofSoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3pWqrqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3pWqrqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762453193;
	bh=8BAAaPa4DlBCPFIHOln3n44J+iZGTgqrihE/2YJ0vKQ=;
	h=To:Subject:From:Date:From;
	b=k3pWqrqf5USmv3D8o0hCRncs6b1yip3K2X6d2UT+ZxRTPb+AewtxwDQyCz4buRLe8
	 jKve3++5OFm4HLbxqV/+jngKI6bzfTz8csR+w0A77efTKOW7IgNd+djOsQNlPCx8Ay
	 4NtcXv79F+crSCC6TpyBc+Q7wXdz42NpxMuuOdydE0KNz/xoHamhpxuilphKZHkwYc
	 R/8z6RPNfaHNZrZPa/dhA3YeQFXCKJTm4cAf/oZp/2SQT9KdPzTvUK+vTaIaQDuS2C
	 I5Fhxt+cGB4kEsTZsYca1DlANAZoPBreYbJXOYE1EZCTlfDMwQU2Ive6mI9lWU6EVF
	 0py2efMwOEelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041ACCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245319358.9759.15518996511220572705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ab3d78b500c289a0c612fc94cce3b99dbc540ef0c783d8c5fedf527a2ecc96
Date: Thu, 06 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762453193
