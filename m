Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B579488214
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790339434; cv=none; b=mtCsatXYNMewq1HoUx072wfC/lpLiIVnC0VIvFHPltiiLdqHx/GK86oE4y0ryA4Yu02nb7zM1xonsdiU/I7eY6ieD2fB/YACDfJewLlsx5W4eHnN3/OlHtJEv91ljSPL4WpdujBEjNDXpcNzwE2uaSBIqL2s34C3URcyDr6L/8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790339434; c=relaxed/simple;
	bh=FCzGiZc2n3ilxzsOznTmI7uewwmbWwHhgWjHJyqYNQo=;
	h=To:Subject:From:Message-Id:Date; b=er7s6zh/YD2N4aVAnaToPdF8eG0D9WEAdcGrwRdzxkAw/eYn+w0PeG0sosMcpABXOHmkkMkyu37F2u96x5HVJ2yDkIMeLYER0dYwCWlvuurbHacd1W0wplHaJ6PKwC5epsav83jHBJXaDX4XnhqHLlXxEYhZz7C/3jBGfRfi0o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7edCsTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7edCsTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDF1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790339433;
	bh=FCzGiZc2n3ilxzsOznTmI7uewwmbWwHhgWjHJyqYNQo=;
	h=To:Subject:From:Date:From;
	b=R7edCsTDUThVnltGjx62oL4tsQZ7ikgLVmznLNgaHolS45bX46Z3tXyN0oe613Iq7
	 6SeeqI9G7zrSZFHMMsiRUwTUqoySAHGRU9ipmYE0EJtM9GilIIkhMnUK3efcZalDUO
	 o3DW0Gv2rHJKB9E8XuySZczADcIdc4gKzz8AywVByYkrIR1kuYfaXyjgTc876ciZIi
	 aemV4BW+0xjYofDnkkXeX5WVhyLUaxVfArG2OBFQL/wXe521Xag+ygf0zq0Ni1zaqT
	 fhLgxIKgL4wq44B18j4VHc4oE7ZPOfEeRh2/KS74eFsFIfsPLsO0+eO7SYCHYAlyXW
	 JVnrl+vWJep0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F3C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033943369.17407.1995922764927377445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97d97348dcb6cd74243ea69e4fa7fce2d9e3e70020bbd87d0c98954aa1f1a32
Date: Fri, 25 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790339433
