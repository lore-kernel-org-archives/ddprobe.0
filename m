Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467D62913
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737273354; cv=none; b=Uee3TKHfazC3fW7NA2e3zRPR5R2D6m90b15jVv4vWxepsBMtfpFJeV+JZrw9y2ghrT3L+V2jUGQQFUSn+6RXZkPGQUfgbCggpIIDJ2KF50tvGmFWJSLfJZ1JNb4eh3ajQjinbTNoPgRWM6itbz+WN0XRlK92iQ75CqwvsvakyZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737273354; c=relaxed/simple;
	bh=NiT5V39eqPuCsy7UFiEvRY4jhgfdJbgYyJjqNjUELrg=;
	h=To:Subject:From:Message-Id:Date; b=ZtQQQay+YKZEws18HDde04ACaKwjW2Cwq0+hqA8hTEeZfZ9hVtDmR50i0iewTsES1m/X2+W07DVIzvqQd3C63gddFVTAKKmJjZp9GrEP8zJuXsCzFc9NXrITsL9xGsKmLIYFEFOwya2j4IfGRlp3001sRFtaXxES2ii9QHCum1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOiVFou5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOiVFou5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A8C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737273353;
	bh=NiT5V39eqPuCsy7UFiEvRY4jhgfdJbgYyJjqNjUELrg=;
	h=To:Subject:From:Date:From;
	b=jOiVFou571HdXIibwh8ph5v2BOa263evtQ0bYLpkff/b7+HuQ4bxrvLWwofIkIKOl
	 4z2BbVcAzDJMhKEI2oE36qSLkyufTtG+uuuDoRgodsnngDMaFKZPNs4r7hpFWCPROx
	 d9q3kH+o6jvHrWwk8GGZWA1xL6le6f/PRUrCBEby3s7+Smo6VA6JQM36nybgXTd9MS
	 /MV8/xeD20eUcFSW3cIl+iG15rLQSSUAaAoeAZvyqdTjFuAxCcSwnNkisxX7dsZ0fC
	 PgrgN0FNLYbtp9ixZdn8o9MnzKs7wUV9Rtnf3/36UmJFbjsJJRjTmNbjsJKjEQ0sLN
	 sZ0l5Cx5rUBPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCB8C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727335361.15083.12703473930939657386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc53c7940fe4153b7bbda834128d47d2d0270566575c75bcb2840acf935de1b5
Date: Sun, 19 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737273353
