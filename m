Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E61727781F
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740697135; cv=none; b=iA2ZLOofAMafnYOQIJYb4lsRo+8+I1xf8u7EAmdfgz4KZq41/4EsaEEL+NDdGUJOxwup3pjpqpit2OIVHBf4Ewl0jkR1vIFCe7uD9Dvujfb9v7hzgA/40yb1J+6u7aFp9rfALPySaW8e81HZlcHHlP3EnKgk0Q3JIoHsIKdpg+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740697135; c=relaxed/simple;
	bh=CF2MCfmPWVlJKpYGcSeT08tv5oZeAacv/QScRUPhNvA=;
	h=To:Subject:From:Message-Id:Date; b=IIeF9Tcy2HgbvCs9WHo/cBrFzZoH93l94mfRSNiJdNhcZi8UZDPdvtv/Nb9Mz2ro34PDN3VNlhTqyChMjvW/yXUD7U993SnMbesg/W/taopwLH3FLLo6sipSck79DtWNxZ/Z1hOBKwf8gpLmFYGuiBLE7N0AIWwZcWT28BXLyR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6i9Hxp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6i9Hxp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5685C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740697133;
	bh=CF2MCfmPWVlJKpYGcSeT08tv5oZeAacv/QScRUPhNvA=;
	h=To:Subject:From:Date:From;
	b=d6i9Hxp7jI2lwZNgwIVMPm6eeDTTPnIoH8Osk5xOStqC/VBKVCFArtQFoQipmtd5w
	 RsamAX8wkuTB3oB5YwMKj91JNuYRrkQFAC4cdr3MygES7EgfN8vO8FGigAExMQquWc
	 Rx89aTLJkY53c9ovQow7EKqSvNZXIO4ekpEZMgVcI3M1wZ0TKkjI3e1LGIIDRwhK/x
	 q2uk2R3WuCbOsq9zXRS4vokzqC/M/7e8OhzzQcHqelmBBVLvVWaC9iANTeSu38mecN
	 bFa/1Y49q0ogsUidHqlU+WNSreA4dIhHOhn0VSK+aayxULyo16C5G5zIW2Gxugz4rT
	 R0RHJ31ghFb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC1AC197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 22:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069713363.3169.11570719425036792411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07775b433152b1de00686418d723db250284eb1f4579917470474660e73a9ae2
Date: Thu, 27 Feb 2025 22:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740697133
