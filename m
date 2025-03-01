Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422A71DE3CF
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740837534; cv=none; b=sDX5qLfgeU/xN3BPo9aY9gXqGs3cXgWnGdP1R0SEw4VB9jQsYFZ0VTfsxScYynQs6RNL2wbfnFZxkT7YwIpzMi/jgAAGE9BSxr9tzMAWuQfcxJbNRWn599yk62eIajwHMz8+mc2eIiFJbA3LhRuJH9qxdIghp2ZDFIUXF2vB224=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740837534; c=relaxed/simple;
	bh=qpLZiHGsjBx5mjODgeI4ABf4qkfh9tGLH+IPBoedovg=;
	h=To:Subject:From:Message-Id:Date; b=UPDPvowQT1ZT4G2JDikihg+Utlk0Myw/va8v82Tbna3MVif69lx9of5K/wIsjLL/7LuFM+bQ5ouGbOk4vAnB748oowfxR94i+KyrfbDfB9qnkKt9LKGyGwzCzwZPh5/UC4eC4HWsGqCqLXDnAQjGk0I7zn1SjjICa3tGQ+8UklQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA85rDD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA85rDD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740837533;
	bh=qpLZiHGsjBx5mjODgeI4ABf4qkfh9tGLH+IPBoedovg=;
	h=To:Subject:From:Date:From;
	b=NA85rDD9Fb2riV3MniGptqSkai0+Jy0OmCj4L2zCnJS3gMlfTLUSWLvlpi+cnDfOd
	 s9r4t1k8X7qnexhsO8IgSeyBtpd1wcvv0OsOeMGStIGDZHuaYfWRXbst7fUqdJ+44a
	 4pdb+dJb/E24GeFHy+xUjNCBp8WX6axE2MTMFfkE1pjCV6uCadELyNPXV9SWE3ya7t
	 biIPZiL300dC0YRuQ6iEtBOvqIakIWjwmG44QIbtOes5CBx7bjiFZ1D4xt+KPnXmIx
	 rFkQoZh6m21z9ipng/SgCBprxZUvMfpG8gHFSCUE4ybzwUW/i4qNYEv8s3Sy6C5Gny
	 GUVhjBWXwoLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90991C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174083753358.11301.13352903723305768876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b10ba42c973c93be9569c99fdee88cd4c7638b9861dc84b966988cc9bc0b9f7
Date: Sat, 01 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740837533
