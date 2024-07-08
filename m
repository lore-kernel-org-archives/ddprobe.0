Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A9F812
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720413983; cv=none; b=q3R3WjCIEsheEyEcx2hewsPHg/UyBdvwjeoPG1EhC32KR3CeNLsoDKxWo2m5QV8fKuavIRPAafxoJbGBGSuvjpJ8VT+hoDteamz6poI9G8HhOG1GKdj0Hx9a6Xvmo3dRHNthdhmOp9AUWjUJ96Cbx9yXEnhvATfg1TlgmIpREm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720413983; c=relaxed/simple;
	bh=Mxfbev2RThEr4eZgyayGQQHVwLuA8mQ6vCW+bZ/MKCM=;
	h=To:Subject:From:Message-Id:Date; b=IN/0n7hXQnx/EvecGbvoNoASCxakGZRzLMPG9n4BDqp+tIf4txokJhC/MA74wZHWZn7T1j+HL6b66j80MyDC+G2FDiPsd+T+gowSsS9BnjnL8TLPtyjUw8lc23wNX9oQSfLbs7uTBEPsEOyMORUyWkTXLUGDKe7rI5eIYl899Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh41akZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh41akZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB3FC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720413983;
	bh=Mxfbev2RThEr4eZgyayGQQHVwLuA8mQ6vCW+bZ/MKCM=;
	h=To:Subject:From:Date:From;
	b=dh41akZXWJcEXxKSf4RlmmvqUrNvw7MqohqQ4rmrrHKLoZKtHNg9nLE8LehhgsitK
	 dOVKl0hyiirC73rBtvDZDNxGhPQYzxNf3Hx2lGHsyGFIfCfTG+bxJyn367tKMEyyEi
	 qgoYHlPmRRt/0kKOFS6o0nkeJwVGlcodIuIL1dBevySxxFen7/9dkeQ0tqknQXDkFw
	 w7koho3EvhhWwcv1N9buzAzXPEBA7g5CoxO1TKXAeZWCcscMiumHvCpfMtuJcdsvpJ
	 qH/F+xM4MNgnp5z9Amp5lCHJZl8RPkd3adYw8QJiCHrNtTk0FSXSkHyB+rOzYRiOFf
	 NI12j06wCLItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D1DC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041398282.27568.2324842428694306133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccc9dc500805f45848f1fbd9553cb20cf78a3359da8399d894596c98fa7d5d7
Date: Mon, 08 Jul 2024 04:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720413982
