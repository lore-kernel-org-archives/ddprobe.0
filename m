Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304901422AB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721773554; cv=none; b=uYHk5IuoBcPft8grzAzKvK3TKV/15B5+18j8CKhdcdw/iNjxoSW8Zm1eBBixZclHYVbAYhAjItJyoKK136mI0V8rZqIY/yGpO/cE6cqgFwNEd2Vxy9F8F1xhs1QReqECXe7PxjQCBtygYCGJX+EQ87KLm2ukbsEM9b/Ppea6k2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721773554; c=relaxed/simple;
	bh=murg4MXY08ZlSQhfkGPDjrw9T6db32u9kYCWba5v664=;
	h=To:Subject:From:Message-Id:Date; b=JzVkBJHCsbxVfJvvjztEwzKFc//zBrYYxOk4zZYv4cwESKAOeAvZzkkYZw18VRegJZnMoI5PhzyupeZu8x+6lFGmOPcEJWULuzSHKxQIZ6pNb5qr9AZ3s/l4WpTuS5d8k7yfUxE2eVE2hKDei8HHvD8pp2BPSDfXWan+5lF3yqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwHmWDUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwHmWDUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD6C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721773553;
	bh=murg4MXY08ZlSQhfkGPDjrw9T6db32u9kYCWba5v664=;
	h=To:Subject:From:Date:From;
	b=UwHmWDUI8KDkWueNoDxpXEAwkklm12OlYdOF0hSZrLxh6vDFwzBZASq+9CDJwQ2B+
	 b7NmpCwqNJTFiIQDVl8XSvVn8EB7Lnk2e824aL9qjqrjbl02d8kbm/bheZDbmqc0lU
	 UgmtJWaKl1diGsDPVim8xG1cEjgt9qytdx5JVSMhdQEJchZPtIwGnntyCntJ0aYPVL
	 sDHX9uRGZ3i6SS6eS5iI8cctHjcE5Kii4IzOhgAcQKFhTt4+cy+aC7de8Hnb8ZZINu
	 MaaPHDEM6UPUQOcv9i4XW2b7Sq3IzlAvX4frrHhRLEatiVRwhOOmJLzoAR8xJMUVhR
	 Lufo7G7YUy5Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B4C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177355358.16236.2509813737308859884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb3585b76bded6bb461e37b01d93166f2a49018bfd4fee8896232a1777f88b4
Date: Tue, 23 Jul 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721773553
