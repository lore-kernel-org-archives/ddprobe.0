Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C8E63B9
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719039743; cv=none; b=OUHr259C3V/IncI3sogsR4VdhT2AVhGCzBddpRmwsDo6OWRelWPI0WfXPfQP7qdATxm1zorxhhePsjwGBVJ/VBR9kxjUCOgH7cGNIf4LqGHvAy6oXd+MuE2R+oVc60uPvLHCSmQH+FrwwqxMJkreEs7l2UX6PuuUgesSEuddkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719039743; c=relaxed/simple;
	bh=XZ36sCkkGkVDPZFQg8R64D9oYPPaC3viNSZWxmKG+hQ=;
	h=To:Subject:From:Message-Id:Date; b=ZoyWoCy0iAFUpnRig91NTFnIWpMe7kv5jxQLqmqtrxrdFa1Zh6KoqQHTGA7L0xKVropV0qe1wtuEP67oXih2jAB2QbFZgfA8rPpBFaaeou8BtgaaF9B4CAYQTKO7jp7kK4Gdw/i7IDDiIOhcEUt79w1jkEXfXMUXQgS+VGBXcZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyK6yTvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyK6yTvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A98C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719039742;
	bh=XZ36sCkkGkVDPZFQg8R64D9oYPPaC3viNSZWxmKG+hQ=;
	h=To:Subject:From:Date:From;
	b=pyK6yTvT2HoduvB1+f4pqnd+kd4jneBB8f4YvJEAO1QRSWUc2ujXr/UkFBjSCFHI6
	 RfMwuNL08CADiFMC8p7vbKYbSOB/Jz6eRVlbaswwNcI2jyE/oQG3NbMvdkSh4VFQf/
	 iKuzlkWBjTV0w/scGsUCMc4ZjK+cot/ia2j02WXnrJ05VjkwQp5qHs4/VGEjqrSYyP
	 dkESdq2yZCspHZs6/1mG9/4thfAAahIBjL0YvB+HkgqQt8YmoowYKybrJyTeglEg6E
	 4qTi+4H8bdrZVpWQ23h3eK6SuJuL6rhVr0KonTnhvh2EECADeyfBMgfmHL8jPcyjjO
	 DaZA3AXd1/Muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C670FC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903974278.22190.6915284326874965182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9c4b9c5edb266adbde545b833218f5149ae5539bce83bfe6fa1640b07a38fd
Date: Sat, 22 Jun 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719039742
