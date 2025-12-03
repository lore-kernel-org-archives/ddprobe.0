Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179EC398FAF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764802375; cv=none; b=rwTnDxbAzd0ps4DVQiCWKCemIznEEVsaDsDfrm0YixJfZE09vFPwSLLJAwg4xVw+20pQmrDwy6qgdbizM/4msgxcsPWTXR3KZhdnz+za7MirdAeQwN20KkPv+ijT+08o2sHIQ97JyL9WpmKXYRmNFxgPB0RaQDiUjBPSTR6OZoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764802375; c=relaxed/simple;
	bh=eYeJRQ02KYmTtycaZMcnTPDg21EFZdNZG4OYP8cagOA=;
	h=To:Subject:From:Message-Id:Date; b=YrTuUk3HEuEbCEvYzOWJtT/WpocsbHmw4GHLUUCx8+fhlHyavKPpjKYtcP6D2BFDTzHAC9+SPDSCBWaQluW5GufgMey5ry3HC9Mvk4LRHMTWZ4WlfGSGUQGH93REHiqazuBhMDD6J+h+mvbeosIl5GnX9DfIY0H5LVm54ML4PUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0kQYluK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0kQYluK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764802373;
	bh=eYeJRQ02KYmTtycaZMcnTPDg21EFZdNZG4OYP8cagOA=;
	h=To:Subject:From:Date:From;
	b=I0kQYluKCUgfMl68u0fPwiiTtpQHijz5zch9EnCjxt5Sze0Oww27eGqNh1W8Zed+q
	 VaFgpibrhbE6Dc6yhX1hIZIwCAhG6MONa6bpVQgeCGkSzYPRB/3l681REBcyDGKZ8u
	 d9skTBTL11ugRYl68YN6s6iUfaPu66BUeGOcGFJUWTZyXD/+wxWqOx7tymdO2IH5N3
	 y2aI78lOEmY+xLUyYubNxGP28H6WEBXDymMPJHdaRzY3CaXEusOk6YRHyVXuXuis9u
	 w5BulNV0TtoGldLiXuYOB+NlTalYseuGm4bGhGkvmVMfOzPIPo2YOKX+TctyHYHMP1
	 CLkDozeDP0MKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D4D15DB6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480237359.1955.13803727615084138385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0d10262ce8acf32999631b000debd86ea5c815d004db4537c1e14a1455f6b3
Date: Wed, 03 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764802373
