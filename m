Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF725EF9C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782875914; cv=none; b=ipbAkgFewilum4b8iPgrcGG1tj3DeFvEpvKNqMSO+x8djBeuCrDDdEsqaL2gAZJa1toRA7T524g2DhpOFXEoRUm6CUGor/4rvJRDnhWp4i3V0KpmFjA9+z4I+tPuQhWLzuflokYc9IQeMQVr2tJA0oIhfmUP20Vb0BiX1ESIkis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782875914; c=relaxed/simple;
	bh=Wqn43ZikSTe52+xiAXY4/DRmnpLY6CGrYjod6U4b3xo=;
	h=To:Subject:From:Message-Id:Date; b=f1Fl5b6cvqlXuwnHlrJMlZFvrhSskp3ttR3h3U/b62eCX7uJ3/UEeQ6Rk5kG2dPormGAevJBZ2cecIidYtWPSVGdSGkxLBA1Z5tyR3J71hKH2WFu9UyUJoz61G86sMWQT5WSABVZp+SQ9Kfw6cxRNBcSSwnyb9e6T3gpafNQ/74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBD/Gc0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBD/Gc0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C084FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782875913;
	bh=Wqn43ZikSTe52+xiAXY4/DRmnpLY6CGrYjod6U4b3xo=;
	h=To:Subject:From:Date:From;
	b=LBD/Gc0qkAdSoRrUqH8TS7BIdqHXB9xXVREcZ5n1zuhiCIhLFoMhi6KFWNNyWwPgw
	 SVaSG4Uw9EM2v+VY6paUyDnhkjcDYCNEgnfmPtrWtj4/iZwmtvzoX1qG78nlcGbzc3
	 vRGb4OgwoY4V8ULZMpcBSZEWVF2JV7UmVKn/c5P/s2q4L5/pqUtRtX6DpKgjaRcYnz
	 /3c0S3Ttv7/IdzldkcvLD7Ld8rDMVbSFFAhdeeyiWf6pxckiWeAkdcq1dukQ+J1lLq
	 ND8cl8Tp3RTw3rc+dODS3HFJYlpvLjXn+5A2AKpMIp7lY1sjI9e/3IhdcBYy/c+sAT
	 PUnyO79GtIwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287591368.3258.12110105030291263344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a136671893ed0f35e1d9c5ba7489d92139a740566947198f2238896307ced62
Date: Wed, 01 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782875913
