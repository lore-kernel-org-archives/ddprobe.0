Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC6146D7E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728895554; cv=none; b=TNC/s2J2E/bAV56yoLw74qqiZmX8ACrmCBO0wCDjHoIaOhvb6J9xmCvX5nfMJFY3HFf9dWABN8we5UvAF8rTqfE1rq0yOeFyFhmCqak3WOvMJJmuyLEttCmGFXRkD7T1Rr1tFYG67dSm0rWYcz9jFr4hidb0zzwOtboQmvQQe20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728895554; c=relaxed/simple;
	bh=u4eBYUsuypWcaRB4+h/UEi0Jbq4+1iU+MzohzOhpYV8=;
	h=To:Subject:From:Message-Id:Date; b=d6yQ6loVlR+JSdon4APGxb4zIfcAxfAPV27VeuzyIJ/+pEAIY+ZpbtzHE4QnF1E7vVY2CrLAP2kiDKA+VwxLSC/ry2rfGeAridiHnkh6dz14qaRUBukJI5ptEbSqj76TAbY7/uIk4OEqNmLTYt09irP4Hfr15gvJA9X/++1+wnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5iDxOpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5iDxOpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC49C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728895553;
	bh=u4eBYUsuypWcaRB4+h/UEi0Jbq4+1iU+MzohzOhpYV8=;
	h=To:Subject:From:Date:From;
	b=A5iDxOpa7289PDt52JxcGFwsOzAmURq0E96tSVaaUey1CY3HoYSZJPjzMeE/OkZvN
	 dM0hFFmg4sNONWbpNHc4WIOzjv9N5RNIOAEdoCbcrZECyk/y0wQSdZ6QsyZfiJZjPc
	 L6wabY8q9NqQyfz/+vT4P2/KnpPy2qpFV6sxtzAMrBQX4MjXuIR9L0axh8J/fBAgFN
	 xQSgISGzVwf35j3TrSMDTCxFxIMjm1poqdpsmKN8rs7IP+jEyw3HpwVAMz0IrAbYze
	 JHujhb5xEL4EBSMr9SdtFYHAHJebwyQSAFxUjSWXy8ls21Gytt3u/IBoSaG/eF8YrC
	 5p+F2ovZ4efEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD97CFC500
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889555362.15671.4329601481294510822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63468be98dc6bf8a5c6d0b7d8a134042a7ab3c5b528f745714f7ff0869c645a5
Date: Mon, 14 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728895553
