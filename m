Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA0C8E0
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724607954; cv=none; b=cbySiGdqzo0Izyw7M0dbzcYSnnnqGZY+Srh7nQNs1T/825HTY58d6boJEkmMSAJRhbctvgSeCLcU7LXwpI9TEWYu9KECMRGQ1v/75I7c5uBm97BMdbFNYXcQJjd4D7nMtyTIM0k6DL7HzT4Zprqe3ptO4pfB3OfRtz76SCVB2BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724607954; c=relaxed/simple;
	bh=uoKnrH3jWdazhcqGhP82n6yGZtP6LJ83SA2rq/JBPMw=;
	h=To:Subject:From:Message-Id:Date; b=rkDRibuuA2LHNRLaIYXQgx6SUtsqjMStkpfy/EW+nZ5HPBfW/KWw8j+GJkzhlr/inPFeojCzKvpbVD5tR1HnSX5SIwDBz9p3zFAd3JaCrD7gIN7gRmvINlbaEwt4WUYPWhRMJkcoIZFoYQB5VK/6JbFCQDbqFJSQufYXV7/+fjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cquIikvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cquIikvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF86C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724607953;
	bh=uoKnrH3jWdazhcqGhP82n6yGZtP6LJ83SA2rq/JBPMw=;
	h=To:Subject:From:Date:From;
	b=cquIikvZy4zXoIPjeF+eEqSL0mThWpHQRfMm6To3TwxXeQhOvQXoiy1MYA1Byu27Y
	 CtLGFAUNujK6LQh9BaOXiUE2VxHAjP5ODHgwZDm3JTRu7dhpvYatPwlR/ADUGz/u13
	 z2jBY7KvTClSmFeub/nT/A7Z7FG3ALdtXoiyoTmsG8OVZdd4X7cR4NMyEXsRDF9795
	 B9p1oP/nQ962y72ArDizE3OogAxhD0mzUBAND3Q87B8G+uVKjWvaCXl73b9GYbF3kH
	 jlrEzMQlNG9c+c81rJZDlOG+JYT94+tA3sxiZUg48OkxeW8n6b7IzCW1udPFMLo4sH
	 97YUUVjMo4kzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A603C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460795359.26834.16817426602813237370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dadd7a1e5394ce50e633a2bf19dba1e3fcd8588e6a920d1ff5bf7cc6641da6
Date: Sun, 25 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724607953
