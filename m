Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1776D54279
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756451994; cv=none; b=Ug8cmDhAMPb1heoLpPFc6w5BI8hcl4Ij6BwBA7i4dPGIrbsEPzM5qyyfCv9h2t5LdRhANCkkI+Ry3Nk41vvOmbMTAMaSE3Sxeq0dc1BXufxInLyDTjYqE3mQIypHhcCvYO2I39I1MNNAws8kPclchsIsQ+TOltWYwVnEjCKjP6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756451994; c=relaxed/simple;
	bh=zKaeW4Tx53kb8/X9nULqvNlX3S2mwfzl6Jgf0IAj4h8=;
	h=To:Subject:From:Message-Id:Date; b=UFlfAjAjT1NOXfv1Ez8hGf1tEsGN2EXmiA1mbgyhAHjI8IXPVVocRJbZrLTH+e1C2q+ZB5aYeJ98ptm+2Ix9sZ3Oop8KiZEphH4644KSFZ+VuyqQJzC3jlmsJ4lsxBjncXdjuOgYHsfcL0TuHJOvKL4dQputci9LsFB/QSOV88Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D28P60/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D28P60/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D08C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756451993;
	bh=zKaeW4Tx53kb8/X9nULqvNlX3S2mwfzl6Jgf0IAj4h8=;
	h=To:Subject:From:Date:From;
	b=D28P60/Y9a624LmxOd8lEgZRgpXhcHzEAKTqDs3iG050xCmwZIiKmpp5/NhyXGlMl
	 XzzyVeVcSk8Yscu2iFBLdTl7yHYWRrAYe4CxbnWPvfodhP4+IxNaSWZVfrLvb/IQly
	 yS3y4P1Vq1KYNQjcJQC9M6vZIN9fNG4lYFGJCy+c8Amzqp5moPClE3PrWLzYUraVmx
	 WJbjuWisvCSDI+Ld1SDJt9doM5WPqXqqFpP5MlxVd6tfyPzKcNAuUfZHP1zO3sGZb9
	 eQ8GYMcLjd2X+o/zIm4oQK2sysBFBt+7ow/6RIRFZnVJyIUwpzER7uWFIazU0Lzrmv
	 LfdcNxd2Y84pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E838C8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645199357.20806.2487802816515109050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a812939fb4d59824c9f5752aab3d72072c9036f4e369a4aa64e6621dde59d21
Date: Fri, 29 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756451993
