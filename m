Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A08377AAD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784456914; cv=none; b=mn8ZYlGGZv+UOaIgbndk8VdH/EJSFxv/z189aE4mPg18WVkEYsDFByW9vJXRTRHlSeO8TSVoN6bF6rlkPZOz2WtDXtwq2CgZ5noTLiqHSVbw0vxw5VA3d4cv/a6lC75YqT6nQhBUtrdVjji6ijWgD2yM20DItnJGNwuk/FEHChc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784456914; c=relaxed/simple;
	bh=Qcu5aVNQkCdsyCXtowhB01F7ChpHHB8ifLMyk6Ns3Qs=;
	h=To:Subject:From:Message-Id:Date; b=m7kX7h9u2qF+/MTjffzn44D9bgK1tDwcCx/jDa88lvOI2Ql49SSiVlWKsrjzgtB1ngTBy0qhRIdrkIgKcMAAxfwxpZBnsqNs33DymkPtwn4ZCv3sYGimQ9/awvp2/TiPEIfI8WcSu6ZJgmti2HajgggPecju1u0NcwFw3WF5dbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6MZMdtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6MZMdtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44CFC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784456913;
	bh=Qcu5aVNQkCdsyCXtowhB01F7ChpHHB8ifLMyk6Ns3Qs=;
	h=To:Subject:From:Date:From;
	b=E6MZMdtfzFueTysvT05c9CY2ojmGiQ3aiseNk4/3eZ2hEqZIloXiW4amZqqlpW7WP
	 4m1GaPWkQUdYkyGEjMGrW0JTpOgrrG7wGf9DOBn0hoKLtn/Om0lzdjzRPHvL8P6beU
	 3NqKGmKtU+Xqs2GovwI6eJNq2+ECFl6nrhEMc7Bj86XObDcYqbiyOz3CjF2XIJFEli
	 OqlxMJRHfHyMiX1NL0XzS9QDKU2tP5DEca4mPbR7Te/r9truLcoWy3s7PYUsCHlS4Y
	 ekwMrqgzbNTMseMsCaUgdfaDmXR43l10JgroDCPfsU7BXlFOi2I3IRyEF+KM5/JymM
	 I+R4xPA0VOaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A07C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445691376.9718.8353465717520805883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33c17db241f5ef62131d3d6100a1ff1fc785ae2687d996d60c93a53cad1db7b
Date: Sun, 19 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784456913
