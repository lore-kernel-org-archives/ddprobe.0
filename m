Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190D1292B44
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752074394; cv=none; b=Ehs9HJ1OH/uFC3OqGdLtg+BIb90lAw4OLugSoMmqZSyrkAD1DJ+T801LgNtQH1ft4xhk99wsWd23kKVq+XP0+b/lYSPSQ0+pPCafgpcTSvMnVe6UgFrwocn6lfhoUyFCSFOUfuuUrTLtwvRwH1uXVbfxDEy3a53hrVGe45JYug0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752074394; c=relaxed/simple;
	bh=eXSO8XIz1ZJ1k4mFIgJEM64BskZkmRpkjnqOTCnTJ1E=;
	h=To:Subject:From:Message-Id:Date; b=Ur6M9W35V5lsQn4oRoUxVoKcPj2mB7dRrtxL2GEMpEXL1w+xvaF4f9Zyfr1ey8sHg0oFdGO0GZG2gEQJappw91397FK4Mm4lrmqgOaFnORtkcvE92Kd07YxXLw+aazDxY7kfz7qwJDY9ero0dA3ACnPVUK23nmiWJM+dFm+GvfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0z9iD+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0z9iD+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFE1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752074393;
	bh=eXSO8XIz1ZJ1k4mFIgJEM64BskZkmRpkjnqOTCnTJ1E=;
	h=To:Subject:From:Date:From;
	b=V0z9iD+0cPigiXFin7CsXcmPKztiAlFIyzKa1XURCyndRcQLrd0v4wvkIIPik1vny
	 iGwQkmNzGMNrtlaotADhLb9gbefB8obFfj8Istu2clvRTfisLoDedh49TOhJ1jwNGV
	 0WJGBuOz1Z6wgxaPpdtWhsOWIqd8UTCnqnZPWfD1URqix7+nSNhFQIRttxtjsoeDt1
	 eU/Sr2a3WFFgiOcK6B6K+f84yZN5zjUFB1i14VzqlNuSxdGg6kwwCEhBH5U1ZxeSLZ
	 KA/IRNnAD7ZF0aI6hWho+UCAmsf1L4h+uxKfaIZA6NuEJLd/+zFZqdrpaJsXUkh9Tf
	 L4jmpVINcStDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B3C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207439357.15923.8993296789863002556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8daf214ee13074242a265e87c12e75f100950ce0267d6e0c89726e3c7a928237
Date: Wed, 09 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752074393
