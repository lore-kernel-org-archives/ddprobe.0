Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227B426F29B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767420834; cv=none; b=stBFeNpWuzQKwjzOQmQk6LnsxcCSJgYwsilzHJTt7wkkkHy4eVySn2TjZwbCusjQ1V8V/YZlUS1JYcou73ggqxrtjN7vn3JRXayj6BZ6KtRlVSzxfERQOhwkEOxjQLBrF3fvMoe2GzcWUM7/WETXPudGRruKlZJDkojHGBA+ww0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767420834; c=relaxed/simple;
	bh=KYCmNdy+KjqhJS5MDUrZv6DUGUaQAeU5YzJNwENx+aY=;
	h=To:Subject:From:Message-Id:Date; b=FKh2rUNdOgGD6IwEsTRD/GcH4wOhmd/NcygFd7scpY4nIm/iqs6GHRz36BXewYF6mXXWXaUYTGwPt/3U4pU0cX0I5iAByqAqonz8PUXXaHEOya7Mf8V6xYfDPWZOyCbqEv1vbwPHIjCU++tvysBfACkfmzLazPjuPFYIrcXuK6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMArep4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMArep4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767420833;
	bh=KYCmNdy+KjqhJS5MDUrZv6DUGUaQAeU5YzJNwENx+aY=;
	h=To:Subject:From:Date:From;
	b=FMArep4IltoTcIWUg+SFq16XJTfv0dYDmkHy36jAQXpyafG3G2R7iKhVLAwuwWsIl
	 qRDRhlY5df1VOS4iTNb02Et5fEJ/0RvqBJ1icFUcU+Q2Dubsw29tHzk3qZ3t+XjUBW
	 LwXdDP2Ar+tr305xhYHreQzLcl3c+wfbC1oOlynD5jGmlKTn1xWHdEDv+3O/IL65S0
	 l0f1491xLSFs8iueAOkmFfFOpIU1z7g+AjCo8ytzDCwD8+ucNcMvdWFZimBrstrwT7
	 6NkXn5Yo56ago1smga5v3QvBjgk2n1JTR/p5q9DVYu5xJ4gDa0u99oFDjJ1gnPuJya
	 LeYkb/8Nbi0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7DFC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742083357.32726.253839486022695075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137aaa889365f85689f93f8bce67cb58c2ac93809fcfba2502a8feb66106bb55
Date: Sat, 03 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767420833
