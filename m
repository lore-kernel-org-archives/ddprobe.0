Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A18366
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746749394; cv=none; b=DtjwxMCmjsV7/1vTkjLA+Hy1mHD6vdLYGZikr1s7c80PJ+6oKsiNDqCBN9dLjaZv0bYk+/RZXjeulYBwp5WGBoJFsp1LhNqeXSkq7N4zYvGSZNxu8XIhEdcGyLa84Sp3ntU4Ae+hIMAzlHCFXWYE0a5vlxy5zyDag2QVymN0R68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746749394; c=relaxed/simple;
	bh=PyKzRbVcmvQbyB5w4wLqzpGHpRCz6fv/b6zzQ4xs/xk=;
	h=To:Subject:From:Message-Id:Date; b=iX3TkVOKzuuBl6/5lrslLlWaZMD6+cI9IhGBH8QMOWXpcVe7fet6ZfirjjTaH3cfQ3p8FJNQOHeyNAEtJ/32WRsRE14sBoJ7+IFRpnw92bQCAETeB6FA9SxwnMvRJu4CdaiYg1TAB+V+vbh9uG0Gbe70P/4ywsEs+DmVJLp6Dxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9qqog68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9qqog68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF7C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746749393;
	bh=PyKzRbVcmvQbyB5w4wLqzpGHpRCz6fv/b6zzQ4xs/xk=;
	h=To:Subject:From:Date:From;
	b=K9qqog686wZJoXeCOmz0jAcG0G8HAt405lVcvU97D/ADi2wITbSbYnVRMyK4cEN98
	 1cq+Ou8lZikL8f0UJOF5scENcwPZco1i1ne0rNtgklaGOubm7KUN7O94cqbNvwZmmZ
	 hLa2hiiJGAZljhKvL1ppHKxEsKhvXreR7PGhejsi7RvoGnB4Ifzbw9ne5ilQGfj/2z
	 hF0yPzScPCKBVH/CYlRvEL/wVz5HFnjeLVR/CExKhTdl73sIkz992ufJ6Sv1A3KL9d
	 0VHA3YL0ierJNVNtbBZTyQFuLzhT0y3rKrxVnsz/Qw20/2SD0jYMSv5+h8VbO4/rj9
	 H9wIVDsuOyWcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95090C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674939357.28410.6576821690614557643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4988d13948d653794869e8c59a87308f5a4adbad3cd2ccdf3ccd1c1f5ac856d9
Date: Fri, 09 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746749393
