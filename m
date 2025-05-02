Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA0C2571A9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746203994; cv=none; b=BMBuDCw6UEWA6Rnk+UF/Ac0l99cv3jWxMeCqybNszvIED5wdeZ6fxm/mCs+yXmIgjFNt1gZXWezD0DwdIEsDtTMImF4cftTuPQP5MRFD7vcv4mUuknGSHzd5Bx9fvvLLLA6WANiRrV5o0lpiq5VNAjvAddXrSDvCJrCw5FrchZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746203994; c=relaxed/simple;
	bh=abr5dPTAlWTtsomP/+uW2UrZS8gq4I4GtL2506HINko=;
	h=To:Subject:From:Message-Id:Date; b=Gb/sHGvEZ1SzZx+m3QEAg81NVP3/HZ5b/2mP+aguqbLTip2++Jyk/pvfJl7FSqgpjs0uLKbQG6qKVf7b0CUihKAqqc25GyQffSbsucopcvcE87MQAMtmwMoBuwkqPs4+AOHlcp5yJ+hBr2heUxRQ1uAwpwvPboUVf3B9jFeiLY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbJ/Au/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbJ/Au/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C10C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746203993;
	bh=abr5dPTAlWTtsomP/+uW2UrZS8gq4I4GtL2506HINko=;
	h=To:Subject:From:Date:From;
	b=LbJ/Au/H6El/rfOxDpYJpYJtxfAm0AXwdaFpaqhVQEcQPh9NA7OJcDo11GbCnfUX+
	 y7WZOFCYIAVOuPUCGppCTO8F77W7yHlE6nDqasbLj1AX3j7hsf3cbaeLPlje/weT/Q
	 4QyBDIiTlNH44aYdhqzGOe3HuNs93J3rhGoTlOS5PJ/Lf0P4VOsnkLzU53SQmupC1y
	 QAITMKbTM9leG9uAbzGqwORfr5rt2T4y4IpMvh2Ftq+41Jsjf92wUF44kfz+B3Nfxd
	 UJexd6apAj1FMPM6mGU1yxAvJFwSOtchgfRta5UkRCyOs1ParAtCVO7c+AjRR9k3nD
	 vDqVqkx7QqKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93825C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620399357.24577.3806401781745175166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac3279d4779876c97abbc11466d7648f05f34dd2a5379c6bd3e49fe585a6aef
Date: Fri, 02 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746203993
