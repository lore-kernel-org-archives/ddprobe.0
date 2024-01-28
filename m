Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09165DF55
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706434697; cv=none; b=MS9HzvarJaE5IYj8sfCdI9oZDAqMlMB9LbkP9CPxmmw6968wUJrcA+MYvmFrJ4KRkRRAB2zJM61GzUkrK+8N25dBh7nbZghuymDUELL/4Gvom7NGKqNqOjQw1u3Ien6nokav0yRrusXg7sejGGInr/9YMigeDHhIW3wTUx+l66E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706434697; c=relaxed/simple;
	bh=+PL//GaxDHHwKbzyBEUXpUiYFSe++t54J2UZcqOmhJo=;
	h=To:Subject:From:Message-Id:Date; b=TAaNLeU9ULv8xiZ85+WAHKDXezJjsWYVuYjy8ZDWxP3D6tDKwRlsD45/35Egl8Jf/n6xgKxhSr2ms7okQGWzG/8Pu4kGi+KiHHniFTaJWFqqoe5dLOCub0nhi69WY0E/pN6NNpcVrKkMT1p3qsfS3I8NqbFM2NDdqSA+S4rnWVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt6sQBdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kt6sQBdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5A1C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706434696;
	bh=+PL//GaxDHHwKbzyBEUXpUiYFSe++t54J2UZcqOmhJo=;
	h=To:Subject:From:Date:From;
	b=Kt6sQBdEZ9PRp4YUeyz07nsg9lc15wLcmOgwem0PAghwzl74CGR9cgP2QxXb4YkZk
	 DZXG9/4Vb5M3nJy4gwHVE3wSwGIDooKX17NBVtTE4v0CENc4P2GVmevTn/sa6NILKd
	 lsJ2CbKQPc1oAl64PhtW3zQ4qrKEzIpPxr9RpAuKvk4BX5s88j/zOpR9j0slWXdUvN
	 fx1GYvrV2s57OXnpHK1nrSMRkZsU5HvqYESAbB11rNWH6INMypm54Y5HWirnDBoWmA
	 2zcUxM8em0hvvycjxnh0SEbOU6bi6L5OwWaQwtzDh2ICZKURMzdMjuEk4AS2d2i+HI
	 sZCH98qoVBZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6189EC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643469638.30265.3678127095138935322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee45aaeef3218f08df34f0ea8f8f19d1f99e3576459cc6fceb0ef6795ad60a01
Date: Sun, 28 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706434696
