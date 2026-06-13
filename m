Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5142E3822A9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781344594; cv=none; b=YbEAqR62rwCTjD6ijgAEKg0V05CFYu5gG4p67l6CJ+yn5/6WAq3FraOSxndCdBwuTmglOfxzZFzoCktkunw/dBgYlhwPzcnMmWmfqnqX7mR77JzhLWC7YtiENXCho5KAUff+ofxpzDKtJrRGUMo11qo9XOY2Bo6ifxpUACLqIvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781344594; c=relaxed/simple;
	bh=CKaXgNXGHYtiASLADaHKmhKSZlisI4qgFjYrgBlTP+4=;
	h=To:Subject:From:Message-Id:Date; b=QDuw+Loco2pmr7jqx0AuRITdwLo2xkvlM3CbIPB61yZPjBJaImJgxrIIG44X/PsDi8WpmgXfi1X3K8jU+6ahgetxMtjSUmPWsVbQK/0JiFjxWrrghYG2Bpn6HlYqxilCcrpzXtXRAxERFezWnJUfFAy4frqh2sYG7LeqIPIhr8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVfw9RQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVfw9RQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5DDC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781344593;
	bh=CKaXgNXGHYtiASLADaHKmhKSZlisI4qgFjYrgBlTP+4=;
	h=To:Subject:From:Date:From;
	b=NVfw9RQwerHQ4lbas4lJXimA79jNKanCNkOdle6zT96qg2VpOP1t9x09hgavXXp87
	 7bNfRZloQ9Ep4fqG61GYLUCS+qScl9pz7HgGdncZmQ5PrN0TjwnnyuT2vMrjeiHysm
	 ITMxzyWt+Sj43+M9mgsudIvosh5V+VyOjNxaXKJ0CGD7Uwcc5WVyobrQpHVWFF6PFq
	 5ePhydKG0KNW6ntA7WE8OOY/CE+z0irX2cYK7XU5IvTb0zCWbF9ZDvPlWo1TUvc2JF
	 rgC/D7c9Pnn+ErJ+F5lS/qcRW7mh+5R+XbdyfIJuIIkuhtztrTxjYWNlsH6Shn1qRa
	 5IhrCgSVG825w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC2ECD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134459368.7138.16626142263529401035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d77016af1fe22a8efd5ca2fd54884715e11d9218066265c7ce9f80217d3575
Date: Sat, 13 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781344593
