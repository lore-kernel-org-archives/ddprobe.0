Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D534C8F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713662423; cv=none; b=PLYCmsI3qLAAJM5byF6krVrE+dfggFfALKUwC5XxXJ++tJhKwWFedrawiTWBWK3Uf05G10ZDbgMAH3PKKmCBQ00jhjIHC0rLoZOTQDI84zmyE04/Qc/RBkbDVwVK3sEScXqLQTqVvJS0XlxcOATmGOQKkSj2QvwfaD9xLyBKTGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713662423; c=relaxed/simple;
	bh=auvJYZuNJ9dVe3zLok48dsmouyqSIT0XLhv1tBDd2Fc=;
	h=To:Subject:From:Message-Id:Date; b=os8zgkLTPAzCmOS8sQ2T+hErovFCKuICOvrJ93BKAe3i62qUdsEWUis6ju1wCSeo6oAmvwdacttfJDEU7B+A+FNZXYm0bLlPjuoeXhPItYZ+NSmOVH0cEXOdPejoMQKj+4AO5sCculqVapTVkYrv6tDPOaA2YeRaJMwjieMOr10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R78zy277; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R78zy277"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA315C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713662423;
	bh=auvJYZuNJ9dVe3zLok48dsmouyqSIT0XLhv1tBDd2Fc=;
	h=To:Subject:From:Date:From;
	b=R78zy277HnqR3sVFu3LiWuPp7r20+hWGy9ENGqHc89NmyjTuUbpeOl/JTr0O9YnT5
	 7BoUBmWMv3N1s5Y+TOQRKlWvg7l1UsGBsldiriJl5BR9WLU6T0MCaAJtRRtYuFfGJn
	 n8yuHA6JJRr1uFgJ6NbNxt0lWWBgnBAT4nqCPhq+I7HkphEwRAVZoA1X8APvaAQNfQ
	 DFlJoF996rR83YL3H7V33UPmyxOSohSkYi+l6TKTg/5nF6xpeljbVN+SNfvdKfSSIN
	 YJvlCSp363yCLE3LX8UzQ21EpeEy4/9S6CNGKwHL2nzqbFQKAMUq8z/m47hG+tN+Lj
	 0JzOn98QdSS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0478C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366242281.14948.15310718332507605357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a341aa2a3ca60e577351bc8372278ca9805525653d800713997eb961934402f
Date: Sun, 21 Apr 2024 01:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713662422
