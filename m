Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743BB40DB55
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787223634; cv=none; b=leBd93Ov51+whdjHrc63eW7UZz5fxrOth+vWxlCpa7waYUoGqjaRxET9bUfDkhhG84RpCH0r7eWprndi94/IruG09ua4f9qys1Ey/2VhkR5ispPflKvYcUgfURqzffRYB1RPlV/gv5kWIsDbb/Kmxdu6QutCN6XoLUxm8idCszk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787223634; c=relaxed/simple;
	bh=FFO8hC8T76yzh5DtkO5OA+ns+FqJW/++L4AfxZRNHqw=;
	h=To:Subject:From:Message-Id:Date; b=Jlo0vLY/InuInnWuwDEa88VMhLWkyIx5x+sOZQFVwxz6howKUInHTu2n4OqtMU6qcWi6F7KZEZH2zoEcQhLP2XOwJnt+jpRdySj7Kqj8FjIL+G0B3EZl/dgzfhjatfREZlD5Kpn4PaubqiGhlLWr4WCNLrILFqkIrNabkX5oG8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgsWdd51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgsWdd51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E467FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787223633;
	bh=FFO8hC8T76yzh5DtkO5OA+ns+FqJW/++L4AfxZRNHqw=;
	h=To:Subject:From:Date:From;
	b=pgsWdd5190N3WA4r4ZQaXHHqw6ol/ptk8qIISiyKUA810ZVq6xLDlSMYLWzPobFKF
	 N1m1dklrH8UEKxWiY5AwbA88RHm49uNEa87UzZXXiigAMFl3PidKnzl8dCLhMzoqRF
	 gzrxiYHmW66ifYpiNuT6Sc4ghxbLI9Npdm5V+HYpGPU7dwzuL5k/CE/FlIpTwPFWe8
	 41Ylen6Ch74Dsbp1rHXIwOec00eO1PL/TpLcN2SyeKnUG+M878WwBTX4oFmewrxFLn
	 OSGh46KHYlG3CwQff6NHVAjpu9+iJU+BTFrJVizCq/feg2Zfw7a6oTl3anY7njLFbG
	 taS2NMOIZDusA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EE2C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722363371.18273.16342552674320509963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10ef404a50b42a80a786b89e8484129e521a30006246f477e3c996b04ee41d6
Date: Thu, 20 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787223633
