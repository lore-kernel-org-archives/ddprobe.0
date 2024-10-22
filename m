Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BBC1BD000
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729616153; cv=none; b=hI7ObxwQvtwpfDVZiV2N55v2mbfpacQJqozJx7tks0uBygTVYkDHcg1+BayjxzFxEz97j5bLsjoPWKIKuGoc08BhKiolyRm1AhIEmpfRP/GrOoS9OjyAtXhPW0ScruZfQr0XGW/IQ9E16aI6V/w3wXa7DqjsG8yYe04PL20KoDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729616153; c=relaxed/simple;
	bh=WfGnlVWxm1148S4ZNEQ4BnHSGM/m4FiQxLtBwXciXFk=;
	h=To:Subject:From:Message-Id:Date; b=Z6oWBFPxkHrYtvqrwfQbxFYkfavce6Yx6ct8wFtSpbqCDX0FbLPi1agujht8twOqpt20FMKN892sMTmN8dHahCLRieG3XbjIiWgwouVawMJfIKhtHreW92JwmU4wWg9icKXTocpv1t5+KGUaez1rf5OO8ZPuSsL3JCmMKT2HxS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXPjTV5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXPjTV5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0232C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729616153;
	bh=WfGnlVWxm1148S4ZNEQ4BnHSGM/m4FiQxLtBwXciXFk=;
	h=To:Subject:From:Date:From;
	b=BXPjTV5op9rN8D57pQePk9LhJXW/g1lrdMK0LKYMbFW544ntU01js2B7tflZ+uKmd
	 rHHjKdDVhkaY8ahsXkuaFSY62vE/qENeuIcCpDtAPDc6VSHsshp2FGdXbA4pVQZUFa
	 zldttQTdTLNxS/L09ysPNlejSznuQU29Ke4BYDSb0auXwI7l/0SZF6d9FCXPLh/Cke
	 KvAha/h1ydYMI/AuiqrlViswnXEPukMT87FpfgB7BgLCiT6qfQE6x0cukhJEvAtdM4
	 VjGZV/g5gXUTrtrHSftNuMxxbW5tL6/Eqai9mjTrqamKrbXnRIWyJteOdwrFfDFe4C
	 K3kkIa/k4gB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A020D2CDFF
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961615359.28926.8175180414548181732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e7c892d2e3048fa6f17caec4999169da30e5ceadc773b540df07bbba892a43
Date: Tue, 22 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729616153
