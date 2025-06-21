Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3287F3596B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750478394; cv=none; b=VfGCZ+FHBO8iYZpMBUQtQcUgYZrnQnk0D6df1NzobQzoqDl+pEmm7b515q5eR078NW3zq0pxjOO/qmYnMpuxj79y/FP7Y2E1b/fnaw4clt5x9AC6+oPg0X2UCerAIhOAkGcSVB/EMbJowM+mIajZal/VFH584TIYeWNhVTl2vfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750478394; c=relaxed/simple;
	bh=eTaY7Twtxgel5Elid/c7UEIWW3a0HX/Jbb4DNmKei7Q=;
	h=To:Subject:From:Message-Id:Date; b=YHiYjEkm+6CxjU/tWdKrbIXo8M8xKTfFpPKfTV0Z/HA8tPvbiivgiUfpBPE7o0cijmrsAGzd9H9lGv7lIck4U7PKm/kCzSb+rpzFi9ESkZUczxQwWGn9d1H5fXoyBQe3NO4u/Iae0e51edkym1HYKmc78c5IAvfiRjlZUYEDdfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd7Br7sZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd7Br7sZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750478393;
	bh=eTaY7Twtxgel5Elid/c7UEIWW3a0HX/Jbb4DNmKei7Q=;
	h=To:Subject:From:Date:From;
	b=Sd7Br7sZ/T8JWdSRlVRDm6hoN65fFb5K/z+7atW8o1OFQluYhOLFg90n/ef9hOXwd
	 jva7ab5dPwlkXMdcdJbE/b8gmTLQ/wYTviksI3zS41WWzOzaTRQDpuumx5coZRnKjS
	 Cgp1YYoSvMo25FPF8TnLb/sGxfvZfQMzf5YDfU8wvWPWSzx47/udunMmU33lqkAsy/
	 V/mh0o7bnWEIc76f9C67DUmsw3SEXsk/ZD4jB+YIlYSTPkCJRfgKjcZVwj2LDF8buu
	 IXkxzQ6d3v21j/Wl0q0CD9w1uqCjQMXHknmVmusA6es4J0DUa42MGj7trF6FhjlItU
	 RPyS2C7Pg+sRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEEC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047839357.28904.16359196671899015518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b60a026d615141466385cde0e57e604b1233522198c1909e1464602508d9f3b
Date: Sat, 21 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750478393
