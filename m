Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC23204F66
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730199354; cv=none; b=V9Gb+eiH5g44ZhMbkYdvkNrN3Csp6Vo82n9gmV8DbFMuigJZMVOp6sa7T4SKJjjVikyoIjIbFqMDa20LANXb0RTpLTxkiu9EfY5zS/G45QXv0AyqwMCJPyDsI8tqXUXcoTfD4df/NA3Yf0FJY9eh2dD+3qitj48Mt6xPM7Q6Np4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730199354; c=relaxed/simple;
	bh=6UbhCJlFiSyNFPzCvAkiAQbD63IYP3UwDqeU3FXgzhE=;
	h=To:Subject:From:Message-Id:Date; b=boXcvmQT9iwzUGE6HZlFMz0T/P7+rfC8P7eLFeFYo3/jF3ScVAMFOlxTuL8rda+f1iDtkVIu+ueirIjhLMhukCyqM/44bzc38hn7viRErNBB45GJPdIB3l+uO1YWfuT/CwJ7/8HKav1FwU5LjttOypd7vIlreNbF48ZcToyw7Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trbnp9li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trbnp9li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C21C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730199353;
	bh=6UbhCJlFiSyNFPzCvAkiAQbD63IYP3UwDqeU3FXgzhE=;
	h=To:Subject:From:Date:From;
	b=trbnp9lidIkPbsajMXkEKS2KgUKrOsOREo3GqHCY39TiCDqcD/5p1GwAFz5H5OEbf
	 +ez5nLw4puN907YvNCDPSu0sR+z4wodO+T3+UThfRc3S8kh26wABJ0sYE/PZ7MXu1x
	 ATp6P4r1KPQkiVr7m7NI/CC8awI7Gsn+X/UtZny9drsM8HdpGBhBcyV4UHJgSErk2n
	 OurMTSRXHU65oT2loxSy2BcJ35kTikQVLzzxLXLAgAle/vdq8jj8VR0A6JqsYLh0+Y
	 8bT3bfu9IErJsJdCMHlkt6NzxzLlLBToO+Sgb8DOBUxe3fiOa5nvKV1q3kjqJqUtbi
	 UJG9CDZcVv3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3CD2AB1D
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173019935359.22100.13563169790010762276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9530a01046914ec9284334e6852b4a356f4ceedfe5d066a0f3855e4aa0a865cf
Date: Tue, 29 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730199353
