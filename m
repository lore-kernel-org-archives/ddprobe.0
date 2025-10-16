Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235BD320CAA
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760608794; cv=none; b=SVMdyK2marVsndG6efn9jVjDLb2pHKhtyN6a/huRhu9Sp21y4wKoK71M2A4D1a0vKZKwFXGkg0YRSUmIAnZeAPBScOYJmigmdHHyaz7a7oPkl4G4uiFWubWtOtsPZcej5zd2RkRkCv8aW3GJNtCb7gB2pPSwgw7YY76ZTVBG0h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760608794; c=relaxed/simple;
	bh=vpWOfqToSo2CH8BF80sVa7mvvI7GBHcOYKMzgV1qe8Y=;
	h=To:Subject:From:Message-Id:Date; b=EYIpcDeNCB8LOldoUaYKXSl8xpjJBjft4EpPbu0BSe03bMi2mDlrV/AcnDtWnpo2dfpSelmBim7cAOfJEI5L2yB8b1yHITfp7fhl3NBPeQLAYcksMtINnSA12gghbeqYYWVBQp+dNZrV+1KdYJ7A68N/oEjEi4P4qJE71DeGsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNdNt7s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNdNt7s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0345C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760608793;
	bh=vpWOfqToSo2CH8BF80sVa7mvvI7GBHcOYKMzgV1qe8Y=;
	h=To:Subject:From:Date:From;
	b=MNdNt7s68OLKaDknSWoyql2jAl3ayGqQYSpAaBOnFype1nZvyZ6Q4YW9jgdLXRj6K
	 ofH+6RmIyzIQEJ/ZnMN+Xv1jYZq2jOLLn7iScR6pcWsNSSwEf9sgwQcHZzFp8vKFc/
	 QdoBd8qZbXvP85LZyCeGuHPmxJcNU1qTYrX9GSMC9KdTBvTptFW0zEZZos2nVj8apV
	 dCW/sJ7+KwReLKFRY2Fn1HEFl6PUTrmuIEojDwj3JKywXzLl0BLwfwcCxPEWUyQ+vL
	 yXbqfL+clFfsCUnQV+FbGno5QZvC7l8ow7wRlzc3oh6kTmq7GOuV8+u35L4bn5v8ow
	 b8Q+j9VvKOHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCFACCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060879362.2098.2339337672432746049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f9545a89593717e0ee43fc1075a2d1bc85336df49ad988765476f99692ac47
Date: Thu, 16 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760608793
