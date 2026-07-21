Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161E3446C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784630915; cv=none; b=rtbYDtiXZ2yJ90GSvIj/fBQy869EZYUP824mNdKbdi7HL5Z0JMfS9ogFcDAiNqgXE5Sc9v6tXEndV1nUrkL8PKU2f2YqgZehQZ0WmepRk+H7s2MZ8JqfqKCYoLqENg5fpoXylU1zyb6mbb9Y4mix8X8g0/S8X467JYR+z1hsdr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784630915; c=relaxed/simple;
	bh=8CjsTNu/VzlNBSwMGYvayul5ep4TfuKLqpaFDF19QmE=;
	h=To:Subject:From:Message-Id:Date; b=Ad16tCeGiqSLWIVT7nnm4EFwpJlowWob75l+ce3Qe2jZHXtO7tOe3lZG7ml78WPwkfHEQsh9NqK+6f24YH3Xsrxd1UKR/iE4XSY9fZ1+Ppm70LmdBTpTeBHDdq/tKqoB0WmKuz5n6GtgHzgW2sKcdcxNgFYNMfEB0UsdZzoeCq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyEB/S31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyEB/S31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FDCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784630913;
	bh=8CjsTNu/VzlNBSwMGYvayul5ep4TfuKLqpaFDF19QmE=;
	h=To:Subject:From:Date:From;
	b=eyEB/S31+I2McYSuZ4lxKKgDx9HuMYfEgk0XBmQudc+ZGXlClSVorJOkl+W8NXqYx
	 8bfazDDV/9Wn8m7mboHkuXPbNdNX8ONA4CfRzo38tPuGqbLu6nTNuZnYU41BZ2wEuB
	 JYdICeGYEgolotdcg3v3iF1AixBBI810gA6aQyJaQwVaRRLn+squbPTvNN3nGZiLRi
	 iwRJ4W9jjZtDaGi9wnswR4OLUGNbeYRGPF/L4TpQXzXDZtdetqlEucTF2MIYBMGUuq
	 /Jg6r/MHZEuH8NH0+yt8ugsr19A99LB5i47ZBPhbeFMSGZW3q1zjolS2W3cqfo1AOq
	 iECavO4un85Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAB0C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463091376.5091.13789634114331104194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d2f821dd855b5a48702949faa95c7e2fa12760a2b9c4bcdfd89521c65a6fcc
Date: Tue, 21 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784630913
