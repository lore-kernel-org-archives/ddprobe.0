Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6342125776
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744559394; cv=none; b=ZE29y94wMkoN9N2rKKk/n6cq6TKn5Y3SAFV5rYtGCjDr6ljgVNywReyFqrnvXYaKSDDpURBpMKwcC0EHBW89NcqC5BSMy6f+Homd/coq6ZVeUjzpXp+HqviD3ZIsF96Y24kl6dC5nZVxw5JKUNZ8VeiB6hJ29Xguy+KxRq/lRsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744559394; c=relaxed/simple;
	bh=q3fMuXv6kJmiBZXJsL2ZIlOHOi56hUyQ7fKTXTL2b5I=;
	h=To:Subject:From:Message-Id:Date; b=f/BPzpu/aL5yRJBHBVAzNovaTHPTCENNqGZ+zCg/T4q3ZRkOBHAZUnEz9ycbEpZXrZr/aKNJvY7xtWwS1txHyMo+KyrIGMkCPy6pkh+BZpLHKZOv972iH/34FShwFefVbn+Lr33MVSMjS1Lh7tcAB0p6C62YlkutQBzFN2G5V9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lo+9Vqbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lo+9Vqbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB1EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744559393;
	bh=q3fMuXv6kJmiBZXJsL2ZIlOHOi56hUyQ7fKTXTL2b5I=;
	h=To:Subject:From:Date:From;
	b=lo+9Vqbkbli69D6c6t/pE3QssV8uRS8Eox+VICmjQ/yhBksbOwBJTFPwGQPpBMm+0
	 oVCF1fvEHw4H6NxbkHcCOuf4vP5MO8LmmUkJqzOkA76iMlLYFh4ukPCjQCx01DNmXi
	 lM6s54Dcoi/7h3vwDPqkhJp6A+E937gS5/E0h/P8YVbtkB9s4xnnFXC9w3tIvsZ+fD
	 IWWay53oNJm3TH1OoRPthcVmtQ9fvURdDZT167s3XRhNL92eP+42ud4Pn0l+3uDQoI
	 RO3sg4ZcSezUFo6unaJUxKf4W7A+rtDz7/Eh4ARR4P8M8lBrj2knj4n+Der4Nuloou
	 bnLAu6Ntg6fTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0034C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455939362.6645.8948853953686804040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e1ccbdc80d75bfb2a0a6d3fa5d2c6925558d08990066188176b250d047046c
Date: Sun, 13 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744559393
