Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF3D3254AD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761791394; cv=none; b=ht2OsbLbAO82PgY1GFP6BUSG7kHHoUP5uZIUjbOq8nAuBQStHwRCwtlOzkckMi0hIFneaYQcrvCyqabNRbXOa07SzUbAxZp19xMbU9xiwoCryjVbV9IKJlb6od53ilj8iVEAZVA9FsvVvMIt0JReUaitkZ2K1EP811b+Z10oQAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761791394; c=relaxed/simple;
	bh=J6ooVheV6ZJLf21IKbt6gQ+vN33d4QAUfdT6aAtFXHk=;
	h=To:Subject:From:Message-Id:Date; b=A28+TITwn5kHe6xXaQttAA6VutrS/eThHbCQehmI5eNICuJ3MIw1OFiOD58hpt/Aaob0dZZE4318OJRzS0zNqUgpLfSzly5WLNvcFlI+vWmVXxmUO5bh6qSzCnXrFErMB+lr2BHwl4LREaLBpU4c7GxQ+dEDl1b/AbAFNqX8s9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uup1PNky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uup1PNky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E6C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761791393;
	bh=J6ooVheV6ZJLf21IKbt6gQ+vN33d4QAUfdT6aAtFXHk=;
	h=To:Subject:From:Date:From;
	b=Uup1PNkyDFVQfnKrFEmDnBI0jiwZOb6WlWulUM35I3au/ImZPXee/Wm/wfidj17aa
	 tZ+lf99qUjIgdStyOQC2rma3S/y6+3INIIB5xRiD7DitViD1WFxW+5WuqMN19pKy4A
	 ZJO31tauEW2DfVB0l7SyULfLJw/eD2azCNINFQd/2IZKmyxAGhJiTMjCvSK+m0QOkk
	 +nd7UfLcVn0DJ6LTtMCqqEJwD7NFSbKBcOAE7FTItzmZWTHUpMZF9C7qP/83aRS8i1
	 gY1lxEYIHGFhtwEZuEJrnBPvP4TDH6argnJJLor5Yy7414tOx5G35Tlt2wAu0MaAmN
	 ShXvf/gqeVh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A35CCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179139359.28413.16609131911557197362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e414d0c887e752027d135b4359df99539bbab14e8a5a7f068f2d7618fd6521c
Date: Thu, 30 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761791393
