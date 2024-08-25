Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1E842A90
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724571954; cv=none; b=s1hZZ1vqquECZFT/OCxuECxlnUau2WzYDz3kejbuts6Ojvd+lKZsz0BiymdhyzAq8qtpER9In6URtpfJOPruyiFN2L2S/Ft1NZTXBGqQdVqWbngaO7sU/J0BbjcqAV6LqM/m7GFEqNFp7TfcsvJ4DrVuBZYY2A5iTIZbdAk5zy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724571954; c=relaxed/simple;
	bh=wsRKknLxMJLsuRZyIuXFnieIYKTBoxTIMKH4pFt47Hg=;
	h=To:Subject:From:Message-Id:Date; b=HecE1Vu1HZjhCEeU4avekxnnRyzvVn+/Y3I62IrOqv08L0CaykyI6fmRdsY3MkIiGNqSEw9b4NEMKwB295gRwPw/B0DMCSiBR3kxOGFf9EAGGzedTaA3jMIx5Fb4ff2LlvIWI1lW3XEz1nGiIgZJ+fPNeJd+pfjcShC3gBhkWCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIIfyHR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIIfyHR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F75C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724571953;
	bh=wsRKknLxMJLsuRZyIuXFnieIYKTBoxTIMKH4pFt47Hg=;
	h=To:Subject:From:Date:From;
	b=SIIfyHR77Hkt6j6RS0SV4oqDo1QzYB1XDltSUaj6NUFgFM5/LSGbWQOOMpq2cQ/RD
	 JebhOLicPt8597MQ+CwM958oAqyewBFzRKJSQwDNl1P1Y3/8fqlwXolJuq7cLhihN/
	 cMRrWTYLDOF2ZwbdVUGgNPniWLUQWFrG5MV5cQOdBEMraulsAvVe5fSJTYgaS94dvQ
	 4CV8PwNbmuiCNHqIqzB2F5J0luoLTwanDc38OXO+1KNQ6tpFsfhxBT/UFKctstpH6j
	 V0aP0XHNErnCIex2Ieh04HelYw7/GZVfJtpvvPj08B9gd0VF+CIW75+5uhc5tnz/6e
	 vjosvmOuTVxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53C6C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172457195362.20086.16410497669089653023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d2ae977ed363a40939aad899ed1b5a9425dabd30d6e0ef0a71d4ec111aca1c
Date: Sun, 25 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724571953
