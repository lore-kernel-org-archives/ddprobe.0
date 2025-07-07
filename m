Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8B51A9B48
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751863194; cv=none; b=iGzjZYyoZNdD1QA8WIvNq6ifgciU994agwsnBdiGW8VjV7KkSDVA8yZo6VYAe8tsSGH6R+vvDHziMNa7yoWPcf4U025cSkasDlhSXjoBI/4dLYgKLJ1ig1ocxv/ULiQPlzJSgplfslVLrRM9bqyiYhLe3dkhkSZnOQXs0/ENhIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751863194; c=relaxed/simple;
	bh=xS3KUBAg8qSPyt2m/AVFqi6LcCSoEQElPQHjY7PqPqo=;
	h=To:Subject:From:Message-Id:Date; b=ZjbV5IpCH29KbsaGAVXE1GlS8K+ejwxiTWEWGEkjA+uk6WnrMHAlC9jtL9TY1Y4hRE28cNNgPTidpmDrN1zzfNMm/A6h2SwwsJEPAtsetxfjv1R6JKJ2P5Raws2POrX8365qDXDyFV8oLZLlF/EQYB1JH7VPrXft8su5MgrhqtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVzRMCeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVzRMCeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2ADC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751863193;
	bh=xS3KUBAg8qSPyt2m/AVFqi6LcCSoEQElPQHjY7PqPqo=;
	h=To:Subject:From:Date:From;
	b=EVzRMCeWBiGuin7KJS7OmyApjizkrKSdrETS5WfD395GS8eBa7zPVJp0zjbEGeR1N
	 /UowwGMyhFDnz4Kszf+wHmrsdgFvfIc7o2ny4e4y+Gijw960OjVTMA7ti9ywVrSAeE
	 tmlYGRmnnqrh8QVpI5fZZFY3Jsm6XOJeq/4YDU7adB966n03aXwQ3mwcxs4Cp80v2g
	 sbHaVvOSrR6t9oCpj/EQZVje2FxoA1OQswzPiOZFEe5YGil5Q9v75jDuOXZFDCsTbB
	 MW0PbOi8hjxvPj70V/jRRRhFc5yxDjU5bexHSyLFA34ChPwu+76I7UBClGdNq2yEsG
	 L3DkxpQKNvVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B5C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186319357.1237.4306775748128827300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0218812e1406a19ec2265cd10d51b28aaa5aa4389ad4200cdf3f1c8821daa280
Date: Mon, 07 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751863193
