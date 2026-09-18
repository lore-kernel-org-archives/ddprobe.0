Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A787F49D5BA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789743036; cv=none; b=U4lRLAxif/gh1rr7JoshXDPSAAgPxqu28S4qF/k1SvfySipwnwGoAi9QIcyRGFqqZulGD3AFyT526VTdXjZ0k4D1k66slJitpZGU5n3IHf3dusiax0VEp9E2siv4FCEig7vxqT/jJ2G6WUhl/4PpVL9ID9ld/w2Dl1ERIxVri4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789743036; c=relaxed/simple;
	bh=m3ja+7/ZlCHQiT4LvIVg8ZW5pokP1qc+A35NAuARvv0=;
	h=To:Subject:From:Message-Id:Date; b=NCZ/o4ND92tTz3suDv0GphohGDNu0ZtmPLkiNN9M/h2vGZzjXRLqjf97NHMFnL5vm0tYr5D+wxlqiXqk3w1/ITIbkqpO7l/ab2S39wHJckGxyp7t/s7jXLbfi1Zs8Ts1B4AGVzRfOYIvSfN5xFRZKoGys2nUFcshWwrVqUm5Bwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJDv5s5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJDv5s5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE391C4DDF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789743033;
	bh=m3ja+7/ZlCHQiT4LvIVg8ZW5pokP1qc+A35NAuARvv0=;
	h=To:Subject:From:Date:From;
	b=SJDv5s5dkCK4t/FLjgkpOstbdepnTmpkuBG7gNt76rnGjwujmgN09Yep9ur4rfu3n
	 4TpPbJ7cZKWGhde9bfbCokBk94oxIrJbNJAihcBr1VHyVk92ZR8wKr87gipA+cNgwl
	 CyAgLKsGmP2TGrZZrpFGQJnt5vAaNdNMAKPO6b0ULVKFR4WR5jeV6Sss8BIx4OAMYE
	 Z/KgadqclpDhLCKt6gctHBI2amLijn6A7gd0Y+AbdZ3MxEN2ugHcAs6Pyy5qw7I1Nk
	 gNcg/NHEfyLbE4QzrNiM+5ylK1aKkVjLwqQNROv+nbdol4Q01WnC7G4Y1MTXP7IK9R
	 rfrexCKFl+3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F6C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974303369.28877.425297429487348716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef31f567893c5b33f5a104cc5c781f9ce1f960b44d291d6aa1c11ab90ed0d93
Date: Fri, 18 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789743033
