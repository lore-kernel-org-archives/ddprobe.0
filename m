Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA92EA73F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912794; cv=none; b=oZYIPc3aAaVa2RvMj4iHaHeszkqmaOMEM1j7pmRkHW3SM5oYqOFPTTa9+4d2DDmu5tl8MhmuFJJMCSh2wJH8GZ5NaNznvrguFtXGgef6yttMze3QN84i3YfkgL6//lv95BQBle128DpqvvxN3y/ffPzluj+JfhZAlOyT2CiBdEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912794; c=relaxed/simple;
	bh=jUT709XFmMOPrz+Y1ebdsjZAffk7EfcZJwO7J822W9I=;
	h=To:Subject:From:Message-Id:Date; b=LUpjW/0NX+rOJgPCamtkgH+KJAyo4wD1Q1+ymFhU9NmzNrFBrw+Nz+pUPjumDE1uG0s7wMJkcZX+is+GaUEwqEtg63WvYk8bB9/Ss+DuyQ4R/8RcF5jeAC+Yce5wCsjage/ELCOgtA9rm3KjCdBoBWmryyPau9bPymCscRCMEmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbXyY3Ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbXyY3Ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32FBC4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759912793;
	bh=jUT709XFmMOPrz+Y1ebdsjZAffk7EfcZJwO7J822W9I=;
	h=To:Subject:From:Date:From;
	b=GbXyY3EvkHkShFRvbhSk5oaA1xpcKjOnxY4KJuAhDlEIJqxmB0WsKbG86/bJZcOHM
	 EjJMf59nYAl795m2bb8TgawjWTKAgeHS+JSoiALy5Sjr3PLQVpGd/yihbupx8AEojT
	 spInWCYf6gs9kNZi7LOdGYnVulp7ycr4ftVg5yzCjNgXWvWH+dgk6sgdA1gSJ7m0a2
	 51qW6q1slWkXTMcT6jU0V6qA2yv1wCHTcwQvQm61rXCYQTL/Gko1UuNAVjDqxEVVLa
	 n2fcRZx0y+9+lph1SVcnjyQ09b/N2vZXnqaIAYaweW8cx8zR4PS2Lbs6FmiKfPnkir
	 lxv1hiFcXKwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD9CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991279358.14265.6050394668104763333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3abd8d81fdb2b38b1ed7a999b6ff6a2b2e7a32c08911341eac2075ed7311b0
Date: Wed, 08 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759912793
