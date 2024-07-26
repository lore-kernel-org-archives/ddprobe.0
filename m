Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2810C2C9A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721976354; cv=none; b=KVAzRZTnEUl+/Xo80sz4L+Gtn275oBUBI4Momgo60dOWvFrc0VhSgfQS/DtJ14XgsCwY6eGwn7e/jR8NS92IUd8nwAggbKeh52Ve1QXgTxg768fhgU3f1KlMvvtpfD1iVloGDleejhBazXgB2fr1d+qU9M6icSXWwXYuyOrUJZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721976354; c=relaxed/simple;
	bh=RNOuAmRUtt8WuAYIkC4HarYngrCTsxJWayE+ZkLFGEI=;
	h=To:Subject:From:Message-Id:Date; b=LeztyVOEGyJbW+iz9ywTpJgV7XYR3ZCH+ouy97BzfPh819SCbew1CPIDsHV+hXKqPp1aAIMZyy6kBwfilNGiimfdF9piY+rKwJ2jWJdgNyfxE8SRA8JImvjiidCnpASSX2dblss3IpJwl8T8d0c8z8iNaEjR/8faBidF/tSNBMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGYAKxyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGYAKxyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31BDC32786
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721976353;
	bh=RNOuAmRUtt8WuAYIkC4HarYngrCTsxJWayE+ZkLFGEI=;
	h=To:Subject:From:Date:From;
	b=FGYAKxyBWY4htGsxfx78BuGPz8j1BRICyWcm5mdXrOhee/oT0p/4DDUtq4Hzj2XM0
	 2jUl8RWfBwJjna3nGzrQkYPxYI9LmaDAKgs/02g9TkmvLAMyMwHORim5ppNxlZMTv2
	 f7qEL2RzMREubK5eVyyk9qpmDXUW418Arjsq3k59NqhZE+bkAp2IJwne9fmovRnfCk
	 sboHvq83uI5+KCmIMje/xiJLWsk5hPIMFZhIoKfXxF10UF//745XdHdRo1ICu3JhMv
	 des5FD0ooVluZAvyZqKUXQM+INy4e5fu9l77PPxOk5dflcQuE6jFsoxt0yFixCFtaM
	 EwEeUpfNMRrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C9CC3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197635370.3553.13666026653688646452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd46028765d426d52381d14ddeb19c8f690f83bb1b6605ff200db75b6dfb435e
Date: Fri, 26 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721976353
