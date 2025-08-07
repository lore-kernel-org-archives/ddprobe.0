Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A8F189
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754536794; cv=none; b=gjQYUCtcGN0XigKeH1irPusd/opf/Xj1MbIbkXrLi8830sO6AM/+ZAKtgVm6cVN0aUJJgBwo1aAbLm/c42QMMNBATr01oVrKLMl8n7jsBQaRAoa5L84obd9uqKReorkXqRNaLlKwpEWX5uJJPxVwHcd4duIgUhrgczAsLXqiRng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754536794; c=relaxed/simple;
	bh=kBcX8SXC4FNTeS4s4hCYLGfdYCZguuFp8/lt2+dseTs=;
	h=To:Subject:From:Message-Id:Date; b=YasovOhd9G6MQnIa1oMLZZW7oXDj8zUD3WSz0hF5H8di/H1U4v8ZneXpgk9GngekeEr4bpg9eQT+1WK/Sw7e8ReRf5l10eiDlzvZ264INlngrPYJ917k3pVNsoii9dIgFcjHSSK1v52pCXuoJLyCuzVeVEDQc933aeM/AR0IuUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPi1a15n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPi1a15n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F77C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754536793;
	bh=kBcX8SXC4FNTeS4s4hCYLGfdYCZguuFp8/lt2+dseTs=;
	h=To:Subject:From:Date:From;
	b=tPi1a15neHe2b84g8X2DMPfGFskA6a3n20qwyH8fEGRTof2fQdTF0sC0QlV8ratLh
	 ybjfirtBXxe7/TQb/DR+D6H9ytlj6BB4/wV60RAOc3QMbck1pfNnGTSEqRby0v98sJ
	 6ElzVWZzIDMVBRhlakwe/Fk6LQIfS/tFuDd9peltDMMIgv3dEVKay2VEPfGxXdzMfh
	 q7lQdv1twmBEX9CqIj93PR+Hq9nMsCRJ1kbTr2fQZcvT/Z+2jabiCsjenRyX0G2trE
	 xyXJPuTypUReuRN2QtYG+YmXbJpxqzySVMwg0ZPRKI16wBvzxPF4qm4PFHkutUGBdW
	 5IHBX8MrX3izQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E5C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453679357.8645.13068511703394171985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818d3641bbe3227316edb6f2cd584294e60c7a874c64043c0dd3a34c2f3fbdb2
Date: Thu, 07 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754536793
