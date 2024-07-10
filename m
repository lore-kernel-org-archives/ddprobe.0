Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D841799B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720583183; cv=none; b=PaXt57Ibdmu5P4xUoqapj1JW3GOyUiB7nX0wAm2kXZPCrINuQEJVqzEBv4De6kfwndUOzXzJilpOqokkJ403kC+AHZYpehVmiB9Nj0lkTOWcMLQ7RYzIaaTHUUgPTIgYcP7hxhHuQDyeLTYXDvBxvCeAKcl1VVT/ycenf8MnHsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720583183; c=relaxed/simple;
	bh=4qlGD3taLWQa5v9QIrBWrfPPOSA5fpi+cqqRrJBZn/8=;
	h=To:Subject:From:Message-Id:Date; b=cIyWCfCcU2wxWj7mr43Ir4wMT0z+xLQI94ugtu6POBffP3tVuSt1S3fy6Q/E91ySSWt3ePQ6TRP6UrvcyiL0hl3HmQc4Ua19+Hsfpf336TtE4FRNEmb4oTpwNnxeiyI+3ICWHVjgIy61eZ49zHrSqJghHN41ySLVyqCkjApyzFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToF5/0yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToF5/0yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A48C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720583182;
	bh=4qlGD3taLWQa5v9QIrBWrfPPOSA5fpi+cqqRrJBZn/8=;
	h=To:Subject:From:Date:From;
	b=ToF5/0yZtUrF9eiV+6SeTBdVMvMYFUTkCZTd2r5YlnccVsyZYaNuDDE8T2DcVAKus
	 Ghqrogzd6DQoRmY2wIfZADtukWCqrLzfpQU41RXE2FW+IRrRWpMBtXZHj49uJ+BliO
	 d4n35uV9SGJA0zE5zYAhBJhvVV8OVOa3AeWZPQL/GhVV25HN3/ZVLk/vA4qQsJ3CW3
	 ioNMrrn1v34sX6JWxN8ieFzeh3ZWEjP1Rp/pqdJm/9roZIxMOz4ndyY9oQCV83iCxi
	 RHCkCZ4rpGbiNgRDgXlAwtbjlo43FHguwMONx9GYP5AAR5NMy7vmxCP8EEK02JSY4G
	 +t/mnt0VADlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08C0C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058318278.2026.269797546952297165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e12dd8dcd00b4cd6673b68a69cbb34f3714eef7c328bd3332594ae7fb4ca13d
Date: Wed, 10 Jul 2024 03:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720583182
