Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631BB16C6B4
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719000143; cv=none; b=rbs0YtbdZYL88mKKV2MxPGLuejXLccjNYepwyeB5a/zZ+E+GHMJmcYUig9Di0HvvpFh7YbAvVe15YJNmxexjLkJt6o1V7Cw7a1PIWoNDDjQrlHRuBQ9dtGp2e/xUHTznyVq7I4YVTDxOV41hxWA2WyX8nHG2IPWGdMfokkl9GOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719000143; c=relaxed/simple;
	bh=IW9EgB8rJV5Sx9cZ5zhiHGGiDOO+PfHtFSi/jI672NM=;
	h=To:Subject:From:Message-Id:Date; b=B7OYox96iecs/WVLnTLfDaNeut/oaK8d2jn4yahNQmuC0qIGf6Ii1hjI2vu7Xb8uDW7tfitkdYzV/Gghv+1kiT10pQAapZtmnodPrLHC5Uy6BRYPqGwVzird2zX7EY6BpouffyYFOWKyf4BqFvmpCgqkc9hLqve0Zw8U1gdXgrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xxm5ZS08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xxm5ZS08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E71C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719000142;
	bh=IW9EgB8rJV5Sx9cZ5zhiHGGiDOO+PfHtFSi/jI672NM=;
	h=To:Subject:From:Date:From;
	b=Xxm5ZS08lxczsO+MAC2LH0QD0fC6Q6CPitFgjq1vaJYXa3012dlk2LLmtPTPnKhrL
	 gombqXQ9jarHzde7qtUg6H7eQHoodb78BiwPmtzeh8natVzHFNXQ5vEwKwNb4ZuMZy
	 Q4UmtJ9i0wa22L1PsdUjw+tCom+6WZBg1bALf3bfdWqqMu5U0M3FVJnCGQ71NXR3ef
	 UBMoWxxzUNg/8wy23CB977vbzjIsFc7d+ywT1krxrVqJQEMz2Ms5Ia/wsWeoc1gwq8
	 czBssiy4wV8x9QAQxVsJUEWMXdp9G8FS6OTqLGCHtTqiikLG8P4/WlwxCkOXhJ7OQl
	 cFJ676yVUtt0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEACC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900014278.10629.242932230515807592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5928f82a21a3ca075005347f1f8c17194857c49f2b213dad92a43668bd4dd1bb
Date: Fri, 21 Jun 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719000142
