Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92A2EDD69
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764182574; cv=none; b=I++LjCpBaDMeV11dTPyyYrsTVC3Ax7eXWOAARxiZqrMVOrpK0E2a+RIgzh6MySy1/7QP0a9YyaHnbHdIKmNJXXGxg4+3sdy9RzpV/3Y0RN3xIUoOMghvTWD07U+pkfzo4/A0B2I8z1Q9rgbW615FLAwdsg30CERFHoV1fku2/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764182574; c=relaxed/simple;
	bh=mp6EY6uqM4SFOm+704SpjPxfxsnw45+CO5/JQW+bkO0=;
	h=To:Subject:From:Message-Id:Date; b=S6Vr6WHT/eRFscfIoW0qHWlCk5qra9n6tyIXiHCtqnLEz74b/xyQbjrWnjvpi1Xvm8LjuzqXwDGF7n4BlgX9iFU3iD3mma3EgG7wpjj7y1Y5ZYg/t4i5YLgaC6h1eYvKqtbB5UggB11AnQz+cZSMtywFKs1Xd3Yd5wI7JaQCyWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPexsDni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPexsDni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD8EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764182573;
	bh=mp6EY6uqM4SFOm+704SpjPxfxsnw45+CO5/JQW+bkO0=;
	h=To:Subject:From:Date:From;
	b=HPexsDnizfac8Y3peaULWyDuEic52E0IWRtjfgt9X1x8SJu7EpEYCzF9KNzGPOpl1
	 WU9H+aUbSeNgoEC8CeLcInOoNJlQbZZYVUpztRwYzMnB7ZGFajwAQJxKxR57JLNJu6
	 TYcO4L1m13ZfIY6lntIOrzTZo5hB7t9P1c+Y0J0CT9ZP77QgxTVJl4yGSvQv+rfbm5
	 osNoKEt9CxO5QM7f3IAGYv4FBoPvXNqq/4aAWv9Jg3/TZz1l7zgygwfqq9gS5DGed5
	 UntDh2eoSzAHRjGcp6tvs6C50GJUAguvWpx0M7xkGTIJ5uOLAmvyVhw3D9QY9vPc1C
	 MBcK1Y/0iBy2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AFD11193
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418257358.26471.9954128540282851268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0414332e05fc19036c3da80f9324ccaf1f26b3bc732319b33f97e44921bccf12
Date: Wed, 26 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764182573
