Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346C612F5A5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756002594; cv=none; b=E+o7nFiN0osUJXFzvf/9n+wlDAbVMazUElSiyqEBrgugGg2ZWDow7fHPPwtOAGY7HgULVHDPrzMLW8MR+TNRjAvuuOoVZsuB8lqq5PslBCYq70qNr2tTgxg9nljbBE2FA/wLzHkgWwhKLKio787SQ59vmIZ/c6PDlTMm3jJuq7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756002594; c=relaxed/simple;
	bh=FqmOZ+k+NTpjKB71W8lzK0hoEexc/KugxbLZe61Wmt4=;
	h=To:Subject:From:Message-Id:Date; b=l3Ss7C+wVFBv8qsDDROmuUaiJvLYZasP6WE4HIw97u1fH4qPXCKh8wjBz4jjNIej/i/e8RQwMRllBei6J3ggz6Ygf1tKA035QXn6UDgXVYgE7B/UaiTXWDT0fk1WmoM+vr2SLHFVX9TYm2Y9QEXKndxAcBnvk5DDmKFHTeAyWrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj7cofxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj7cofxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3974C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756002593;
	bh=FqmOZ+k+NTpjKB71W8lzK0hoEexc/KugxbLZe61Wmt4=;
	h=To:Subject:From:Date:From;
	b=bj7cofxaUyNyY54zrUpcBWdhvvn+wnFNerYtlGgWCpz/OTlrmjqkKe01Z5QaPsYS5
	 yAMos9nzNqyvMvZjAPndzwdErUCt4DILRiv4968bCO5JPos5bZMhlF6rvhMZWCPgZl
	 uJGIo3DTH6+t6EoWGSq9vwnIYdow2XOzI0aTcmqQ2B3D/zSlA59Eu/IiWyI48iuIyB
	 5a/zb+gUdtSOMlX7MaI0I3gNkQfsw2xELAB404v1/DTKUXnSk5JAcKx1jllTBL+A4O
	 crawtPVzuabwzgl2hWYnHB3LPQu3ZrcX175ZaXtnScA912kkrXODoR+3gBSQMkTwCO
	 lWIKJdTErdk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EF7CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600259360.27184.10136222883835173917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68527197527f4d98364dc6a7d8c0ac5550e65b0ebe0b22d931c64c08623c04dc
Date: Sun, 24 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756002593
