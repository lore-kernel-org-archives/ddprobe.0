Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFC818024
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774658693; cv=none; b=YUj0XGJUnK2iESffzcz2neuDebpVy3vaRIt86hSnna+NdAwiWk9YWjd9qYdam1RQPV+DY7oa7rTPzEDKpPXCChH3/sdQeJ1jWyuOXp210RNFXSa3dYbW9aoBPI5cl/l7PEnUU1WrZM+pht0/fv/If2kBdAZFeTtqmskYsfgbT1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774658693; c=relaxed/simple;
	bh=7co3aWwaOQC9CkA7PZApIu8pXX/l2/KlEX0AE5DIHtQ=;
	h=To:Subject:From:Message-Id:Date; b=bIy51cJYglMqjHWCRTaMKnCYwMsALEtnnpMlkviPD6nuQYZV1NWLQDcpWzzpo7GXqAIsQQQuqSZBswO8mRYWn53KjfbK3ImZ/T9Rb71S7TBmjJZKmQV5u1HORs/i3qh5TufT/pwT5gkxY+MJ0LWgYxcfx+9jeIS0SxZbrbd0Y0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnxX2usR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnxX2usR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746FC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774658693;
	bh=7co3aWwaOQC9CkA7PZApIu8pXX/l2/KlEX0AE5DIHtQ=;
	h=To:Subject:From:Date:From;
	b=TnxX2usR73QaKznnEwT3amQC5aADf0BU5j79z8YHcGwmiLQHwNaeWsjd8l8h2rjZe
	 HrOQUu1vaCcNXKvRlBs0MsBVeiMYndgIw28vgOnlklVf/GJu5fPL6Gl0KAe92VlxEj
	 q6NknEbtHzZTVNI8TAuIiYd7QuZOZ6D8YFiYd98aldTekJeJrVWQjfj7KrIRKPtgvO
	 P3QbXvb5cR9ixB1Fw5KzogCdYpie79eHPJt31RbmjyKxtsz+4py+o1So28GADhXyTk
	 abVJqGpEtBHTEfkYM5C85CEqvFtBNNd4/6tAYlpBrcU49jDykNCtiYKKsBiJ0xtOKN
	 sGrQQY6DNrrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402510ED67B
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465869359.3912.1256356482671350854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a48e38610caff5f83ccb241dfefb8a2a1407d5be4efdf0e951574f0b6e7632
Date: Sat, 28 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774658693
