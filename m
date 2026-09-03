Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434FE1EE7B7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788403834; cv=none; b=KVCVIhupDPojKcAgyAzxQj0b2hkPAz6iasA4lhI9L3bh3kHsiqqAjnEElsSjNlETvlN6bSjCa1GnZ88FvTMJokobtAqg/0lNhyl1NQd1uab7vHG4J7k5jb+90zc4lArpKvt5FuC0Zw1IyeJL9FWmcTwkY6jVT2OvuLjXUnU7PvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788403834; c=relaxed/simple;
	bh=qPp8JV4UROKVurQmfQrJ9/MVbMld6njrbtavNeVNzY0=;
	h=To:Subject:From:Message-Id:Date; b=jpwdWpgF0JX7YHhyMtUDyOz2JOKNCWE0HJumaN+fqoGM88j2BKP+AkmhDNSPCuJWMYNX6BzFx/PPUw68nkfE5ZjM0nz9yr6+b9noAack3BQ5ns3ph/HzQTbJDr8I/fO8t3JrRC8aKZ7C50G9wdnASfiwWGB3+e2oLlGx56QWly4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZWGk8EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZWGk8EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDCEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788403833;
	bh=qPp8JV4UROKVurQmfQrJ9/MVbMld6njrbtavNeVNzY0=;
	h=To:Subject:From:Date:From;
	b=PZWGk8ECcYmCJ6CtZLuC+ZIQ9w1i7CDLzaJ60NV2Qn1X8aFOkvThIaBO8wPxNOHQ+
	 RJVrjdJ8iXPg+GMEfjR49LSWJNFBvtGm0g+itJi9qH5/AcCbeuFtAOcebLqVtrODqN
	 rqmmgFNKB/8fG0YVWNLodwCS2UXJKay8/kSaVKaN4K5na0SF/1zLPCZTiOskpeXMuD
	 0zcEtQCETOFwuczETYMLxHFVVSxqj7qXkyvpb7JjB3QXes5Ddo2vMDI0AjI4zr/6Xy
	 WiAHO/FctjhYLgQ+6IEZ4J4HbZPCXggYWmEWfseKX7OmnbrMV/pzBdrCE7FLVBXYae
	 Mt5OFeNM0bXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB8C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840383368.21195.15457789584888466727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed768cdf38ab9ddd7d48791f2e5c5e2007f2cc1738fa1973eba2b24a0e7b52f2
Date: Thu, 03 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788403833
