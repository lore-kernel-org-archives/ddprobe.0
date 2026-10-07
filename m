Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BD14C9E05
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791390034; cv=none; b=uFQ8nFssTku3xNAbqEqak/qi+3BLSIQkhRtxlSTQNGDclLGvEL0RKHoJJMEA/P5FSJHZbKC1dacHEk9OwreghOD5b4+hcTGAd5yPwPjc0rGH50JMLfWN8D9DEzkNQDWdO/l8aWVKSGqR5rDnBpyqvY5cnUjYrRUYqISFtcBbfJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791390034; c=relaxed/simple;
	bh=47QXv44BVAQihHIG8BYWAfZW1FWpVZF4dsKysAxjTwE=;
	h=To:Subject:From:Message-Id:Date; b=g3sbmNe3RBqrJMZ7dmDZfJ9MDYLTgF1pGaOiRO3Gy9gbITB8tonSS3MzKP75WEQ6Qss65UHgtLIgERDTlrHUP9zNKJlvqP4l7K64nwfEjghz49iyqJlhcs5CLg0Mi0AMGYr0rBENlH36pUmSGUBGzNki/LzFb+Ih7putfahiouU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN3jPp1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN3jPp1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD1CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791390033;
	bh=47QXv44BVAQihHIG8BYWAfZW1FWpVZF4dsKysAxjTwE=;
	h=To:Subject:From:Date:From;
	b=lN3jPp1cV52wAYnHaR6A+8A7wcYK5tufcg7KPzEAfvfSPRpcwnbxuoFrn/KdMh7it
	 FDvgXblaEj0no7VJPC3A5EMdS9SKstubFjZTitsQBGw1UelH21vTWarFn1K9wRqvWk
	 NiaKlwWt6Mj5Yar3883637LDj8TuXfFuwNp/w5uya3jiEhkK9g6qwTH0WsKYKTMgAA
	 Jnr6J6RpxVVIDvY2+X2gS86NdFwDsc61vxhOGaUCWKjE52vLGjCcuCgo2jbb2ug3mh
	 9f7405/6hqhMxy7EZ9NpdqTPYM5m0KX3ksQO9v8LdQAJGID7xEVisCKG4isIdXYItf
	 iIqBBAYsyHhvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A96CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139003368.4683.10379445637338067552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0931191590e6c99fd0fb10d545b0af665082eaabadedf4ec42f2b242278ba8a
Date: Wed, 07 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791390033
