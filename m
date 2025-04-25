Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B1B12CD8B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745585393; cv=none; b=OruPwon86YkMnsWXnZiu9U2gpM+MTfwqXKpvvY8yK4yY2T0pGW2gYNAbuSiG/iDs+eCaqZWKhhfUU9E9mQGo4+TCd/tf+QwoPTzkJhRCX1+rpJ4SmvlUlhxLcC2UskjkOg5LMRHwSPuymkRHWEHE6CZ738sllI0YJhFod9uE6Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745585393; c=relaxed/simple;
	bh=JqB636UufrZz3FBlzbMP4QT17YpAly/wwXYUPnmNMoo=;
	h=To:Subject:From:Message-Id:Date; b=Rsii47ronYoLqUwWThmNw9MutN1Lk2lZVDIWbRyVGYZqu3xEul+FrCVmEaG2jJB93K2M850pzyeSe92LlOyXyOQBvBh225pPORXUXIsoC22WwwPEwO7kL7GzqB4c+QH2NSf7M5ocR7VMYpsFFEwBPFUcCl3h5HR3udhOO9ukgWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/Y1W1Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/Y1W1Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745585393;
	bh=JqB636UufrZz3FBlzbMP4QT17YpAly/wwXYUPnmNMoo=;
	h=To:Subject:From:Date:From;
	b=P/Y1W1Zxuqp0nXkmjs38/XwufM3IMiKCldaYLme7pihMNnCEneeTce5RaP4/EErJD
	 XmC2v0Tn7ciTXQI0T+vuRoWAyATr0kfeYlqjanQlXxNB9bQNTOv2PgMIvFaogfMR5s
	 A9gxUVlZTw3HXWTmeKO3VW+weMvJXKewy9np8XqG/2ZitoZvsZiDHG9y6+WN8nh62L
	 hAvqE0wfttr40wAz7bYrSErP3t7n3yPGkfLIZcy2eN3c/0Wphb0WyFuUwj+l5ftyx8
	 GPOB7mVAhrlGwkyxgXio/NDJvV6YAKQESk62Z9+SyfHlQsImHzmhuVy9JDgVEGYnAC
	 fz9uuAY2GwqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDBC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558539357.2979.4237446617769588764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f671b65c110f578fb247b93eb9fc807b6d5d640becc04b5a1d8c9c2f38d4a9e3
Date: Fri, 25 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745585393
