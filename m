Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3089A2192F4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780833274; cv=none; b=UJ5X8p8ZlXHUHyvF4lSFVTthxYs/NfQqJ2JS31Pn7caa22heQCSgNOpdkgGVSgXxgnvl584040Yl/0glXK7QpKCJDvTp5s44TETwyOdYj2J+SSn/tg4qlMoWtUAlz5XFUoYm3sgADM33r+abcY/I0DNZm0kPOAeY28udSkDvFb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780833274; c=relaxed/simple;
	bh=7FjXY2ww2qgLkxnH3dolcZJBXoVrY5eHhrM9ipgKJpQ=;
	h=To:Subject:From:Message-Id:Date; b=ehZscbG8Xoy6gLJpihQ4AfvuncxTrsX4bZg1IwJtEiBbVVNBw5lbvu2m9tCHUavd7dqxV2+rVRIYvqzbFHslOPeZw3IA4Ca4O0nqeHCjGUvbu/K3or2gHqUlDO2isLH4f/c/ng8L7mO9iwF2TrWdj26zxcp7dGCYjeVOhk0gv0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY9hzIZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY9hzIZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7FBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780833273;
	bh=7FjXY2ww2qgLkxnH3dolcZJBXoVrY5eHhrM9ipgKJpQ=;
	h=To:Subject:From:Date:From;
	b=AY9hzIZn3zlQjYrz9Guu5KvlHhQCabW1HOfy1DKej6D9CwfxvTXVnh2Fsg7tf4/Hq
	 8cdNXXckc7u+1tlxwOGpfdhfaeORHVa3RU4T/h+qoJjmt7uLpHR+wpCnj+5qDd1xbl
	 A5HXZjfYm1Mk+59WWamhfgs9RlUDsR8vdw7jW4O4P3SIJLxbAGCB4mzfpS2DTuxAHZ
	 l1gM6s61+O9Y3qdGrTxQP4F0qpPeP0Oneyn44NdKrHCsP3akQYaVART+PVG9f/I7bj
	 wjNC3HxBO31iQI+d+LqS8l6SqnflMWRJndqOe2MxdU5uu6Uz4gWxmKdW0J2+1Re7qz
	 nWAAgoU7pV7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17A2CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083327369.1659.3484035981448225033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba4f96c298e105201718faa821664edb96f6d933cbd89a02695ac31b431308d
Date: Sun, 07 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780833273
