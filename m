Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F842213E89
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766531034; cv=none; b=SY2hfrXYy4APqyYhlKx/p55cn0bAgQYs9Gury67VH/r5iv23wH+tFhm4EOmrPaxP2Zs8Z1Aa+v55IRldlpcj8EFYLZxH09aFk6TIsBefEkrGZSBKiXGnJ6P/eFr3mz4A0wLNXrKj++3ozSWzGqDTQjp1vaRjXEkbUcojjvT+UvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766531034; c=relaxed/simple;
	bh=b4xnpE9NVofGc6Bcy+tm7nlJoQW4uyD3Sqct5kb0pgs=;
	h=To:Subject:From:Message-Id:Date; b=YOi4otCNjYMzOnvjYmx0EBpBYlPzVP73Rf6qBTqXO387nLmyGZO6jDITa7Qzo+WoVvrCYfqqbopOn72M+RfvPRPJqlUf8isba/zkCLBqxux5JTEV1rHcP5iWSW836Zu4ukspaJ6QBSBmIpqMW75gagxIjITQxNoBMyRpX55l76U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cop3ity9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cop3ity9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D4C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766531033;
	bh=b4xnpE9NVofGc6Bcy+tm7nlJoQW4uyD3Sqct5kb0pgs=;
	h=To:Subject:From:Date:From;
	b=Cop3ity943DNTYyvELiYAGswM7+eSQnBAWwzM4UdtlIP6/m88yNSR4HGFo2Ur37XG
	 EA8XFzoHN6HBZxh+EzvaRWQtqQ8E58jiyOSCHlPKeVuNP/jjp9dd/xi4zo62n0fvGq
	 XiAFrU5gmtTLgcAfzBJAOQrOSQlCODIiEIt960dRj7WHA+sHXYRPhhB2loeyxtnIS0
	 q/xhF9QaYrxEfwC5mkTVExqbc26v6Un1GoFFnZ3RAIPHAPE0yRhTjmUpPd5prjIbNO
	 tB6Ex3pfxH1r7s+ygFt9Mzf+juhTnaPKllb9KuCcS3Fj3eFi+pCkm6zgwCHVVZ57mU
	 UO3rSIWHJ15fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE8E6FE27
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653103358.823.17068740246445115388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d0bacde883b216b96b6cb3ac477231162d8b6183220e599e5976736f88e52e
Date: Tue, 23 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766531033
