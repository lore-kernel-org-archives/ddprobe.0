Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365B028DB3
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724496354; cv=none; b=V6aGbiVNCSdrvv0Ky8QiF+qQFtsWPTxNf59jmLacwaMf4zIIZxfQDKw8OtrQO9EOyKJ2a0FierkoRQGT8sZ2eoNTqfUfvpfTrpP+NGHskkbnhbUPXeWIbjlOAi8zsV+qnGBWfuaMejb5xs0IezbAz34n830n17t+5g0Q/RYJ22I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724496354; c=relaxed/simple;
	bh=LwplddyyAfhF0gL0TOJv9VU+AW+a8ai5KTi81hWx0hU=;
	h=To:Subject:From:Message-Id:Date; b=lBsDiWFZsmt5nkyuIRORMu1ZbdPXQsxTmyJMuxHVocYxN4a/dDEjtQuPqPlVW0Q55LillSlhvccjWCMVA5yoAtfx2gg5IkvTNAKG5jUJXKFyPy9dEaJF01QdoNpzdFNlpw0A+vJu9or36GStaEXwQT3N7Yv1El0EsKNe0vpxvac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NP3t0uas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NP3t0uas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB41C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724496353;
	bh=LwplddyyAfhF0gL0TOJv9VU+AW+a8ai5KTi81hWx0hU=;
	h=To:Subject:From:Date:From;
	b=NP3t0uasClZ0WjR8zidy6YRnukKFhsDifXPb2OPdBRbgPTqUQ3bqWRGPwZ5NSEgOi
	 /XwrEGUccvGm48RO0UNTQV4LvNRzFULVnTg5BIbcdLg+ZBYWPcVEPwgvzZlqcK/2vy
	 WPlI1D4dsiaKv/TTQePkYiqXEUL3/7pqHrkAPUfg14z8+iWT0trq04nvu7dl3HYC2F
	 BX+2KLlEQeLdF+C7mdDxTCg3N61vY+SIh5k4nmau5uuoYa4Citf/4wJeFAWvgrDVeN
	 fTEpOfN1qXshCSuJhVssP7yTafRHzaT7ccruTcK1+d96t5KmlXR53eGrT//lXJvA3J
	 oZRO3HNcOOttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C79C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449635360.28126.5428260848746714869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043c49ca7bf7a4c889555c54736ba858940032c26e4a9b3149c3388996cb7cf1
Date: Sat, 24 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724496353
