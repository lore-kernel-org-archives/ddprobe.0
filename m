Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B3415442C
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741454334; cv=none; b=unV4ew8SVmEooGGSZxjfks5HO0LPqZcVsYxG0XMjNZ7qsnUyLf1V3cInl8QedLkJbD2s5U5LkyIYl+5VpbdoYUx5710CYkXRAdcY9UyOXNhiab6HHKhajeUVtn5H61TKrnamM5jSBjs7sje8OVyNrGSoGegBcxRKAd+6AslOv9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741454334; c=relaxed/simple;
	bh=BCaLrRmiup0l6bx4eBnSp8JTxncAJoPOW71V9dM98OQ=;
	h=To:Subject:From:Message-Id:Date; b=aoMqPV4GtwLZSNX8z8DxqpizF2FUkhmJQogCBEwof8sCxhAu2SFwLnVrMOwD1oUIiNun7yLgF3FvN4IKIPUHoeiLZewOHaO/lwrRo1BNztliMNP0Q/A3/gXtkXza0wh6iB2y9WONBIsese4O0XbJUd4fzzgHuQOKUzzE15W2vbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYvKQf6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYvKQf6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF68AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741454333;
	bh=BCaLrRmiup0l6bx4eBnSp8JTxncAJoPOW71V9dM98OQ=;
	h=To:Subject:From:Date:From;
	b=NYvKQf6fzIWIkqQScAOJXnBeFmZiGqXRTynm5d9Asb3JNn+hDhYgDI8aUh9f4ljcu
	 6+26TyO0V2WCtMxmcVWlKp50+Syu63qfkEka/Pv4a2g8jIXzfNUOWd8qKfYzrNhBDu
	 twlqCWatYmqIEOhg0X/Chcu0Eq4uJP3XDNB300L6YVEExcewTprU7QdWWG0Y17Ii8Y
	 dC76yG4Mniphn67Gz0EZll/RChPTdSiXZnympm+/AWeaPW2s+f+PYyUuRXwJyxZuvM
	 KuQhVUb28K4bF4YnUmrK6jMBkG5szA6gqKjGOV6m5R063Y48mDx3q2DskVQcpLUoem
	 EusO9s0qU4d4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A959C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145433361.27015.12796753662954546834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc1f17fda89ee62ae9cad9db860757d2d16c1850e5c5540fad5fd5373da2118
Date: Sat, 08 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741454333
