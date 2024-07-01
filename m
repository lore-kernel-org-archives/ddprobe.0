Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CAB10F9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719860123; cv=none; b=hEPmh/KMJ91Wbm8QPSfdkYgg9PheTpEC8djS3nronR9Fn5qoL3F98S6RylM/4pfHY9iqaNiXMizeb64id7J5t7t2V+bvWCt4VJkmBCu6lbW1zYhRr6KFK9GNig5rI/ESNaN99BkJVgI5YXiRNbNioE5/CZ0umrvsM1sWV3Vs5Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719860123; c=relaxed/simple;
	bh=WsRZOgOe/iNV8EJjIGsAGuAwAe0D0bJcjy0l01H9Z38=;
	h=To:Subject:From:Message-Id:Date; b=AutlgT5m8Xgd5yt8vKyWGF92m48Oi7+HHcxD7GvdQJfkmqCNRoYEsLM5HLwnYBTMcF6f0YTsA7JHUxHdIiyN/tJV7tj9JrkPxjiRIH968GchUzQN/GWCuyagRcfFxFc9Z9zbfPrIJtae+5na3iT87uIosUY+W7aUI7exRyNqL7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP0WAI4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP0WAI4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC75EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719860122;
	bh=WsRZOgOe/iNV8EJjIGsAGuAwAe0D0bJcjy0l01H9Z38=;
	h=To:Subject:From:Date:From;
	b=VP0WAI4/g8f1dJj63CyGgkKsJMq8XMLDiz+mg1uUFCQSSa3oZrbWhHxd3fp/hOKTr
	 DknaR4oiJzeGtbTqGDTlFhyZP1nGK+o65iy2Qm/qRJc69dzCtGPueIHKrBCUWlPqDu
	 /yde0x58IIIPp5knrnLJ7FTec2s3pVYeQDeSRNp7taCOST6iy13THhqxwaNiaH2HEL
	 8BLTsaPJBXIGxYl+cEGVaPsZsPbvS3iEyoJaumsV7RIdzWleKblturoTz6wR6D/oZO
	 K+blUX6SoJa5D6g3qQ9xm3Q5ZRbAho8+hOCbJFF/04834u2IbGBdbBv2OrjwzX6pFB
	 J90MiPJbHkfIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89EAC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986012281.4378.4548300640742535495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d422963e09045f7994c57e37a09a06912c82c109f4085064f0239afda7a575ce
Date: Mon, 01 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719860122
