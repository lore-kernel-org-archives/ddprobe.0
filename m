Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CAB145B27
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751171994; cv=none; b=aDrQfoi9KgNENQEtN5jxOacQQZMsh1ILdQ2CuKlrMOedIdJvyBkqHtC5AydBCfdyOVGzOugFtjVcsQuEEQ9QJ4FFxWngnemULazxpeVXX0OlTVL90bC2x0nG65RJyH9tWhwS+8DoIf0JIBvWv9i0f/oBvcTRQK+C4cFqwUg77Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751171994; c=relaxed/simple;
	bh=3OWoISuj8655652fwDkoaH2blt18lh8KQiE5ZBwcFzw=;
	h=To:Subject:From:Message-Id:Date; b=Pai3o011WFkHKJpYMS9CGySo5CuRi+ws3IbtTc8oLXJtK3kOe7w7QXpvwJgaQAK4WjdxYTQZ/kJy/WLZhF62xq0rIx+UNYBSTb6Tj7leIWma3/z/o2ELgmffYOipzLCFoxXIulCiEETIAd6lBIn/rRWNuEX3K9fq/1Gfw6Lp6qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQJR993P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQJR993P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A4FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751171993;
	bh=3OWoISuj8655652fwDkoaH2blt18lh8KQiE5ZBwcFzw=;
	h=To:Subject:From:Date:From;
	b=lQJR993PH1oJkaS/1F59ZNvfTQeTUP5WR9cGb3mS4WIMYq5WdxXFq2Qjbc/XRudPi
	 FHgJZawKqyE2QwkUvnZLcllECzzFuY1ZBmaw9fx8TFgrb7A+kAS+3i2FEBKyQF4lNI
	 HTTzt2hkS4snLZGhRnaG8XWgspbMf2LWRxAq++5MPVdqD2/RjDHKrxxH/ZfGtz/hQu
	 pAXQwlnUNA5fBd8a+pSN4mJhKwE9GYeevsQwFTWQdb4mD0pRWXpl2HCK5FL6SS/8vH
	 oo1o5Rtb5NFVKfuf4D0QZ7NZa6OAjbk+4VdMaNM6Y55GwAB+ZSgGE73E0JrxhCmse2
	 ckKDR2CyNG6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91253C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117199357.11265.6810016576271948809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f12223dd29c12a6058f4d4690585ee8c8f1636905f081a199d0a93e576a3b8
Date: Sun, 29 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751171993
