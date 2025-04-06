Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459888C1F
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743976194; cv=none; b=ilkDAbXKioYfiGTwF9tYXpuReuSQY0e2cSk9p8k2VuLN2zvDvG4PaWv5pYQZpDELqJVJ+yJQ9+LxyTfb0547iF0ZChuHv5w8ihLfRtr8rrX9c9mSiiUipi/Q3iP1tzUaCXrfnrBmM9PUB2aXKJDZl79bAU5loMv6KNWvHashfl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743976194; c=relaxed/simple;
	bh=kvW4HEeS/VQth608Gfu+olD9bym8IIBb7dnhFoQtrTY=;
	h=To:Subject:From:Message-Id:Date; b=svdRnceBMS0JZX+HNfXf+BbvQIwRdslfeK3Y0bjCtmFdf67TEqCt8GxzN6oA/RHqx0aaIdrjZ9K+28UqAapAOuYfSzA5q3AncUnVnZYVSNjFdx9j6DT+zpug72giQeY52m/Xxr0i2EtAIMXW/Adb2meyBvuccu7Exjg/Wm61xjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSrxoV5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSrxoV5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743976193;
	bh=kvW4HEeS/VQth608Gfu+olD9bym8IIBb7dnhFoQtrTY=;
	h=To:Subject:From:Date:From;
	b=NSrxoV5BTctSCAA5woC6rH4HBfXAN29QM7rF019ltr0NS3KSIw+ylx67mE91Jp2vT
	 5GiIyNDdo4W19y+XCuacLd0ZwVjjqZVF1WPJB83fLnkGXB4EfP3EtmNDDdkh/zRPbq
	 AVjuCwpvNdJKSNTyI+FqLROpFTSLNZEJEm9x8jYlMJHUD0LqxurK5kOOqxv+RLOlmA
	 KcP4jooLrnNkV/5Ci/fOS7+dIUgRxBhoSxMfrvZNTuKZJVuyaFK86LSyM0xvRxKKg0
	 HaA2xBXwYveYh0Z2pzXKGt/EO9FZD7LLOF00VRqhqQxO0PCr5sjRaRnTM36LH6NiNX
	 XF2L84vuVTU2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9C7C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397619360.2257.3396683625780159968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816a058fe8c2d9cdfcf3f9032396d775898cbb3cc8f8a484835650ca0807a61d
Date: Sun, 06 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743976193
