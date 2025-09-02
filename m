Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227E29B229
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756816795; cv=none; b=OkdlZfJX3yjeR9CttehH/0Q2P1uQ6vIswA85SdzBH2LGao+AVL1X2maiKU49N3aKzuCiUqJiGlJbTjwvuyd2mGdHqOO/2WvOuDnq2IO4mOmpCMhl2ec+R3bOgUPjXZQUv3id74qcl1lV0h0wS6E3TgT6laB0WSkQ38t0bZuOYs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756816795; c=relaxed/simple;
	bh=UcjofFljNQVTABZf6vj1LX6u8l561nz/oGrNEP0aP0Q=;
	h=To:Subject:From:Message-Id:Date; b=gyPk8kvrzFUohsma0Z23MfvxoGDOyC2m0s90i9NVOvBZUtkpcU1zW+gV0hXTLEWeH0tVE1phn0Fnk8iCZf8OeLht+oY9aqOxXyy8P+WBlK+rwXgyd3Sk2F9mnvrxepTjtBox2vs5cpyMu6qQ369wsI6bOeEp/yA5VMmjhPEIlpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXwl/x4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXwl/x4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2874C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756816793;
	bh=UcjofFljNQVTABZf6vj1LX6u8l561nz/oGrNEP0aP0Q=;
	h=To:Subject:From:Date:From;
	b=fXwl/x4wXRCYbjAVT26oxe/dTlY6B/F7T8/ih2J8pKrWhGmz3/7LmwZ3PIAZhNyYM
	 cis9O237K8Kg5rgCQJjIPQhVStNGii164axce0vbOkKa0iPxE78bn2sIA5SCuAJr01
	 wadRjVkiT5o4VxWx61joBdk2FO0D6WAs+t53wZiXZnyMpnES7GClSDfGyrBHuxcGRL
	 5TCQ7sSbBVhaL/ggvLGsI17IadeGng0mynGMVPX2yepDgrRd/xPMb/0ZZHDHg0MFF6
	 ATH7vY+ZMfWB1NjQVtFb6dTT6iFf2RB0HGkfjnyaux7qhOi4Uw27GsypHTVkO3qdkl
	 /57FY4hTKQICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E811CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681679357.26970.5551629405738906340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f28b808cb6135b67ff64e2dd20c7d007e37fb8b203a138821379aa8b966f0b
Date: Tue, 02 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756816793
