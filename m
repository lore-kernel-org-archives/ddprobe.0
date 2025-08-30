Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAA6274B4D
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756527594; cv=none; b=P/XrJCCstZCj4fgp+IAE8Ac1sAauOaGnBxfBJRQoRmLUi+PBzQMkhYY5qpmb6id9/qsLGgewzF6P+kyOJc37RGC+2sVzNAMfUUpwFv63fKJ8jSUihn/ONzmCqmSNLoLJs2iOUoo8GKxpl5bs+yvTyE9Y5NWFNMHfFNBaYuO0TPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756527594; c=relaxed/simple;
	bh=ySWq4UkZKHHuTMyZOKvkyOOGONlc0JCKZa19cmZkuGA=;
	h=To:Subject:From:Message-Id:Date; b=rCbXeBuL0xapD66aKZZamdiM0NYadTZS4wVAfg12dzZ4SqM99woPh+S/MCeIeHFKLb0AMO6lsvLtPMk1/8LNDNaMXVj3LIoIvoI1gN89l31EfNLQrU9n/9wCLwcL/jmEuw6Tyc0h2jKzlXSginhxblA4q2+oJFFfBz+3C3pkvJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3OPyjND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3OPyjND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0534C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756527593;
	bh=ySWq4UkZKHHuTMyZOKvkyOOGONlc0JCKZa19cmZkuGA=;
	h=To:Subject:From:Date:From;
	b=l3OPyjNDOW93XbW4/5Llh+CSipTDtsDpZML9xD1JMS4mWF5/OjGFXX7tBFZ00Dz2g
	 ZG+xsXbvv+oYIhbgWdYWS9FKyhXmn4I4KW0QQzfr7LnQjKifdN2QHAYJJoboDeJxdL
	 yjQEq2VB4uE1B6xR94vMRRFBNzha52TKkGEtWWbTWQz4A6uGOE+c7pwQfhcA0ccYtL
	 L01MZ0AXaCypk4wZB3JENL/Pbc/97Aiu02TKyecs67dTi3ucMfgIjnGvigHBcIlfMb
	 xKqWKF4bKNPg4x782nOgcniVSTkFAlXlDp3GUisAc8O1a9W/uekncmaxUYT09cJESr
	 EDkkYKHK4QqWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD0ACA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652759360.24301.12642069591179694278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e69e178bd7323308a8be0026fcdd040ec8fbf4aea6256280310109782b9d420
Date: Sat, 30 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756527593
