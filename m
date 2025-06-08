Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAC18035
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749365394; cv=none; b=oGS4KVLNOmLwUkhaBGeDEiPKkybCIYRl6DZZ5DZyrlDctdQQYGNI+ummh/+EzOojZPIJJ+o61rl8VzcJAX27YOf6UNvozxoqeY5nUIKvMMdKMmKdylg7jNkxxkhPjn0mjk/lw8EEC8MgHImhixm7e8Bke+sUe+vyUn0pyFhRAs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749365394; c=relaxed/simple;
	bh=eqBmoQR0sRC7/Ceb81qbBTjq02vb9Bdq9s18lvhz7n8=;
	h=To:Subject:From:Message-Id:Date; b=ixx/htEYKjb7r3WbMRlMXX4eL3cdbXbO7so6Z4X4BzfLSPkvsnHhSZg6YaJMpw5mxGk/ix0ZjOED2SBd8oeCaYkynDVijLBWUfStssgz40Rn0WqtxEk2YM70Wbie9Xkzk/muKJfmN8p/xAqOzrjVuAOzCvo4m+CI1wQXkA2AhtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOZMa6jD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOZMa6jD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D90C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749365393;
	bh=eqBmoQR0sRC7/Ceb81qbBTjq02vb9Bdq9s18lvhz7n8=;
	h=To:Subject:From:Date:From;
	b=XOZMa6jDHDeTi1xXCKxnZIDB7J1ZHiuoKOGmsdZ2j8YwlwvD3FVA/f7td0XCNI1JB
	 vgknP0Kp4Q5goa6eKyOpDvwE4UFRZ6kX9zcFQOvpkWvxGzKc0XkzA19f38I1dNGkdx
	 FdvAmPzCdFgFaCOB8GS79QhinSDdMW4tMvA/SIpNCXKo4XmP0cLhg57BnnXzpXUKVS
	 V7mlrfEquC+USLKbEtOVSlI+U3rA+aUgyYVwVB57LsFivmQ4NUI7Vbxd6DEme+2WMe
	 fRsmL9HIEBsrrlEE0TcTIEln/Qs9WVVbLrNQbVXmKXfw6nqaX7oLYJl5bP50vbQI3P
	 XI00AhddWA7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B8C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936539357.21452.1013320068153347658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105937ff0395a426c78cd09cd83e9a4691968ee9f6a1fa78196b7450e737ea0e
Date: Sun, 08 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749365393
