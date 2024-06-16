Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708C02B9AE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718505503; cv=none; b=e3u2vZijF9Mtsd9ie/Vu/G5hAcBtgqGoI3ENc5SefzbeJPE6+sW47cVCYvoibOMdEjN9z3qvNA6pOsHooenyOKwzTDtOf8jERvmKn2ZECrEwbR1sIBRy1Lxd67tWP0JMEJ/2G0svyBGh3DmqIHs6G036TqgBokBDjy6sbbtMTHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718505503; c=relaxed/simple;
	bh=dAG0T28PIXhsPslvkMxbXkzHsc/ArFGS+nmMXVT2Nlc=;
	h=To:Subject:From:Message-Id:Date; b=BRiJr9xKxWSZYlMoTm5kBkkS4j24bLgKiRHd6cPeqKjCDGXGLIjEzbH3Qa0ftxX1paOfG5ZkoKr1OJGN+EZnfEMOu5kcLLww//guvDBVcab3nZBuGQgoNiHKP9+Qqkozmwh/Zhbaugv/EjxbLx3nQ82lhRhyp8xrOvoC6EMEPG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBE0qdDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBE0qdDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045B9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718505503;
	bh=dAG0T28PIXhsPslvkMxbXkzHsc/ArFGS+nmMXVT2Nlc=;
	h=To:Subject:From:Date:From;
	b=vBE0qdDwcyLrNW3Z8BZyVDW8YqZJpNUSRmBrOYjVWEWtfx7i+ayZmezhjeYGYF/ig
	 YduvKewcB3TvaHltxdEixz58COl0bE3EpeM/dqbfKvnhnTjzlZJl5vThFDszfbuS33
	 hiaFzOC0nQmrU2H9yYw532wUsKK26QVf1Fqadd0+TxEvcGYV8TnSiHNOHF60C44XcH
	 0jJF4l/ow50PDiNZ4IO7+qon1kasw8ppkTW7dafNMjuobJu4/9EpgfFTKF6AvFakTv
	 RqKgzj6xLeUusTjABcih9PBWEzwmgLX/NtiWF4oEH/JLMbDoLQ0pZN8VD906MjNjuO
	 +QDf7QE9Ls6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE090C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 02:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850550288.22112.2592750510345963971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2717edc7349b3543c9e94e7cf743391a4e188c4c85197b6a11f7941071a2f1b9
Date: Sun, 16 Jun 2024 02:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718505502
