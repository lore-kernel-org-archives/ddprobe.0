Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F94381B8
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726779354; cv=none; b=LNeNeghGpdts9ijnWpyVIAhjM73PHiXECU+9WsTprHWjtYYaInMaLsbmd7RvlEb0tYz9O67oDud0Hh3A9J4sOhMoGmRLZzI+moLqdlq6ew1Rh99L2Ns1TBsSFVXtBgZavI7OE8/22U6sa5d1q4XItmwHI5PAKg/6uBiBRlPlSbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726779354; c=relaxed/simple;
	bh=6HiaNjWIfdDGGMOF+x6EO8tcegU/jo65siWSxcievJA=;
	h=To:Subject:From:Message-Id:Date; b=kNNfs8o14YXH1lEig8pdKs2xoLTXJyN13Vt7+Sp7/TiQgTrwC+p3c5uN/bXG0H+3x311PebSVBWVrAB+mqHcAPiktTzBVHswaBp/irT7JhOhZvxplmpckfqI0Q1SHQk9QAfd4jzgApRwzUXWZ+JqIn+cud1Ob8Ix3bv88KDJAno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clfgkS08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clfgkS08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE25BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726779353;
	bh=6HiaNjWIfdDGGMOF+x6EO8tcegU/jo65siWSxcievJA=;
	h=To:Subject:From:Date:From;
	b=clfgkS08APC0cWHC0y4bIjyHjsfOV7AvelVfA8/xjIfw7gUb3qSaOFDF65pVv6yrZ
	 x+kVncrJ6HxTf3UZEwxtxbdGjtzGhL6/F+Jykz5OWvdhOjQXtOxd5Pj5LsPSd+OVJn
	 x/iYjO3gTyJwYVQ935DPd/DKw2LU3khBOIXF7vUsaT1AszaYMK/UEw0e6DuooT9gbw
	 RsO1TQtxlis4zmtBWSkvKVyDaJNZnJdna4rAb4AZp+pcNKvigV69FLV9yqXNYCFoBj
	 qE1R4bucOnIdNLV/uJoHEf3om4qfkCeqWfgnt1vGgB3dyVcpN77KE4dkGZk36zlhWf
	 qY/lYMR1yM6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94900CF3970
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677935359.15199.9642811185804700715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748d45e9b388270892994ce777958441001a31e6acb849c0752ba97d62b14c62
Date: Thu, 19 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726779353
