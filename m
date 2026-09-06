Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC1C19D8AC
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788706234; cv=none; b=pZJCxOqQoNKotO05y2TsiOtmHxo0D7trGyIUVkxXzEjYCtQ44vtYszmHRE836FU10VRwe/fH6qXFVhBKYIcCYpJSIS3k6fiVWAdoQvn6tDg8kzifgWqZAZzWT70nBA6N3k0gLA5ZnRSFR6IKmsV+WxTa/cX8JCi2GNCpixY4zVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788706234; c=relaxed/simple;
	bh=sYI+aoVNyJWx+xIW2oDS4s6f3B0Wm6ldtNSTQotV6P0=;
	h=To:Subject:From:Message-Id:Date; b=nPghRAlGwQwmAk68IcZxn8Nz0c+7XkzmQbPVEObVQ8B7qz/GyA9H3so3W7wbgp+SgaOh/p23FUJJuztDkASX8eCExq2CFO/ebvrQvAGl6sCHq/HDPtPQh0IZbifIaG+AyPYblwW+IeKMY55Sreg/dQXipRWGE6wGy+CymOMs39g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUHekCFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUHekCFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B04C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788706233;
	bh=sYI+aoVNyJWx+xIW2oDS4s6f3B0Wm6ldtNSTQotV6P0=;
	h=To:Subject:From:Date:From;
	b=EUHekCFVt+hKWUtwpuEQ6TazSJUehtHW+OwFkbqkgsbuE7krgK/O4u2/DDU1BE2Ii
	 oJ9sd/l61VWNP3vxtRmYzjdwqsia2ppoUy1y/EqGQO5ZPYVSjliq+S8qIsGfNEBzIT
	 kKohZT9QmsAU6kpQvEFRBqRgP/l+/d9Pfyhx0JPfLRoVHcS9vWMra4pdgPEarXxGjd
	 k4d4ey0lS3leu7aZcuGn8WTzGoGd69wSQTMulTwP4z5volebJCG+gI+KZ7UJWNv64B
	 FdOHSG6smSKtLDaFVUKCD/OHTcDuOKLGc6qPf7IyS4FHb7gP3sYxMvfKJ9miiaAB0F
	 nF+EH+3t56k9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B486AC79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870623370.7093.17106242408878996392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb650a0b6b5125dc88f1c86874ac88ab0c1ca204a9b2cb535aef0b66dd07584
Date: Sun, 06 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788706233
