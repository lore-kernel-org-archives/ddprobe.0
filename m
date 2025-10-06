Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C3B1A9FA1
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759742993; cv=none; b=DxB54MfaXQKZSjiMm7XihkgUhNFr7rNBztNk1rGCblYQhGFEwVCXQ70sb7SPqDiIRY7jB7mD9SduuTC80ufI44Ae+jk4V1pcDdOYZkcnszyxFin+SjEan1e/w34WfL3xkZoUUsUlRBMQkr7z4VgZs1xNFwB5akjJXNXNEV6xstY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759742993; c=relaxed/simple;
	bh=sVT2sugIv9NX+sW8Bt+nR993ybm39xpa+aByte4J750=;
	h=To:Subject:From:Message-Id:Date; b=BCSlctWGxgvZecesWe40emWWFdW53PWnFc0eoYXEC6KJzUiRuC/u4lmrN51PFRiQDYjM/MNwKlFhE/Q7RBAqc1on5I2Jz9Y5ksrLctMHyu41l+DMkWRouTwKt4owHi0QHhaPiAC2rBNWndkK75VHYF2/aSqD3UGktec8sheweBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIBBAvSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIBBAvSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A741BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759742993;
	bh=sVT2sugIv9NX+sW8Bt+nR993ybm39xpa+aByte4J750=;
	h=To:Subject:From:Date:From;
	b=sIBBAvSYR+MX7yseAGQeCCWjt+cnFzoVb7KfdnOojUURiYGhKIsfIfHYB/lhdknRc
	 5W6wQH9voNTunwwnNpYhaDU6hxBM1iOijYFHnrFdljlZFKlUJT5tdq6uwYxHNIJNXa
	 a8snGDhnzZGdnW78NFTZarGyEvlk3WqfTovI+6PtbyegoABb+T8jxiORJLHG7pxx7G
	 jMEEM8HTYMV4VvNTgcYTaMk6Xt68vmt1SFa0uBr5zW6lRXvrgMAhJUiU2iQGOtcpgu
	 lqAEq2Q4yNqoS/bFtssN0LYJ90m1xKRC1YbCkyj4iLEYLdVqVPHGTOUdeL2WvN/azZ
	 /MCsRzbqRdIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95977CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974299358.23629.16333488202626731280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df5dba6f7f8f1b8390041537e2a473f044c134e0e9a44b19e632f415f9bf6d7
Date: Mon, 06 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759742993
