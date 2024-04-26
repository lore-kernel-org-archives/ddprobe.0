Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E34239879
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714169543; cv=none; b=m7DHZ310JB719JrhfqEibMghJsjWhiM9XFDzaFRw4J6iJO73qBgFJykxdoh/tbdmybobuXVlFVLb/yYgbfZrjwjkOpSbG2lwIDMBHkAHRop7nz5ieIdWXJQu84J/3ZHkFBypU3+1JAtFILbIUuBIjewXo52bdIUdpY/nlOaKUm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714169543; c=relaxed/simple;
	bh=4/DNp1eMlZScNpDDHbScQnMz/H2IXONPkLE1rMixHew=;
	h=To:Subject:From:Message-Id:Date; b=FYcYQOVngFfkdSURUsI5ZWXWcYLTdUHiDg0IuZuc+4A2OB8j03QVvsglsjT5pJ3yKLYxY1+261pqCU6XB5qWucIbvezXX7ZBdRs1coRPqFJBHFB9PC+OXNW9l9f8o0ckxca/wcxBaq3+IUd+uAZnsrOez/2JVVMJQWW9MqeDu7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY/CUQUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY/CUQUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E14C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714169542;
	bh=4/DNp1eMlZScNpDDHbScQnMz/H2IXONPkLE1rMixHew=;
	h=To:Subject:From:Date:From;
	b=tY/CUQUhMBBZp/MWm/H07p97yiZdii1oXMTZH2Z6ZGVv0E2gLj1FgVAPjnf381+HN
	 D5FAfUFee/W1gfaJWkpzhWcsA7YYCY+IWe1MxVr61BgY+h9ZbujfrLJN8XqJ0S17ZS
	 3ur9bfm6idYWMN/ep9uNbzf90U7Xst2J5G1v9Z32szelE0yxrt9EfQuscJ2fOSYM8E
	 6XnzsYka9KyngbMrECIFxmS8TXYd8aTqhT6BtkXREEBNUK03uaSprwd984uX2U5rqP
	 cXrASrvpIN62PeYk5YPsuDf5mpDcEhCSzcW8OFHwCh5fKw1db/4v8guvUvxnR+uOGl
	 w8X7eHSIS2pHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A2FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416954278.31336.18300486465072206482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87debbae216145859c1935101f013734f3a4d8aa49d757deb218f469d0c29e34
Date: Fri, 26 Apr 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714169542
