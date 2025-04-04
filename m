Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2FA15382E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743725994; cv=none; b=ix+lumbWQhioRr4fyKVAnnrC39B9TM4rWiywuhUOH37xF6i3dHvba3qtGIPzqmbTGNstJ1mP2WocgKfhIMfm7GTHF9mARhj5Yqvr6I1qlLstRCRna+AMgQWWlK90GFxbliYntAW0MTDf6OrO08bbjvHq9pFSPli3wYh0vqn3eaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743725994; c=relaxed/simple;
	bh=/dK4X8GZfdXGoZCIHq1n1MqxC1OgKrvrYU5vzf9C0vo=;
	h=To:Subject:From:Message-Id:Date; b=qcjHBtXCCTLd07F8/wFonHPE9p+UzLqVJJRK+934s+ndM+Ph1d0q8qeRGkYRYccW0pPPzZGGgAucUWVKeSZu5eJjGOTkOed+rXKVW2HkBtQkR2ZEg6J75z3bMIStOG2PoKP600SDDzZ183Z8DcwWKOjeO/gTtaD/V5dGmIfi4pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGmGNEZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGmGNEZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8240C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743725993;
	bh=/dK4X8GZfdXGoZCIHq1n1MqxC1OgKrvrYU5vzf9C0vo=;
	h=To:Subject:From:Date:From;
	b=eGmGNEZfCQXUjdCBV9rFywOcWnuS2pUegPlLMceHp0oK9167oNzBcq027o8/ffPn8
	 s/KEL5Swdh+i8wpjqpZ4TVQQeG7HfQNWAsqDUYQmqh3BmQ5OTjl6L6p05aZPWKwOmD
	 SSR6IuF5mjnxKX39Pj7KQhGOPi6Qw7UAIoxKslylTgO7zsdFhxV+ZaBQJLrEA/eN4g
	 nrZ2GOoG5KI6SDZ/3jW+hJDRLXlEjxkQLB5skNhBeYgeRifmUzN59QFfzcL30JMqdm
	 JXTtsmt0QKnZy5AsR5/HfT4YlFQ2pEarjfWGMvwimuct5w547r4W37ablgF+VUDOjE
	 K7jb6mkvVnA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06CAC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372599364.32721.11190495473715098580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be28c6fd8669e221f515505a522129cc358ab9171df6af19c2c63584c0d588d
Date: Fri, 04 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743725993
