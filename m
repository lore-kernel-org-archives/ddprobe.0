Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA01184F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736060754; cv=none; b=FX0cEGi2lAcGcbxXp9YmTY5rlW2KdmbwSteNL+uZPpWZSrwwp8SCdkyMBNQRFDepSdD0dosqOhf7yfAW0kPDWANBasCYtMg65JZAkUC9czgQebVzOb7rKLH9x6wFnNoc2aL7X0h/atGd46JdgffUCTl33LW9+QkqAHSz5LL5ehs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736060754; c=relaxed/simple;
	bh=XHE1iE10N6re8hvy8pYRUy8GX0iQEk4Br8lIM5pm8F4=;
	h=To:Subject:From:Message-Id:Date; b=eM+LsRMHh/VPGHwrdvJ3j5yJ/m2TxcR7nYyfytvdUvmdHDGWV/Gf7F+hI0b1in3xPn/7SHcbHHIFdExvVBn2BJXwvhUIwzD1057EJNVBQ5Ej5lj7mXKhlB3nmLYAWBlBsovAZJcxbFSEi+seqSnBh9x+x4PXeO7GINhNQOW6RLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CObGAo/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CObGAo/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F7C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736060753;
	bh=XHE1iE10N6re8hvy8pYRUy8GX0iQEk4Br8lIM5pm8F4=;
	h=To:Subject:From:Date:From;
	b=CObGAo/wMOPwzcY9G+L/ODQW1D3IX4EIp6DmdT8hPsSGfyE+vkK3QW87sE/hmwaN/
	 n9TnfepQyIXSNT3yz+HDAVJna1gmbJ/T+Kn54vOSKQjVZTTdOoD1G65o1v4a9rECQV
	 0MEN3bUxNHlL2UTBgPymttNfBBcLG+Ypksyld72WNAS2ymFZR5iakib9pyj3scrjO3
	 Yvos6CtN+3lt3Zca3FxCDNmeEwiCAmAoaHZUJLwxH9Q51yrdhObJ4g9Fl+m8FDkmmu
	 Wo3edTbVcUL0tW1am4/zlnhyw+8A4lybhq4n3xUjJzIEVWdgsof8+twiRS025fWJkS
	 vbKXgF+7ATcxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4EE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606075359.3114.10040958825381621629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe207aef1b5017b6f16872cddc5c2ec1397de6db6bec497b2d77af02f3aa6b8
Date: Sun, 05 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736060753
