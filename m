Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21BD29B79B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771526094; cv=none; b=frTV8BEJNudgvHySwRK8BKarT87IXXxF0B2hW+9cHOV7REWIYDk2zBLUfavriMvZot0pZYvulaKAS3Rzqh3X3KWMdl9AsMNnMNHI3AGX892bq8j320LK6PJ/t5athUO+s1Rej2ov2YDTryAPOHwue0UUE9uSVGDzArllF+wHy1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771526094; c=relaxed/simple;
	bh=Z4ZstX8nlbmg9Tcto3Gx5H9tks4rU+Txw4lO0/9deN8=;
	h=To:Subject:From:Message-Id:Date; b=RAE7UyRKZVdpMfUbO6SQNbhMTMaevEv1emqXmC+Q4iy50EzoQFlPZ0saUyK2E6rDun69EL6iDS+/Eys8WLdtkcSK3JGJIYGBv1tGRf/9OkEfMB7p6aZRA6Wnv7pgfatDjM/MWbBXSorbxcjtgu5i1JkZBb86HZ1RoIyFzXjpAc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lhkxnrQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhkxnrQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2020C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771526093;
	bh=Z4ZstX8nlbmg9Tcto3Gx5H9tks4rU+Txw4lO0/9deN8=;
	h=To:Subject:From:Date:From;
	b=lhkxnrQ7uT19VsCcDCcWqcUf3foJJpIUyhgoLFelDLjs9VGCCw09rU0E6kJD9BwcE
	 4CUfwJTSYogPUeB5+K+1uf5GUA/TkETRu8I6er/Jz3x+gyrpoGjE2LvxLsatj19G+i
	 pooE6n4jz7GuO51auVY1GyJnHLJ3bYWYJwO3gfiuthc+f8gp7E6WwSVAmZ+/bu/Lyl
	 SKpKMISNDLC5DfVm6VwW2TeU4LAbGhDxMnTUalwNtMqAOQMg5tmZo/65uKEKjR36xS
	 LrgGn95r26LWNjqjzpF8GZUqaJpgaefWxZLaBuMZBF2ecoCm7zudDeATC6sXhGw4TE
	 rQ3orRn81I7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91316E9A057
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152609358.30087.1232098082330822295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcbb1a859fda8bedd6722441e1050c0563318ecfbea1e668fd8de7dd10c5f05
Date: Thu, 19 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771526093
