Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB203164AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758824994; cv=none; b=oJ0CnhCcLXC3S035XmRazzaV99Zt6pZwejTzL06ssZplOVV6O+DCskczgH2YY7bn4bQqrYLWjrcjDsoNqLn8oP+gUKOYOHaL5bzYwnR/z5G7GAeO8YP/XrPb5XQiJVfn91MBoJELstcm+UwH+FOhWAGX4FOhb3/afhlOXc6hGh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758824994; c=relaxed/simple;
	bh=DZdjza+c+qli3EIrkOQYm6x27YdoeZNp0OeRCEzYkes=;
	h=To:Subject:From:Message-Id:Date; b=mkjB+owKUNVVEvcFZ5MHSyI7bv2PZ10dl2Ib+LwwOo0NwrKGt8nVEI1EZN+jyvp3L8fecjbmrGgtztQZLoLfyuClwtoVeV6vOx+oLrTZn0XLxw47eJ+rPpPVVCWvLmq+p0IOzXcKm+N8NtBpZhpe/3UEGa0pmZ46AiW4NXEJbXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TriHs5d0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TriHs5d0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B083EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758824993;
	bh=DZdjza+c+qli3EIrkOQYm6x27YdoeZNp0OeRCEzYkes=;
	h=To:Subject:From:Date:From;
	b=TriHs5d079AsBBGCgNqsn9Ax6x5iwi03wvGD1/bmRA3/A0cWMRA2kO6TcgPGZHVSJ
	 62M2n5i9ljku0znuWbQtqeNaYWpZb4RwoCUMer5V8/h8fc7V3QBTjAeWF5JOArYVcN
	 qF+gRzWL2elieYuJm4nV2sg133ochhd8A84gXKpdR7ZBBF9Yris5I8fT1hcsRJ0Vp5
	 YMcSYDj8iQmndyktmYN12f3Q9LwdvcbuJgUlZrXU6IfQ0TZwChv3G8bKbzeyEuDzEw
	 6PKMlQNTLDnPvE1EcQVLeWJHek1onVAF0DnhwmcRUf2TmuIR0dMKQbHHcCfHUV5t/U
	 uPKmOo/vM3V2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A170CAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882499360.3633.4928134522267574988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5cb82df58bcb3bb590b41cadd5d96645c030eb8f419b65f1c6afc837802923
Date: Thu, 25 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758824993
