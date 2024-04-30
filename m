Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECFC172BB2
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714483343; cv=none; b=MIb8B3CPoT6JeUghl0hksa63b2yuhSlh45P0fdcvYmJR3NhDKR9trtBIh8goyOHzrB9MMyxbsisaeQl3OBbNVSM8AcrAWStdD9kCLAn6XJsgnVEcYzQDMZd3rgi8o3m7OsOFsvGXnOm9Vos2EhSBZXZQbra3S/bBzFozXJqqRl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714483343; c=relaxed/simple;
	bh=e5MploOg/sNciHPAmvkBgIjx3iABznxSfKoP1rZWw9k=;
	h=To:Subject:From:Message-Id:Date; b=bxYlHl+cZRUOOf5ESJ0brxHrq6jbi8eVOtk65iZ8tF9IKZTw5bfx5vvgdDriTlMgkQ9fuMEwizI++8QsQES8CB0t/IY/PkwjqqDdb3/iGUat7PzRt0W/0WdFW4Eph0Tf7g96l6jFjpDwnli4zVli46vr01lKrp0zBy/Xwzuo3Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSSHr0R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSSHr0R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D06C4AF19
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714483342;
	bh=e5MploOg/sNciHPAmvkBgIjx3iABznxSfKoP1rZWw9k=;
	h=To:Subject:From:Date:From;
	b=VSSHr0R/D/rBIL/GbEFD6c8AJE3iVO/MgWxMgYc4pswVonqgRp/Deqjm39AlLtl5b
	 qcW1IVyr0mTkciT8j7nUfwMlfTArgTsCzawayCvhurM6wRoHb0acwHMvwamrbZVfTh
	 0dq99lCl+orExPgGOb24kVjLqJZN8zAmzHyniHHWm+LEYUZ/P+P4XsG6oANoMX833D
	 gvuoWdRYH7L1udKMa6dZjN1mvwCDgQdEryb65wVKtLYgdVAsay1y3YM1l6ZE0ZVDuj
	 vj5H6R3aU7MBpWEPJxKhCLF6q0uPB4/ECzCWrmlWb+O0Wm8Q/O0bTTOvXWUhxRzaSK
	 2QmkUkvOc7w8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D82C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448334278.11595.17477055339931316659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f519a823bae1784ad3bb758fc99b3130ede05b25a21e9e65a7282ac2940a47
Date: Tue, 30 Apr 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714483342
