Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15236313522
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776494254; cv=none; b=F96dxxefQDi5RB6dVz9P8svznTNsuoLYJzzD2ktzcRMyL0rD5cle2qvia2qYqFAaOeWVvMazWcKWZjtT3P97k8hN/X2RdqLx81Pc1aOYk6LaA1JdrWfwsV3ecnl4gkC0lUn7aNOEBAmaMLAjo2dEdFg/eJstHOdQIP6ILLrFtIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776494254; c=relaxed/simple;
	bh=Dg8OJXtXd4OIRPenvASK8wFnkLBlzeiKqo+NlIdOvy0=;
	h=To:Subject:From:Message-Id:Date; b=VtVvd6xDlC9DduAouX39Jarqmg0i10m6WJnoeoHI24JoipBKXlh8CsmzJgxX+BaBvFi+JGgIl1RclpMr1+yodSuTUimnF2A4MRXZg6Zz9wFSmbnjobi1hEdINXCqqSh+cr/HGK59DtjuAqWveGpHSUZq5J4wEsfgsNJD+JfO4O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5bz0xEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5bz0xEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF20C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776494253;
	bh=Dg8OJXtXd4OIRPenvASK8wFnkLBlzeiKqo+NlIdOvy0=;
	h=To:Subject:From:Date:From;
	b=q5bz0xEiF6RIBvZkG5O+kQ7CX3HUjIyg0LrDAjzE3cHa20xAufHk2SUUw82T310Rk
	 ZZB/7CN09i53wd0uojgDhBDEb0RwMjzsn301KJO2kmsBq9ZmUWz1k8mmsg7ixOd8Tx
	 eorCX8jI1Lx5mGWd/2zh5HjrAa1H0IWnahtRRCbby2PHmE9SNot6Y2pEh5a8wnboHJ
	 spe4kzg8pz3Oxy6xDQshJCBKBl5h4BKMWlRd89tp3Ig0JgtqXPTFb2kg2g/r0qTaiV
	 fy4lal5zQodzBsjnKC/CJHVGqdkrU3Y2h3smxoQ8h4HvdiJJVrHIDpUmBywaqdoyiT
	 mM4OkU5SkhLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9138F436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649425368.2740.3881521634765261747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6c46f11bc4b8a58740b8347d5d56c16615b7dc231a067ab081d7fb7252e543
Date: Sat, 18 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776494253
