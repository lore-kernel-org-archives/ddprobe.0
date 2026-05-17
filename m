Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417E5405C2B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778976034; cv=none; b=c/Jodo4rom/tm2q6KEhXBaYwW3ErTmE09sB5IaTkGyndjum/IbrfAtha75h/GCU3/i6Tk5QSFzi/1uijLBdtgB16DerD4CA9MgrHpgFjv6SGGUJSb6S+omzZpZvAGgi/4nKtAfUxkYAYDPt3bFpEZSpuhOHEZ+lEc/KGkCNkAQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778976034; c=relaxed/simple;
	bh=g4GZqnSy59LilobC/dpmJDh38oy+xhOOcIYk4Lm6JLw=;
	h=To:Subject:From:Message-Id:Date; b=ewmOxcNaNvQfnlg4rmnevNwpX+ms2d4MfkUqe2Ub9n5Y5vFHqHGRzgO7oEHtkYw01XBVbfpXgktQ2NNbGE4n3wylbFBPZ3fYM/CSJdNJM+lpM8TfhpevqSwuLgkVTYSJishn3rKcl4guwqgs/j84Czg5xV6mOvg5iMzxbiZVONE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo9VSscL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo9VSscL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BECC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778976033;
	bh=g4GZqnSy59LilobC/dpmJDh38oy+xhOOcIYk4Lm6JLw=;
	h=To:Subject:From:Date:From;
	b=Jo9VSscLQac0K7Ydi/bOYAD5K2eLXwfOPf9UmYoDsKp8HVSXzSoiMjwRdvIw/NBJB
	 gdJIxwed8Gb5EkE87YOddN2Q/pbAbIVY3gz07rPnSEi01nTccc/4J4rZynmeY+UGCW
	 UuqqTG44KKMjH0bKO7UgTPloeFeG6dCrbwMFeglelpEflT92ZYml8/F+tcIIlq8OYb
	 p5Ih3E0JAMMYJEhdEeiAZk+9ZBF0tqJdyNRa7M8NLvHSo5wlwd79VEnBZM6Pt0kGGk
	 Hem3EDAPVW2udN0B211fyZy6B6KyxK5kViWhurtd7T4f2DkA9iOy48WmHVAoZNYvcH
	 LhokBc8W1FEig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5881CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897603370.29920.763656208359155160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d438f825cb98729a932c0875d817b47fd56f2b288a3a0413ac292d18fab071f
Date: Sun, 17 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778976033
