Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28006291C3B
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753862394; cv=none; b=Lx5Ah1LfeAjomtes1gtcecq9VrdFSRmdmSNmoAMGX/dgsdgPQIh5HXgh6Q+6BYnALJySzJ3cMdhR6tWdlqQSd1P0KN8MwivMiXNP5Hn+o+OurAt6TpeW+l5pVJVVPZdIYq6TMLj+xCh7clzCMdy7ZkGzoro+esZMZ7IpOvVbT8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753862394; c=relaxed/simple;
	bh=Nxdy9d5obJPqwZ7GuPdKVJKak8mlQwDvpRxLrOql0FA=;
	h=To:Subject:From:Message-Id:Date; b=pfJwO6Ydab21EIeURESSA6WHI7tFgQsKxrl0AX2J1wpb7+gXrl4rNFZYgZJR0ZiYoFBXjiA+e5NksX7YLm1OD6VfxUtI8IAaN7TkAEvUryEkfQuZe1Rt7Nu0z9zKlHpmgGyLHFcLwt29cZAMoBVV7qzGRBfXgSXYgvaqihFetag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msn/i8jF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msn/i8jF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8354C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753862393;
	bh=Nxdy9d5obJPqwZ7GuPdKVJKak8mlQwDvpRxLrOql0FA=;
	h=To:Subject:From:Date:From;
	b=msn/i8jFmeycRCB6eZbZbuf56JojiZQyO9ffVik3gcmFjXX3tN95plsCE+1lhBs13
	 kIGPiJmOFd2O1ajLXR+y9FwXqUK1gMvqq8kJtfrsXCxLvwlsBn6B1L8vWrFNff8hvA
	 6Ct2f2o0vWbTHUyhlRcfN6HBhEeGyahWZ/4BtqDQo2u2x2GQUdjP2TjDgRYYL8/z1i
	 G/0pH7RqMRFf7iJv5VuNt3Ag/XU1FX4lI2oiTHbMJmT2bYGwrQfQ0zD8cCcbMfEJ3k
	 Caub2mNMXGD/lIS8nbRyZx4R2/G9xNA02ZkepbEsETmcA3aaDgmcatiDW6B/qeunXw
	 7QK6KbvTY6uvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211AC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386239358.7501.17010073761859497289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7174c8cb4c132f84a3e0fe9fc3ec2d19f346f83a5a21f34af3b675ad09f1f1d
Date: Wed, 30 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753862393
