Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934A31A6829
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786563034; cv=none; b=ojO4qOrzQHkvAvx2dpHUbDyM2y4lbXLfZ4SKiDHRwntAZwpCrNGgyW3g6zGctkkbc0GSiqZ/jYK/tAzad73/fHsiW+5fPZN8sU3EJdjJBy4qO2Ngq53NHpdzG7okyP81dAPyjRykuz6S2CjsRr0RORtIs8GefMKaSxJUoFK5Ex0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786563034; c=relaxed/simple;
	bh=Nc8pisvZQZEPKveXH+RQm8Wgav8ggT1VwhfyprdAWG4=;
	h=To:Subject:From:Message-Id:Date; b=lIEqKZ4YZgnky9IGPbxQS6v8PRjfZ8RVA5io0sid1sq2NxxyWQGuU1XqvVr8nMgGIlHaN5TJHsWITgTZv3LMjiSGLxL3rzkZ9t/Si0buA0xVds//TrFgc4AVOQ0VbdQESzGM7ogRFzxHko7ozh16WvIxbLIV0EHfrAEeZJuWl9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odyiKp2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odyiKp2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14ECC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786563033;
	bh=Nc8pisvZQZEPKveXH+RQm8Wgav8ggT1VwhfyprdAWG4=;
	h=To:Subject:From:Date:From;
	b=odyiKp2jVHji7VfGvtjv5Y4knPx5vAXbhxL1N3+UWP7tFHofoFL4KlcAzF/oiFRK9
	 X7HVP+b6NTzqMqP8iOaUdaoIpsyxWG7uBG6mBsre2jX1fggjm7wQU7tfMWUfk5ciGC
	 70s71OIoolTVSackphOvNjBi6Q+6JU0E/tFtHvh+u0I0pRGqU9bjhjjwWLBTifJg4b
	 gdIIX2ir6R19vymvApqHNgl/A2r7kPwlW+dOK3rBqOugSqMivZ+ZN7SEVvn6SRRukp
	 oJ2m60V+rHRnDJwszHbrLKq+E+C7ykVaL7AESTZYuaf2RTx1IiqPAOEAAiL6v11KBC
	 hMj0DYFU9dY9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CE8C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656303368.22583.6628801597793874720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff669d9f7e0658f7a9fc58f6136a61f8488494ae325b5ad9132a7961d33cedcc
Date: Wed, 12 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786563033
