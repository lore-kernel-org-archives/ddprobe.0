Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5B23EAB0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785824434; cv=none; b=AAYN4dWH9cG4H1Pdcl6X1VAtZitQe4OBwYJ7Od+xH0DJMcDwKvMUQODC7f5Ges7SnOU2AuC9qaBzC2XidwHm0wGete9Cgl/Ql6TqHp/JqsqQk4ERpxXVQfxThK2Bfi0rbF1wmo9+PvJdI7bvlKyX/PRHgQw7MISsSj8FNR2waLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785824434; c=relaxed/simple;
	bh=lxOwK6HfbMeI3tAF9pNQkmr7h8Y8ZrbFeEV6A4sID7E=;
	h=To:Subject:From:Message-Id:Date; b=JyVUeaDFBXLWJZcsaP9uBy+ruOqIr9QstjAZ50Qgyz6lwjd6jT60iyxBTHK5YjzvjmS9e+r2rBWZRIki5IsLrxnrWlXFq1+PS71BPmUwzPVsjT6CLmXS4wq4BIztbqvmHawzxGMkiC+ybDWeaowMnRp+miVr38oaMzYrpgcqUYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqAUzCob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqAUzCob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D886CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785824433;
	bh=lxOwK6HfbMeI3tAF9pNQkmr7h8Y8ZrbFeEV6A4sID7E=;
	h=To:Subject:From:Date:From;
	b=UqAUzCobPZy5/NPGc0zzRww1Dzj2iOEr4iTbj02tqxMIeCQTaPcmd70Fs20Qegq8W
	 J6h77WIOuJz9JGP58FqHSVkeI3g1el+wfZRPZEywjkp5LFmNH6xLPG06Wqh7WnnKUD
	 2znkr6lJv4OR6kXTqDs0LeYGwJZkW/XmQPf4aFSKyrGOIHBb6eME18bZaW+df7ZQF4
	 Rar5SSaxSU30/fW/JjF1DHX+XuJEvb8Z1pKRJZNtob/H3huSp17YWYfLdS+ruqrkA4
	 amTeIbAb6IGAmNkMN5f/YT4YhChN2PC912fYn6LIqqtAr93L4kiJdSOjvt97NfDpIT
	 uqZWReKZW+XuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51AC55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582443370.26472.662886797487168976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86da04a66fbea40a570a4e1cb24f9d36a8216dc6c81bbbaae549e658acf84e30
Date: Tue, 04 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785824433
