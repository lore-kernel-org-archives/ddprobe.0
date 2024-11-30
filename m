Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9D42AA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732980954; cv=none; b=IRXSo24nSylU/yXJKkE+jAV047mQ/1wABpH40CiSerIFpWAnOFy+AG4lEZU882d7HOn+s+fBXh46yx/jTVmN8UqTU53JT6reyfUzlKB5JyQOv1eJkD5q8I52/fHD8Tocf+f85YCzaNF1skXFGVdXKNVUK2UAETyY3RG6Fop6Tk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732980954; c=relaxed/simple;
	bh=Udd3b/XlDu21U3Pmi/t0Bz8GmzvPMzrgY+r+pkkGANw=;
	h=To:Subject:From:Message-Id:Date; b=IMdmWRVpdqLcm2GSJe46h7VBaFrkDC1TVXPtuABDmQf3AQ3sXmlQlF9zO0NRWiIdCDTRl4absNcI+TLIYLYIrCJcUPDmw7qMJKHrx7MBW3SyRbwfRDXwoARIS4mMcWcxhIeKHgtJu6Fa5Q0BitxcaSCQxjZ/tDOoJFGmPQGj/C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qasAbrMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qasAbrMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA0EC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732980953;
	bh=Udd3b/XlDu21U3Pmi/t0Bz8GmzvPMzrgY+r+pkkGANw=;
	h=To:Subject:From:Date:From;
	b=qasAbrMB9fWy9jZFFQlbBmbwP2q8hYlZ9cN34wHaJRanB1hCc7M19ZIWqbgYTqAA+
	 /kkh7m7un1PkhJJop3xfYqPPBMEgOZl0k8zyJH0hTEv8NtIAQXihppis+g8KlTqqu9
	 wuzV6jHqw7LU/4onoPoX/3eVjVR2AIqz09aJxcYcCXT+Juj2AWy22RxmFGNqFQ3HlZ
	 VS03MIt6vU2oUwLr3WULn7FbyGj8/nvD8K2eXuA2O7girrrSDpKM4shdc5AXKrH3Mo
	 ANP51Zc43iAGTN7RMbsTzyJtzH53ha7b+KmbsZt1mq+o2Ma0M2frkzbAw0eVOXn2Xj
	 dk0AvVQOSJlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB1D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298095359.13385.2071150054949066825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5037a2e90d2904885e47f8b6c122a9ca8838fa291e71fd8637401b75dadd56
Date: Sat, 30 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732980953
