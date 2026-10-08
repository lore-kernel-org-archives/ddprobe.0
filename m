Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655DC38C2D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791487834; cv=none; b=c/2KMq+wWOeED1KKba3Vdm66y2XE2gVr5ibjaekdERB9h3/H0XwqVnGzF/o8Z2RyUp9kQN/ONC3C+3Bd+C4g5h22HDH6jMrIahzzzo7ZM6QevdjnqXM/KDvNJmxQFQhYW3cNJfJ0lWathFbstc4ANl8wdm8BrCNg2fVO2vgADbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791487834; c=relaxed/simple;
	bh=dT/haiMDTbc5sFS+TWGQSJX5tgQvsT7rzY22AVvr+ic=;
	h=To:Subject:From:Message-Id:Date; b=AM2DmQ6rleFIgN4IKGJ3AyNz22D6tsJ2xTEaFGoNhG3y5MuwiFLF6X46m13eUjf/o55h8/Y/O1OkE4BvnCetAEi6CNXG8xQ1C+Kcn7q9H7e586bApaoFPmDlodXXFGJRlXhKdaTk+/5o3LMz/99SL4mG7edOaaPLVBZz9wT+4GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJhQUHq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJhQUHq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD452C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791487833;
	bh=dT/haiMDTbc5sFS+TWGQSJX5tgQvsT7rzY22AVvr+ic=;
	h=To:Subject:From:Date:From;
	b=SJhQUHq8eBDv4YliuB/ohZzV5ExyoYRKSMO4GWbb4UqxJw1Jp47wskJdHK0BELH2N
	 XUbGQHJEy96tY4nFDxLjPyeak4DbAWPI8Y1MGqUYIAy/RRbAmlK366PNo3Yc5O3Sbj
	 +VOimP/bg4Gsuc9FynU+b+yX1SzaCO8tTMtc8pX/M6IusdoXe8mXMzmiMQE7p9mvhG
	 1KBwDAqi01YF7IqHYeDWgTEERAh62SE+tLSwUnuYUZc9t+EE7FxfkQM2nSG8Y/gZQo
	 DDMjLWxQCdALd/2ISbXZ8kKyRsHz5cntWTXodJEE4KWplD0c0I5ecCxDixOxOr+k+u
	 7c32fQeX9HwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA740CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148783369.21761.14772144806589739980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4661ea80e6256c4f73eedf15f853fd60018f8e5fb7f3525f079261849b852e20
Date: Thu, 08 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791487833
