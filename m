Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18233225D6
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758257394; cv=none; b=uQ3R8py2eO8dRiEkDGa+90d6xB+p/5wjRzstrSf82J3oJ0NvF4o+G9MSsZUdEVqXQsGBolsTtv1MqjqdANbBCF0hCBvbAnVGm7xljbRNIJrD9OrdXmXyP53nFMMnGjjAUXJSmuzqgU7u2RvT4bs+VGolo+pyyoyBC2opk+uMzzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758257394; c=relaxed/simple;
	bh=HYkQowPYfvvt13fVbkaPbULo5jkfe8/koW109/Qm36Y=;
	h=To:Subject:From:Message-Id:Date; b=Gi4YcQz34X/4pORtpK9963R5zv6iomUdl30o8fPB70mRmOT1cXNyimpfwjoBbUKcKcJri6Yy7uTw0hg0qOyZ39E0b9Yzumjm1wtTzU9UY2C3x+gwug7BeEAAoRBfbtIpinmAtYRdUCWv3ceS76Ik1X3tlufdAfE2um6mFmuAtws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3tU2iaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3tU2iaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD27C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758257393;
	bh=HYkQowPYfvvt13fVbkaPbULo5jkfe8/koW109/Qm36Y=;
	h=To:Subject:From:Date:From;
	b=K3tU2iawbXI9wMzu1s4xdhI31SUN7gVH381MkaGWJNkjGO4hrgvQRpwX+UhTSV2vn
	 0hhcLxK225EIV66jIraEaNNJ+/94WYp9bAhbXunGXg4MPubnWuepqS3zxOmHCtZRx8
	 OrwUwy0nGhBjxxho32w3e6jgLijwHWMEFanWY+7j3aMi5v9TjwK9XzZkN1X1d6G077
	 GxIAQGyu5N6qDWUROipMmWqULBhNeR/5XmZNyA/++a/SFxK0A6o+stI3DNSYEXq8Tu
	 oSW+TPQMoHW1C2r7EgIp8cFPxFjlTdXTo0E6sJQXcvMUOLefr+qJytNMEDxBZmNHJd
	 VLs2enEHs9wbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A9CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825739358.26493.13380242965378773788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b548d83c42f87e8ea36647f6258313addba8c92e7e1b9a93207934656825186f
Date: Fri, 19 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758257393
