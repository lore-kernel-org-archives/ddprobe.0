Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1963523B634
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750975794; cv=none; b=kCMjjoEPfg6I+DtJyX7LXxmIYQ5HTL8TDcmRO1Si3wgCRd0FbQJEL8ChZKVyJq73v2X6SSnjKNaQnz0MgAnZp9ey+lmND3XkG3Bx2GBvxdek5V+hsLtYfEsWJ1LCkL5AzcfyY183bqIxXYam1Zqif119XdWZAALbNtVhl2IKyK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750975794; c=relaxed/simple;
	bh=mLjd+hl+FqU6+ngB0eThHqHsiC1F8aheWdb7BNA0yuY=;
	h=To:Subject:From:Message-Id:Date; b=XKZgkjP4L4ouJM7yQdcdkS/QF94TwxufWz2gMLyiWW7jhIt3WLSJHqxf0avaCs5LZFuH5MS/JViVx5cF7MJFHQOj99FB/iaOo9ZFUYxy0jpYRyBBppkPol/So7nQaDVumgcb7Ls6MTcgUmX4ra5FZmMOHRT0LsFQXXRDH+PR5NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXh+N4Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXh+N4Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3480C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750975793;
	bh=mLjd+hl+FqU6+ngB0eThHqHsiC1F8aheWdb7BNA0yuY=;
	h=To:Subject:From:Date:From;
	b=UXh+N4OfC/2pYLf3sJLhvhdnKKT8cx8vrntsuHIRhIM3WNsXIECj7/edMgaSEx39t
	 uP1GxJg04bw46K8ROFomUMoTAxfuqCFQZtm5z8hxixu3KvqDnEIvwB2dQ4DqtuY3Nm
	 2IZS+Lu/OYBJHj/XmpOuubjUwb+L9Mh/s6Nbst3BP1UB5sztr+mseqlscNeKqqzlvp
	 c6GIa8H58q/K3YXPflzFTF3fvKIbEgVt+/uyExmzus84jIkacLLqHonh6PClGK8DHE
	 1MgmIW5Uhbb6dSe3z85P6EYf74cIigA8rBi71p0BjURfBmf87PEjOn/20q0TykaUDR
	 5hSv07lJXG9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EEAC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097579358.7170.16279076095454243543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4573e866a1936e16ba464350c12fbb8e79e4fdad747419e5d39143358e8c79fb
Date: Thu, 26 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750975793
