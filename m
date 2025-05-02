Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7942A8B
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746154194; cv=none; b=RgQSsd8L7/pE7I3RwGGxupE03reemLBOatydFVThTAa9X/OOywGiyIy4MCMNjgT9kwZNyht/7PojRlrAngHL0GIK4yObBbHg8TH9jAnCcvSe4pbNgaygPCWD6+3yOrV/ewVUCnXbJuLzgQ/PeEYT7Di/tPSwEEN4tua36mRuYUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746154194; c=relaxed/simple;
	bh=FQJy32xeGlOSlu+D7HYrAQ2kFjPevJhyWDP0k+3Rg7U=;
	h=To:Subject:From:Message-Id:Date; b=orwwonP4DPmXVLkteQxaJmytS6GH2rRufCIRB5PiV0ivEo4nnRMyNEya0F9BPsfeYJvV66tco6Qyogixalp07/bGz0HgGSYdp3oG9hNimbTqECTEDuHxN05TUDM8ERmMhcYP5z/k/v/koSoDQyFdMVltLtOaxRHeBvOWTEs6n6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7cHdkX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7cHdkX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D447C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746154193;
	bh=FQJy32xeGlOSlu+D7HYrAQ2kFjPevJhyWDP0k+3Rg7U=;
	h=To:Subject:From:Date:From;
	b=K7cHdkX36JH6cjrNqW9vNl4f8d3zPbAwuDP2uiA9+02wXe1LNI02GVqE6WwnGOko+
	 7vNbeNQ6pueZ5u8I/iBW6zgTEICwy96gGMTBZCJZkpvI3B0oBi/OLJn4wCoG8CYoC7
	 WE0qtkHrXxSoujD3BsfDScHbfnaMsP7jLyv8IKHFtCOSdPn8KDHitIMI3Z1JtFjqmr
	 HPbSLJ6HKcRZWc1k2UlLXGPn1GEtdGqlxeOY4yMkqKmNv5MOMwBAo/rotIuQgR3k+9
	 7BWsTpW3AuP1KlHQHFfOdKHljZQssVFoVjfSH4re8+dDgO2Dfx+TKTU0peUNJSf20j
	 88+XvTTCNuJkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2EBC369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615419357.6359.15918412298692822082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d07891199994473c67459c9bbea86c9e810506753b94cf7a6735fa5cd7c0bc1
Date: Fri, 02 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746154193
