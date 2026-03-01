Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B172F5328
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772363694; cv=none; b=NJtOBRipfZ8xFd9uuGbl9IzRno2K0nO7onygA6wjJR13PSr/E0JG7RickivtpXvBLplIjM4J8vM/omPI6OVMnEJeuPmGtKErnCu0/0nzWzso/1MAtd7ed/+hq09py36wbkpaNm9kqM4CrZGmYk26Jr9cfro86pcdv3C5k5JTWQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772363694; c=relaxed/simple;
	bh=Q286rr3+x0C/J12F5Rlt9n5qdqkKDMFVECrdfBIcHkc=;
	h=To:Subject:From:Message-Id:Date; b=rL9RtvPpoJeJiFlnTkuyEHDMlDFXrrFYR2uu9gklVflFWsxAjAF2AbmxG8+JLE3cBCZgMq5AkaLS56Nj7MThkRO07n8Hqf8sDrH6NvRtjXn4XgFjMHGj/8hsxvo4qp8P/TnmcP3HNpYkJUDg94hBHx6oGo2raqwYuRDLTgThL7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjej13pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjej13pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA343C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772363693;
	bh=Q286rr3+x0C/J12F5Rlt9n5qdqkKDMFVECrdfBIcHkc=;
	h=To:Subject:From:Date:From;
	b=pjej13pa89agm7A6MeiPuh+Y6+LgDVzxyNuJ3xQfoqdXW3ZMIug/pR0ed5oJM9dgH
	 pHFFLQZq8kV3Y8D2Kw9jZ1qshm/OB3mrmx7ZVpvLyFsf0/ljudvcOLh0DQDkboaynR
	 hpKcswcDGjfI6lnNMqhQduYLX9yOhGWhvDT3FCHZFFEqpu2g4vN237tNdQmK0zWr0t
	 iYEy8amKwG3TP74hRU8P3JcpyCLQtnQc0dNWfXOb+dZeq+thKtv+vGvMSRMEt8qEnQ
	 L+KUSVzproQwpesFbU9Wl7czBy3EJ68hamUlRw1sxW+aKbnDx7a0yfLRNaa0VsfMyJ
	 y5/QfDAKZTUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C54BFD005C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236369360.3182.3602588529452148799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e46f8b485e39a737918ef0718e1e69fbb0e900f71c49b248dd13eec007383c1
Date: Sun, 01 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772363693
