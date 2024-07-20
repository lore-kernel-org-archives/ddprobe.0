Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B915AF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721502354; cv=none; b=L5/HlGCY7U6QFAX4E3mdFvyPoZUSpcDXaVjZV/4qR6474wap5ejKTvsgAe8AG3vy0GScDMbXXrWMNCdwFG/M9OaYlXmYe0/Uewv99ixOtKU6bdv8m1Ds2WNb7OuI0TUh1tKiY7dN3VuB67YGQQmYob73QkKja8qsPwFKdLXmdC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721502354; c=relaxed/simple;
	bh=Q9DHpG+m6DE5vUwGlZRfrUA32iSEkprbXNLvkFa2xLk=;
	h=To:Subject:From:Message-Id:Date; b=k/3VOD2URA0J+p83AT2ZRFGAPAj0XVoYsEPY7n/aUlL2kpSRZQFNBwSuVkz8cqkH23KuEemmrHBYEz/wBB6cd93lo9F9UbggVU4+S+JeqyPljMjXJbntsAeY5n8hdNM4PzRdM666XVnFv72FxbAag7zbuca8q+Xm4TTneQaz3BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7apznOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7apznOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BFC4AF09
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721502353;
	bh=Q9DHpG+m6DE5vUwGlZRfrUA32iSEkprbXNLvkFa2xLk=;
	h=To:Subject:From:Date:From;
	b=l7apznOAxhmFLHfi3VrYEjyceq+5GdJpJpZxY+0fE/XsEFKm0Ia4bTAlTSLEqSVRY
	 jmwAE1mURps+MXi9zqaGRPEgiT8TQI4Wi1PYLixEPUOrt7F+KFL1TosjFAXVn5ST/A
	 Gz7Fa8reFH693Hy9oTPVoU1Q4YcSNR+ywi8uq1rrxEkXvrt/bfkzrqNYnt65aJgzV4
	 47wvv+jQkCfCVhbuaHhy3Nr3Xxr0dTmC6DagQh91qR+DVyhqEvisGw1znBFGpMrNzd
	 XSTGZ8BwBlZjEdnbalV8x26Ytk2T8m3Nk/K3CRDV0y2pe2ZlDP0TEx5SIN8F5jBZry
	 x8MNdp1uzJRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DCC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150235361.30596.5715135528998382140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a549914ef0415f64e2712c1eae81e90c4575b43a86635b0b3fc584cb3dd764a0
Date: Sat, 20 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721502353
