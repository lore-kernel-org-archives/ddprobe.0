Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8CD2101BD
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744946995; cv=none; b=McjFG0hQ4w70Pzr/+e2Y2/exuDxpXu6+pm3f8gY1tw8l+n9jnfmg2PoQWP8BxE6cn/JWO6wpDNbKABMTA+kckBHvRyjs1qyVepWCxGesDWA01ASpXH7UDpoJSdb0a5hgeOZW2o01pHu0X09UPeiXGfWjkn4jZU+XZnlC7w7SQWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744946995; c=relaxed/simple;
	bh=0fN+UygE/XIu5gf8Gw9Iy9eejrtyijegWjyvqbbuvLw=;
	h=To:Subject:From:Message-Id:Date; b=niwB0xhmR65jCra2FuI7pyhUlsVczZ8tydDz6nu0EuWpTx4Bl92EwU73q4yHPNji3fWUqgJCKs2bqLq8bUTXQ7vVGqKsB8udZvSFQ3H08KbKYu3/mnRIS5wXjIHLL/46O9pxjezAxK9NaCoQFBPtQb2qQ2PHDIPlaWFd6eNl9JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTTkNqDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTTkNqDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FBC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744946993;
	bh=0fN+UygE/XIu5gf8Gw9Iy9eejrtyijegWjyvqbbuvLw=;
	h=To:Subject:From:Date:From;
	b=kTTkNqDLzNfPV1suaIgqLL5WI/jaBUQV1ZoNOQ5SGRn49B6BQxa8XMryv03oT1sNS
	 hWZugluaUARXM1qmtwjiWIZLwELmotz/HcUsUBO3j9eGVmzs7/nMCKE0YcAzOoteIu
	 esCQagE4uI9EQaWcT55Lff0Cv81KEGsrDznoT8F/D/A8o+dMebifuykjSlXEgbkBd/
	 WIcSfr+3Xuk8EiabnRKXeKTy+I+ThAJRfJRproTPYWfwVB5azUQZ7ERzMUEyMlMLir
	 WjbJN8gQBGRQkxrT0fmPRKU0L3EK9hfuyFMv6ERcAlfN/dWQTJ06A8WjtwPhOMDW4w
	 4j0e0vbi7Ja2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92739C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494699359.2150.513018844109032438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e4c0f206d2b90e6d921ca1505710443d60231d3e1a8780d5337e6e9c1aa2c8
Date: Fri, 18 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744946993
