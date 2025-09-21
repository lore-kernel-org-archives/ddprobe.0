Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233E51FF7D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758422394; cv=none; b=F4zBvG1K38u0RCIw0DowwScIk+xg9W28+Ld6RJ3NSx0sJbWRIeGl1OJERT2GgGxz5U9W+sY4aHrpKFHlIi4NlFXwLADo+iTT9ph5ETGEu10yhMfrBeS5Oep6iwDYJGBDffQjX/LL8ovhUdpRVrw66bhKJiBQHgYi37Cn/+mb86o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758422394; c=relaxed/simple;
	bh=iFkaKnfhK38xdex5zyWg7288ulhRhnz8ZeY+hv2sJA8=;
	h=To:Subject:From:Message-Id:Date; b=CyVHBbnQqZM5Z+xDsqsaJEoDeEw6TXkv4tOmy16Iobw8/RiO+VSu/vF3tJwAH8w7veyB6E30i3S+l2HQbBCpJ+xXZuDMYE6DQ2x3LgNyADCQpRxwsisa6dgWa6ze1Di7qwjqBStww5pqr54mrsekhxOmnvEGgTkDp1bOVUKUTTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBcs1CRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBcs1CRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758422393;
	bh=iFkaKnfhK38xdex5zyWg7288ulhRhnz8ZeY+hv2sJA8=;
	h=To:Subject:From:Date:From;
	b=KBcs1CRzr3JBBNVWNMmBMiZjBXfZKupz0wvkplbPNdsLVYl+2I3cSaSdzo4rV8qnI
	 SzNsoNrMGlV9B/UdUNn0/JeyrpLoG8c0mUnRdVBQDyRvMENjbPUJlgMOyLkbmFFxFS
	 EzZKYzrVng8HMUtJlfaSv8PFFwdJeCmWCguwhDEZfCSa/Ho6kTi33A2evDgngWgwKQ
	 ZSfAcY0wOpa6xL25ATVj1h75pwIWge9Jl8d75M9XtRYHZhlO0LmYphDqyvHe7P8PAG
	 HbLl2/NNECvzD7RoFVUSPbUO6SOuJ9Pvu8E5D/e4PsBftrfJAtS0/Wyi6AL8ONx8LG
	 V60mbyGEMTiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F3CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842239357.6605.3458316301142818200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47a0a47d536cc0c8bb14a794f665311649c14dabd06801df0f8a5c1f8a83f3d
Date: Sun, 21 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758422393
