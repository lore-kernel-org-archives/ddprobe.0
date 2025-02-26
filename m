Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA37823959F
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740593933; cv=none; b=u1vAaVPNyaFzHNMAFaoLjicIPeDPrR/TKTt8cwSBYL4tlWc+QdCJehF0FEuXa9a7JHsvjLxDmAShn60AGsnW6hltfDhaZky7dnvIWniJ1vIgFS5OAnQEgPAtvCEcKAW48q4ORz/cFO3BXgE+ofj0659iFr0VLHZUa8KFTparc/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740593933; c=relaxed/simple;
	bh=c7WXnLA5CEhxWsKGj/W4gNzvSdtlMZKIvu/pQRshqLQ=;
	h=To:Subject:From:Message-Id:Date; b=OYvxB9EOej1NOZy4N442RC3is3koX+sLoJtZbgTLtdzOAXFAy6wejWwnSl13hCh0KmsJc3JZink2EOGN6x765MF/fvYik9QV5RdKNYPjeBkSgtDe2Sm+gR9KDtJ4sqXis4uv3TxsbjlBc670rVs+i9vQnbwumoVF6+WsSKCBhQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmL+ZHOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmL+ZHOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F83C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740593933;
	bh=c7WXnLA5CEhxWsKGj/W4gNzvSdtlMZKIvu/pQRshqLQ=;
	h=To:Subject:From:Date:From;
	b=HmL+ZHOjeV4JU4VFUjsMHZylL1Gh8+U4cs/2FUSwjVXS6hsy+vkZp2P7GKkDOoWb6
	 RDvHrYLrc5/7ll//ZV8xopSEmV332wESLtzWkSQ4Jx3rHdRHhss9fnvpLdDEH8sHh+
	 bF8opC5/afjMizE9Aolq3Mg0r14bH6IJOxoMpw/km4FylaodtQcbnCZQpvYyiXpzuS
	 D+D+ZoR8bc6weHbRW9IdysNucTJuGLS0pwzjbbGDJi21X0FHmVoiM3kRRXlfxR/hLx
	 RrImvQVBEXjg2rYyCuDomKc0GZ1Odh+XP3IZdhvAsM9KXZkCdGar61EGq6DqzMR+Sx
	 twD4btAQH+i5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98982C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174059393361.3925.151973338589930432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67aeccd1a32ffe926cefa73f6539e4863d46be1950ad1519ff4b59fc7703375
Date: Wed, 26 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740593933
