Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4891A18DB1A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746983994; cv=none; b=GuAqVZL1zg1o/vcpR7l7fMibXZnuBbN+hthOrCqUeKYdLA0jTgEv0fXr78P4CUjJJrw7k5eu/PxeylqjLmqM3UEdiwyYGG63M8xYIGwpJzN970ctFhUz6bgYMZL5TKN0yA0xLl6l48U4DQKdvgda5gWR6cQ1Itc6P3hqMMUbR0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746983994; c=relaxed/simple;
	bh=4T6gqUiy9CDNucOdXw/R+R183Hbi4P/u3ZL/u7dYKpI=;
	h=To:Subject:From:Message-Id:Date; b=GgRzzFAtwcfA7J/e7x9G+8LWRT5kD1ZU+sr1vJd6RIHz1uIrdqA6G9+gsSYp6tm+YtS/meev9rUljjs9dAxcz1vwwKt4O3a2/wMpAjKryYdGMrDD/99HtBzZ+cjqtmiBWiPmbHyLTrTAdd9CW3iWpkrNVaIYJkhbj9y+pBICZko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9JHTSeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9JHTSeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7280C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746983993;
	bh=4T6gqUiy9CDNucOdXw/R+R183Hbi4P/u3ZL/u7dYKpI=;
	h=To:Subject:From:Date:From;
	b=A9JHTSeXOsSZUwlY36fdHfBOxJgJDSvAjx/BUt9cfYPMnY82q9qGpdniebeaHAQPD
	 FnRL8WLFExgMSVNGSduWYAtuZILTh/ZvkBLz7FuBHFd6MZc/dGSWVnDXPZp4NBTn9/
	 LWGp9hDtxyZA6ZapROgWGYpHLbhEeZUb5odnngdLqgCxO3X61fSh27zdTwosliPjIK
	 VeN5uLdrANUDnwLjCRz7Uc/pIHqzrHTq1WHJLlRGh/wj5N49JH7Kuqh8hXBveTFTEk
	 is6Pr3H1JhZZvQNmipA/WqXgO3C0CQBW+ApQHDneJf0J1hMZ2rnRYpQGT2urwHX6Lo
	 3vgDenAdyx0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B97C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698399357.3993.3555235520456415843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70eb3039932ebf9e432b8c4f63ee7a66cde6400f972750d5218b4d5d1a2c219
Date: Sun, 11 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746983993
