Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23472280024
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757999994; cv=none; b=IdkNcbIokWb69n9/i/nE0zyyRtli29rRKL8NbyZ8RPRDan+EXQUMyQRZX/JFZ8HK7obh8ZKuCpGbh9KkVPCyKLisxhW5Xq5Q+/Sd1QrUBf9oyOmQnXuuOLFdSMxmISj3oZ546pMkX7T4d6Oc5YVc8B37RdArOHQtmAsXxyffWBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757999994; c=relaxed/simple;
	bh=D+mHM94thHea0KL/hufDqxdsmZQrWX0eAlUUk9IivxE=;
	h=To:Subject:From:Message-Id:Date; b=FjfJwAx4/LeQT9Quu8mvMl3Gv23LT0OhZcdx9ZqFVf/VKmJpRUanrqtfK5OHEdcR92W6Gvx5uNnE/IEsD3PA7+X+ui6P2wgwA565Q/uZ6ZKYIsoVvVlUOpdKmaqp3dTDWkx1RBWSGPJcgnN/zqQsBtX3wL5BWHbfNVBJaY2+2ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mt3de9+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mt3de9+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF0FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757999993;
	bh=D+mHM94thHea0KL/hufDqxdsmZQrWX0eAlUUk9IivxE=;
	h=To:Subject:From:Date:From;
	b=mt3de9+A7jVlq9E6kCYVU32On9JxbMjNfvIUOtoXE/iZdVLC9Qtur4Az1IqISorZ5
	 5Zcrhs9DgEj++yNJnRqKigX0EguX0rqNYozdhOwiwJEiqleF6Ddc8hoIFBHxX5sSSP
	 7M4NqNQbyAAYTpt6bTvjfGBSC1vwWF2YrZ280yvur4zI2eN6zdh0hm/bzKm8m+HAhe
	 e7FAOy1m1a5MiZvqG4SnHtT40i24Jvs4WApUJedLzouh3OoDKE39c6FZhmlEZZtQNx
	 0rU1srGnIBiWc73+rp1eR/x5K7/+85xYXQcPt+K4QZDp/cD73wi1Wys4Mk8rT6B2NP
	 FyFmAwVKL8ASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DFCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799999357.31067.14304580116647281879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e9268996a7b25d7d34049afa43695df18da5678a987f2efad2217c78fdc1fe
Date: Tue, 16 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757999993
