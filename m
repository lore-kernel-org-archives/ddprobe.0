Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDED2BEC43
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779053434; cv=none; b=qF0IsNlGOjB4mGWmBvvNeYJaKyzneaPWMN/NFJ3TQYCgBltgBpcxjbpos7VBE3BZPKylTjib/Phheb2HBvxGQU61xcVGanlgzuM0TSUmFrp9IPkf7dThgE5l1cR1Cc1N0lwRedDxoeILbYkYeFAtHFYuq8eIplELKD4V1L3yADo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779053434; c=relaxed/simple;
	bh=p+skr04R7bHfX+GybVc5NLM6cXmYWCo0Ol9E5bmibS0=;
	h=To:Subject:From:Message-Id:Date; b=je45UXZtcqtcHSAHsTeOZ2JuAlOisM3geO9e2BlsBJFr+imZb/CLmLNvPxjZ6+KZE/dz6iQvr0KdkUQ6/K1JT4fWWJjy9doC0rO6bH+4R+HkOny/mEbYs+cCAOJhJJ/aXj8Z/wQPSUPEKYmH5KrJ8Tw5yygsKsdbU2B39xNLDHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/30Ygri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/30Ygri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03FDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779053433;
	bh=p+skr04R7bHfX+GybVc5NLM6cXmYWCo0Ol9E5bmibS0=;
	h=To:Subject:From:Date:From;
	b=b/30YgriqfKgx6Sy/7elcuGoHC/tWlAGfYqlPdu1y09DX0GOjwiBO6U08Ajmg3Ss8
	 hQVEke8etJ1TMRF3yaPzpHp4zmY6e5H643xmA9hmlrNhnqBcR5vmTdu6FmctpDcpYk
	 DTCegYL59FZD0FRUADpWPWW7bM+NxFceV3Xe+1AiSkeFnYaJRngaa5d4LgbxGGayDo
	 T68fR3AZwDqVMkFnhcQqz6WbATMxgy8u7SkON/R/zkNXaaCG/TTT2uzaAJPAPyfLX6
	 wICgjFP5lPwAcDUwDmUs8v43bJEulfs9e9qyw6kChg85IcNndEIAH+nSqd0iAcwlXj
	 bBlUkvtX+C26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD157CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905343368.10538.12567214252137759127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b24ce774c39b068b7c83b30643f8f6db266a2710030775f6ed69f32e1ac946
Date: Sun, 17 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779053433
