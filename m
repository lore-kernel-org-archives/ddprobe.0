Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457E33C9EEC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792298434; cv=none; b=tZgZx3lm/bE6RWktxNFzsA5A58qUDdkrkHyDP8Iogp+5+h30Ix50FukK7dXEDAIPxckxdNEldwTz3UxzW4xEik2CiTfdap6lr66q7oM5CkKLWVUGn7Kxs2jkxAMlsmAKc7PIvyDIswhWFBZs4LqZY1XRkXc2xTBqTrw1+omS3kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792298434; c=relaxed/simple;
	bh=MgbOdbgIrsDImjscavtyx+H4UcGGW96ZusOSlhMgaCA=;
	h=To:Subject:From:Message-Id:Date; b=mq9nAKAPQx51CXpZa6v1gU9xkXC/di7G6iW4CS3sv4vXYidaogBwI7Nq7dBIQ/sHDt/fEDjC1QkaL5m/mWrH0jpO3cc8LOMW+gpiCMczJNye+B8D8itahmhl8bCARXf91DKzinj4/C2CafFltB8HJQjF9Sp8alMgA/mafCPlEU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TA3dEKbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TA3dEKbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA436C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792298433;
	bh=MgbOdbgIrsDImjscavtyx+H4UcGGW96ZusOSlhMgaCA=;
	h=To:Subject:From:Date:From;
	b=TA3dEKbvpmAd1ttNdZxojg+uOP/Npvu5ZDuwY2I0FOh52UfZOtBGZwPXvvqJ9KKk2
	 MeAT/xGgqMOwSiQ2q9VeOB9DktOJ+SsYAPCjSp0PF/pFb+YjvEe/zbd+TSfcbupzgo
	 fieA1p67am1uYAZLJ1s32hMA+3F8TE8wiQ4wyFurqOTLIMRmoTOT51s1tKsmLT1AC5
	 syok5yLwvfNWKxmel47ZfjKwtQvU2SdPmQZv74IA3WQ5Of85QLtwAAJVDMA2Pia+Uw
	 Y3lhPpRXh+rM14oNrbxVXVVjgOJMotVPaYVZacuol3KIj+lB1q924S/NPnwY95HCpO
	 FyfannOe2Ddxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EF7CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229843369.14746.4004284860331284781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba58090d0ea4776dde2233b9925dfa5a0ea8487268418f7131c97d46fe6798d7
Date: Sun, 18 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792298433
