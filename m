Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC0B23A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737411953; cv=none; b=Ba6+szTROW9/55Bb876KAFb5briBD9Hr6L9BQ4YNp1mAxmsPLyCO8fNkGkARmPUBUDVrFqB2wObX4jOefvj7qljAaZb/1hTaWsoVU10BwrXvQyiiw29jLvJsJQ2Gb9ehBs419E0mho2Od8X35CZVodtlwFvswj6QmnnGvWiA4IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737411953; c=relaxed/simple;
	bh=YK4OGL8Hjah/Vmc5yPDoGuwyulyrzDROw0lP1rjhPYI=;
	h=To:Subject:From:Message-Id:Date; b=cbNpgf3SAd4sqWPztfVYcbgto3OcnGtddO+BQOyU+pyud64ReSlbr0xE/BCIeX6Ocy3eLchJKmYAoOcxDgrRyvVuVHQw20EUeeG0beGlbDb9ULyFGrYMPW66Es38fT1Snt7m27Q4ZcxFkpEEaURNBOmjBksvMR4j9Ys5VbWxSbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXRqNpiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXRqNpiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DBC4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737411953;
	bh=YK4OGL8Hjah/Vmc5yPDoGuwyulyrzDROw0lP1rjhPYI=;
	h=To:Subject:From:Date:From;
	b=uXRqNpiMQU3O0HlNXh8zCqGEfxrsFo9JL6Pso6aV3a0/BQ7soWcjy5NaJQAbgpvFL
	 RBcUTPTwrfNJApOuP3UDYvYDprAlQcyg2Xhj5xvbA2OgYho46tGKZH8wpPamgO52R3
	 fsAMcLPeLGlDkLTiqvXe5VHbB+tQQR6LtojFg0IXH+bU2VmKiJRqsDhalR1F5cQgjd
	 01mYW6yrzwDew+hGA1tqGDUepkgYiIHMDrCxQ+NO4c2peny/fGcvcPlpbdU0lSwqGA
	 OHBFJq3KI37KTuUQva3qyHSZwR2qfHxEQuYuoW5w71iW0sg39KojENzXFdhg/6uQQ1
	 G8voaiWb4A6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915BAC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741195357.11086.13916933085846302864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25f2034acd819b023f242835c52d11530bc1e3e086cd31df24a5faa3b6d91e4
Date: Mon, 20 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737411953
