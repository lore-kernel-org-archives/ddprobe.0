Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E3E131E32
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706121497; cv=none; b=rfC+jAGme0uY9watMahlMfy4zQW03J9nc+QBGaQb9FRgjdgthSXpAhc5QeRW83023y1e8erjJBCzLKG11MVAmGzoegCA2HTx5WZlhT7DnnCDTLdgbQENuBsXOQAMSsIXJQj+GD/LzK0zMOSYX0a7tx2S3sv6wNmyyHMmroE6Q8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706121497; c=relaxed/simple;
	bh=B9LL9dc1BpkK38csuHMZiCLs29wNI8GlBB3Yiuol5fw=;
	h=To:Subject:From:Message-Id:Date; b=Y7A6kfMXE05yrVII3HdTWKuuw6KR3kpkd97cDhqkYuo3vHQ24a97jgS9v8und01ooNLkF81LBbsk940W5gps6JZi3KICWmx0hl10kxcwF4dQyTLl62pzNpKmk+/KCLsc+nORFLpkplWZCd0BWi+kIYHH5tC5AH3nakj4yAOKbGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UblXAdPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UblXAdPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CF1C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706121496;
	bh=B9LL9dc1BpkK38csuHMZiCLs29wNI8GlBB3Yiuol5fw=;
	h=To:Subject:From:Date:From;
	b=UblXAdPkQL4t99i+eJxPgGFK30CGyra2vvCphO+UbV5hrT7C+yl0NqMvpukRcWbXh
	 TkpuzN6AV996cbGxo2p4nGeNI52A329CUwVmLiDjnfDmBZyIEXjYVzjsL+k/vu7a9Y
	 KU6BpezwEJBMzLeN3Fsy+1EiY+C7LKOQWyht5RE1TmGwTF8giygYCX30TyABpUEL9A
	 M9n/ZdXK5bhSASKFu+GbpKR6W461c6Kg/RSOUqpyS893n/lKXQX7ZzSsxPkN0ZHBHe
	 3241ugrShHS0r9HpkDFHfsw1apAwcXLWX7Yy/ddgMroL69yafGnZW3N2dfuexH7Qet
	 Nq7vR1OBlfK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDFAC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170612149638.27033.8098296160387868494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb8b3c894bcbe0b8e398a22272b7791d10c51cf50e131a03846a6bfff24a25c
Date: Wed, 24 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706121496
