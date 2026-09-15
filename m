Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF41480979
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789480234; cv=none; b=TBKtVLJy8kuOLmNtvy7CM3F/EDGgYb9oXkp4xmdEyPgQ/AF7QDL7LF9eppwzZQ8U6iCJo1vmeryD6MKmPFpZm9Wk6TZPSCJfvPSYeFZ0Bzw0w7zbJ149BKpEYrri1K+cEAhbHG5AGgfjq6mimllnclVeIyK8AwdPGXNazoLgmt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789480234; c=relaxed/simple;
	bh=Bofz6IwrQYd8q6vzMQe5bUB8ioFCGBZonSdd+WqbH4A=;
	h=To:Subject:From:Message-Id:Date; b=LDKWaES7LpcDjXC4HhwmpbL9Hn+0ejVzgD1Y7wpxdLK03+WyVpqZGnyP8wj/GihvP5i4et3AZ3QXrh7ms33Ibye1euXLATG3PC+Eb804vzFB7AWhCXZ5kOmXFcNOysUp6k1PH4q55qlyl7kk3zOUhCGqd216BP7ziJm4x+9FmLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+yhXYax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+yhXYax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD22FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789480233;
	bh=Bofz6IwrQYd8q6vzMQe5bUB8ioFCGBZonSdd+WqbH4A=;
	h=To:Subject:From:Date:From;
	b=A+yhXYaxJCok1kkkgiejxb5Cy3ejYGXKw/iCjbvx5PMzgycNZ6dO6XOOeiaXMEr0N
	 FguoQ+vhNG5S9RefBoJszzfdLKfOsxj5eJqsThP2NRaHXXs9dl5meL0nASxfeK4zgy
	 RB24oX7sUvEruU+JdnLNF+GMYn3oBlMcWwhv0QgWeXIpvBAmqY7wD1WGzHANCV35oI
	 jXjb4Dw42N7XIBaiONTDpxN4VCTK3XWmecOaH1/WHIDlkOd7qD0p9opFgC1fEdjeK5
	 VRzMKKeG1Ca8cs93luHGUxvTaTIGW7EmHd8wwHkmYBYhVU5X5JOmpa/7lQKymxdEMb
	 DpjpJ1pRPw2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10BC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948023368.24308.10019529087651916328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b902f8da733596ba2b76760b75ee9671c2b852173bacbc19543e594076d952
Date: Tue, 15 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789480233
