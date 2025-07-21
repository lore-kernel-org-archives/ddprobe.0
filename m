Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E5BA36
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753065594; cv=none; b=ZWMhniV3nWc2yD9lZGIY+wUCvKmjewLKzxxX70q/xtdlnVi9F3/ikARuoLDFnOg3cFlY2j4tDA9GoLFHfKXmdSy9VApOzAQtWGN4H35/5yepJDEs43VobWh9tg8Ir/aeMCnEuT5Rwc8yewE1L5YQWOXG0jM/WtcMACOqbjYw3s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753065594; c=relaxed/simple;
	bh=YroOh3PgmKOPWH+ldi2+i7c5UD/0kGD54RWZ5IQai6U=;
	h=To:Subject:From:Message-Id:Date; b=CG7Iu5wK9JoCen3+GTctZpmU6gba13Oazg51MkBe0+/znwzMzhzmXa4AVxSfJQvq6lzCLnu8t694C1h97+gsuGheN3aDhrE0JMfAFZFjSb4HboPhwhPf0TlUzEDVIxmvvMOrTfvDu9mFVzLLlgey5k5DN0wmBmvWa1ErWdhVJRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqwZsNhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqwZsNhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D3EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753065593;
	bh=YroOh3PgmKOPWH+ldi2+i7c5UD/0kGD54RWZ5IQai6U=;
	h=To:Subject:From:Date:From;
	b=tqwZsNhi3nyKYSY1zTL5QJ6p9jaBn0oSUFtxePko8A3pUzkpepxa87+02Bf+XnjR3
	 LAK0YkRBZF8NG7qSM90N0qzzzZwKXSbCdUVVZbY237eEdr1ssx1Gs4pYmsaZP2q0U8
	 7bsXURP9s15YmFIqteNN0Mc4/BeZgODoNJNghrMU8DoeBI30bIGzZBqZ4WWkdFgmV/
	 cVu85FAsQgHBw16OvEmuNfl9hM+1nY4HISuHWiH9vp6+Hu2mZF2JUizlsmvfjOJnVG
	 j3atDrlg2AP1h3+wFa2wOFZItKmfy9aQkbaADOpZi2MbgN4gXA5Njjy9EUmP/1RZR/
	 ev/6gRPRAUehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306559357.13364.1368476217596818076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c34cb55328f4d91957af5d8302446a96a65ac5f4a6c690734e8ef37072bf924
Date: Mon, 21 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753065593
