Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFBD205E2F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753471194; cv=none; b=IH8PrQHawBuvUS1p+F870uIRYO+Ea9+f4lUDrhzaut+3eOL8wZmxOWdbvAgkzT3hVg3cVQxI2PIL3/cmo7JJRuatnSgDPBiV5chzksoNec1tiQkwZ+PQWZWlyALBbEqOtn1q/qIyLqBABIMjc/BZjjCPyy/3cujLZ9QcH9jkJHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753471194; c=relaxed/simple;
	bh=g3fZk3vlUqwOZwSVW07+JOfu44OO31EuvfJSsxKNZbc=;
	h=To:Subject:From:Message-Id:Date; b=e+uc6LhA4u/IWI8oktxaJZVr0ngkbE6wKgHU5D9jOcVY3BJCzS9oLhNW4KyoH4p8hJHp5hvqutknQYZTQmlpQykQjStI20uIwFwBeLgolTmimqDA9B6pkbMsMXdXEc70EeDBf85jfMaQ4nKfhQ2CN6VTjMYgPhiPB08/2MSe3V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQxWpaPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQxWpaPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753471193;
	bh=g3fZk3vlUqwOZwSVW07+JOfu44OO31EuvfJSsxKNZbc=;
	h=To:Subject:From:Date:From;
	b=OQxWpaPKNgU6oM5tnewSTvtG2Fgs2hqTWVqcs21kzUMvnV4giBFzi07Q2qpd3Sj/c
	 qw5Rc3ZGyqVWz1QnGQmbvjMmoUa/emDoxi00aB/9z8VklTuoCOhpX5dxLoBZDwLNxc
	 +4Z8UbKDNmE5LsduR8MR59nxsZBWH4N08h4nquK54KdZCX+CfgmnZPRStZKCL8mgyJ
	 cJooUqsFCCWRdWEhZMy1AoZYJ+ODAB2I/eJ07rndb99RyFlk9RDqIywxVmGsd0I5sm
	 6G5+y84/ZAXejaqh4PoK9j5yqpXbMQckmkKv1NLmX0nhpUeXNylRjOfD78aMKZDNKS
	 QMLyom90xZjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E4C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347119357.13142.1085513743846205246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672e9da5d802f90cd80ceeed6649f8a132a1dd62fa691763e4663e7c8bf83a8a
Date: Fri, 25 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753471193
