Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C41DA60F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761491994; cv=none; b=Q3oQQxmnRYx7FaD1wiGCGGky7bEQmv2rLdGB21L5I8rSRVeGWi+1JDTSeUoAmWYUoNeSQOZEDqhyGDIN1fsgbb8NEm/twEP5whZ2d2N+h5fXpCnqIhz01DaLKvzU+x6lOJ+dan2QdqSgF24N4r2h2gQATQgz4HaT6F/PX2y+gmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761491994; c=relaxed/simple;
	bh=OVwinhNjI7URkOIiJDVDk8OA4MNgkjwRuQB+A+zk7Yg=;
	h=To:Subject:From:Message-Id:Date; b=Jw1aubd9Le9AwlZsMgG57yEqbdQSeRKiUsDGk6GUQxq9yCezuZuhkA+kxzs6umxP2Fye7jimWWTfXEbl4FBoagewGuj2ROyqF8t7Vs61FmOUhMb0/91RriC7ToZTZTZILPfQjo0b4/M3a4RtELrxAQ8SFsY8T/9l31bErdukRwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfMZ2Usk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfMZ2Usk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761491993;
	bh=OVwinhNjI7URkOIiJDVDk8OA4MNgkjwRuQB+A+zk7Yg=;
	h=To:Subject:From:Date:From;
	b=bfMZ2UskW+9DXF5zfNDY93A8IZXbcxmgZ8CyMvWui6RFeg0C7HVT84KCfdy9zl6hJ
	 zhiwVgbHbOC+7u5lGSJkWR04w0j38G31ZCQfVHGqGvKFVxSQtA82XLbHRi+9iayhhZ
	 6509R5PuOil+Nowu0QjRWFjULlDMpv1i9qM5U5lDRWx8QT0M5VaqUys5IxYhQgGrS3
	 HHXq+9gVoarFFd/dJk6DhuEN4dGrcuEJvlV+Azy7jq9rYQXOHB9TcR7lckO5Jfb+0y
	 XpmhO61C5LJ7V4FZAhy/+Ft6m2zHpZM1SKxVp0LeaEE7gJWgAcYG2sbz1cE6P8qYTf
	 xanteJ9ojSm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945AFCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149199357.29712.3936534258294684372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34288ca4bd1eabe9badb88cce43f188544b573dd079abf23afd70e71c7b66c95
Date: Sun, 26 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761491993
