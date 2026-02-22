Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE28C8CE
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755894; cv=none; b=eM6XmdK1lLiz3PVl85HLyZMKEE454PyqL8Pe2wf8NXrHZaVwMsKJvOIe5oNfafR7GOOknGqEBjUFKcN6GaY92OSOzbRukgU0DcyYXVFYFnQleHpvSKuRm8fGCji31buMuikWMt5+1mbRilAf9j87UnzhdgcFAj+UnWvDfElPyp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755894; c=relaxed/simple;
	bh=6CUD6wGk/MU02xuwiYb4rGyKLREwR6At3y1Y7e6U03A=;
	h=To:Subject:From:Message-Id:Date; b=oXETYOEX7nG8FYyVwBN6jYeccfxBYVHX4nAl4mm2Yzs5gLg8JEUFjsTvkaxly258qwMllw8hRoBXxjAL1AVrSRSsMg5wgDhge4kCLm/0w5rirCR4y5c05mwL3VhbjplC/3jzSlAFcn2w6Hx1Kp18AVVEMFFWuUYLSjV8wQOh6Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AguHHTee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AguHHTee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A1AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771755893;
	bh=6CUD6wGk/MU02xuwiYb4rGyKLREwR6At3y1Y7e6U03A=;
	h=To:Subject:From:Date:From;
	b=AguHHTeeoK82v27h/YYXHduY0Pml5yf4P0UQNtw8VYHUhHoPPQZTyKnlU8RlHGsQi
	 qF6yf+VkVrc5szYtk/iJl+MBM7sLCXSq7NUkr0Hrm14wxwHjDjzC4qalZU+NWT3nOo
	 wvTmrAzAx+IBf6C3vR3u5EFfVfKnYdwZGCGKsFCWF9ybDkfApIpwdfcCM0UOvY0wht
	 pjOX/EdFHgM24+l7HMOPSPPADJmsKXswaEMQ3H4O0iADH+TF4dOO6TgwzH8FYhc+a0
	 BHPFS4bZ3KzOWW+m+Nfii1xSHtWzEyZPCuxMIl/SeITEJ3pmAiwJkNix3d5UpQ7Wg+
	 qFrzlnzanDpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA6C624D9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175589358.13413.14519699610741125794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f829a250e861f89c8221cc74b23777aac34e9f90d6c2d5eb6496d1df613f8a89
Date: Sun, 22 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771755893
