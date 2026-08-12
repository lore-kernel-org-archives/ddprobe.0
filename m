Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545FB2931EB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786539634; cv=none; b=gvw0PjEWwhYjY9GWX7vF9Zwm+rKKz+hEpBPGO+W0pv1Vhldjkh0othivAdOJkla4yJfhkCQLySKdb7OVapFG042I/StGN4GNjJTn7NTz+VohhhR/B19aoaOwuvyP7XZHGk1fE3PvZJdvQV0GOEFhYvhCjC5zZvaEp2LV0fZr+Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786539634; c=relaxed/simple;
	bh=oLLgaDBFp1aAyNZ8gZ3uHkzgnFiSam9OS8xL90nhC2I=;
	h=To:Subject:From:Message-Id:Date; b=RD6aS5p0wnJLHauGsbfediccJ0RkFkeYvc6McZ85yjPTUYBq8NVbm6P4f+Zlsygqrgv94hcl2iYRv6zenD9XBBHgBStSQDZHZ2D7UFdE7XV6so7Ly/5gZl3LwfiWrU0wUm7yrjQJAZflJWwqkWGqgHIuYl78X/bZtVmv6xXc5MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/QQ1Cyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/QQ1Cyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD69FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786539633;
	bh=oLLgaDBFp1aAyNZ8gZ3uHkzgnFiSam9OS8xL90nhC2I=;
	h=To:Subject:From:Date:From;
	b=l/QQ1Cyq/Al1PmIFdMoVNggMEVkA8Z8V6XcnGi5gSGjCyU/tkDG6vHz+sWoiq0kvt
	 2qiWSvtsj72RV+EBJ3AyWOUgGDgHcwrDKaD0aVb7QZHYk0hzw7U8ixVrafdchxNqoI
	 C5VY28fX9q0FGRItvQi3bUWQntWYOioG+JZ85XrFZglorXpu3rYsQTaRQfX1lQR03U
	 Xi6QYTtaZYR1rvZN2h43oN6KBeG0S/jEXpBVuwvrORa0vDDoh4WNWJ872S29VxjUyt
	 sMBU+NuVXsVvcljPL/If/wxu2THwqD6miK7KQ4vV3cB7/nGAb/1/O56x5hbbV4GUWH
	 cf5vhQEF/Xc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96FCC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653963368.14965.4542546567722201164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25cb55f94c7c76ee75bbd3e452c591385372c794667c857a0b1e1e21a6d9b69
Date: Wed, 12 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786539633
