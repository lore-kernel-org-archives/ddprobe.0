Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A347F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717809443; cv=none; b=J1owiPZrzERISQXctMlTMoYQP1layaPumeIdWuODJmYOngFwJHieK0i/yOZWscPmD6lWGJrAnQeqHn6Ap9Qev113Vts06n3Pv0DbhZtKwY+kTsLu0YHfYttp9wN63Vx0ru1Gask+Gvoa/OUSsu9W1gukZeTzMhs+557u5KkhVgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717809443; c=relaxed/simple;
	bh=7xqLfR0nye3vfqIaRKjNyjyKJavi05rQJ9K6RCnevv8=;
	h=To:Subject:From:Message-Id:Date; b=YlYVDnmqIQyldNKFXKRluG4smhdaEXGcNTDKilQbrF4/f/XNKinoxS4R0W8Y+ykSyFx0V9wHywbi0fHH7cASq0wHC5QO5FrGQUB34xx5AXCO7q23x1wdnxeBSd3adyIcZdkAz4il3/STDPj6HwwNYiP2QG5vuKEN7JO9p7xYpYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeS6rGUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeS6rGUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE328C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717809442;
	bh=7xqLfR0nye3vfqIaRKjNyjyKJavi05rQJ9K6RCnevv8=;
	h=To:Subject:From:Date:From;
	b=AeS6rGUrCQ5uwgBclX5k6n4WOOsqMJL1oJyuDsgaQ22NvrnP3EZJ+WjanQks/YeFl
	 3ZZZWL9CyZqn5JmJuBhFQ0PiYEO2VPbEHrBKtRHvQKBAzT9TGY1qEU0zXeindoeJKf
	 n0hiyzWILMPmewRUY1wM+ZPYVgijx9OCHaVTqFxY/AO11d40n/46b0AbdaKjOzRWqc
	 deqyYd/iLOi1+/V00rD3xod2cZXRy+MNPEHHsFVF8gI48zkUqwiOBySg5mmEJmzVFJ
	 Q2wt/3OaGzouQF6/jsbUAPivEMs0siZCkOIoz+c4YnUhKbjjc9D8wrdDXVC8u2FXM/
	 n64Gay1U0YSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19C7C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780944278.1130.4321729685241582030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3863ae80ce010a926da9fdb6918c9c775caa69a23404a1cc063b628fbf42635f
Date: Sat, 08 Jun 2024 01:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717809442
