Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80DF2F60CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774953293; cv=none; b=tlNQky7Hwxg1AOEcY4bUu9r28qRwjNM1f5P08OZuaedfjnzgw/CFI3MQuyFqXASqRoQUqNsocLPmuHyPvBj/oNVAsgQCOLWJgXIzjfKJYQCaCUfAFVUN+rtsG1ZtP6hCODG8cLrkP5Ga965hNUj578WLEeAbu+LRinxrWkljCeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774953293; c=relaxed/simple;
	bh=ZHJJqbKBxBrIdfbpQKs+UiAd/ubJtsSTjvTH2PUNWjc=;
	h=To:Subject:From:Message-Id:Date; b=SC7NIK9fGfE0wRRI4bQHyKdv6YYogzbr95oM1Ox1ZIGF/dxZKLidwGkWiakKd4LKlajQW6HjP6pAf5Rv6iyDfv4aoU4bjFpJo2cvnbMMw5+yHHv8KDIXPLypEOsSO3UJAbQoQUvrnObxLXbC6aQeN+NoZHDTFr4mOiJfctcSUT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKgIQ9j3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKgIQ9j3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774953293;
	bh=ZHJJqbKBxBrIdfbpQKs+UiAd/ubJtsSTjvTH2PUNWjc=;
	h=To:Subject:From:Date:From;
	b=OKgIQ9j3p3mvk0f9myiN7cyCFZkN2t3YsZLegWiyTMY26/mLnkpV9RXBDTVVI8b81
	 P3mTj69zQATS4LmlLFvT4fgrX57VsN/E6A2r9e+ZuOgc628mi0wGw0vOurU8Pto3t4
	 6r+qbtMAAAcFYot4iXVRAWOuRh0u9wFYAECOq9KX7kEQZRePfehOgfVVaPQUMPu6BJ
	 bazDEODriqMVqet4YfP7yi4cofR7nv1LwfwmlHvthDhET1J2Zyqw1eDIOFim9gAooL
	 bTDlwpzKPNv2bNf0vhwrdcmhf9PfyvuXzVTPSaxRd6ezAkzR8DedlbBX1rZ0dP8us7
	 iigPGyiFKDhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910851061B21
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495329358.14829.6804148609120186263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7f818cae65725bdd3a6128bb14b5d3f067e2824e2e8d3de1c1e7683e5e4a96
Date: Tue, 31 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774953293
