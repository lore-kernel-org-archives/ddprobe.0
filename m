Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD336EA80
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783859914; cv=none; b=uGcMaSQVRmGmqo2xXej09QSsV5f/shdquyzu75dYRU+ZSlMN145X9DqVZhy2/opm9bfcgJ0gjDQracvqdS7DMuAIDks4XHBPWEwak3Q9ENvlVqCjlqTcMJcrTXxLw/DSHQi0XTiOcUcDc8s0RU0gQNVHMpdvH8DriHLH3wiipJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783859914; c=relaxed/simple;
	bh=x8TnB5JQKLtOjS0aqo7OkFF5XBjwRe/7L3QKL7sjTLY=;
	h=To:Subject:From:Message-Id:Date; b=UQskvh/aVh41g5bksQEUN2algRwKgsrdy9eruGXrjL7oDm5CCe8UCBp80W4PWRE9hXo5bC/+j12wUvgW9ZQjRu5gYuXAYeyynGZtAOfKupURUvR3IojEYhArc0gplaJqOYwI5DY3LV+xQKwIcA/wCZrbN+TbzIW1YM74bQCjfP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITE+Sac1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITE+Sac1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9EBC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783859913;
	bh=x8TnB5JQKLtOjS0aqo7OkFF5XBjwRe/7L3QKL7sjTLY=;
	h=To:Subject:From:Date:From;
	b=ITE+Sac1WRSJHq3d1nj3Nfq2rXMawugPnxVUpsBWghM762T6HxHDU3GALuwqRHa8o
	 AVPVfIpJhcZsMPL+ExfibK1+GYYfSX9GWGHam2WzmQjD//j6VA1OwNfBXlFg7lfmfl
	 ql1Ejyj27TQEcBife+2zGn99sW3g6zV59PkFU9FBsM/zE4Wn8rzyDXsgAr3XjWI2Tb
	 zfdeeI1nbbqEnTr2d2JJId1D5i0Fi5L9ENmyYNKXqp/XT02DjAC2rpqlnKwis/5Q5R
	 R0I3sxCr5qUOchy6nO039xC+sfm5IYm3JnBHKMC97VsX6RDYLCQ2avdLO6IPA8CF78
	 efYoEeCPPqv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B69C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385991368.20599.11078139284353965389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1edf3ae24370ae49d3457c82e3078e5cfbd1e1e5b91aba5215666522beb5713
Date: Sun, 12 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783859913
