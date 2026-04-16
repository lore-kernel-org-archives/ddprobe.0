Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B7B238C1A
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776306454; cv=none; b=YLhRgbhcZvj2E/AQhK4rnfpi0ymV1/zKe7mZhkEyXJ7gRJ/EteSEp3ux2r1YgdUzmor0aOulUKwQ6O/4h08hXty2R+hPuUa6qj1QSC/PpFMP+Z2qI54fOWATDKiWZnU13O5180awkCi2S/TdzqzhpDzkRfrsEXndwgtjJjsTYCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776306454; c=relaxed/simple;
	bh=aIHGXqz83A+5TFwaCaiFLl877dyZE6ya0duPRudJLyg=;
	h=To:Subject:From:Message-Id:Date; b=jdoEv31a9qp5xizn7alUY3qGnTNuewOo0ZNx7kRr7JwUO6ZHKNGtVlpQX5jQ/NJ3BnBfrK/jgSP2JvX4yXegLlqPcnAaGdP77IFmQ7A37tyjXVuN6gBT2xZOd+UQSxoCzcthIrKa1T8NqDsqWIY9gH0OIeI4RENt3zYbeJkzFxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM3pk0/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM3pk0/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C3BC19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776306453;
	bh=aIHGXqz83A+5TFwaCaiFLl877dyZE6ya0duPRudJLyg=;
	h=To:Subject:From:Date:From;
	b=mM3pk0/6YhUS3yKXmGxBJ1qwl6cHxGX4mjZ2ibTktQLSxiGxHk044/f/xWUaFCV8Z
	 SssWyZzDG0Q/U4iE2q7e9whRQQAxwBAVOG/RloSKgCGCJh0sdb8QDQ63iwrN3Sgjsc
	 yH2Zem72CaqZIbB0zFh42ydHcxBFvdUtfVSlppXsAiszAfbLXRgYOVhxBfh2p5/LPJ
	 jbwMJEJcg5DmczapuaRCwp8Plb95zaDtHuVe3yy7W7zdKDSWEG5UKBSljRgaq9IBPg
	 g2HMusVjMKJophidUvz40dI0BczSPq0p4DlvcRbDlSR8/cTwgai4HHSE9UMbLRSP4h
	 08Wga4LMAPFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B6F433D8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630645368.15167.4392252741405114740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f348d087178b61d2bf0c9c8d942f111c756b3eea9ebe744089de77db4f04376
Date: Thu, 16 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776306453
