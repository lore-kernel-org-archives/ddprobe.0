Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAB2FC0A
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789570834; cv=none; b=ISa0vCOjBt9F5nEubQG7ptnHXwld0FLY3VqlwcBeqlmgGklqOOYRwNP2zWfO5oD+cVTSvztGR43QlSupotjEja1caxarngOKBsfgYiNIViH8A0xr4XMz2ZLvFBpJIgCqPHqSsoU9AWUJYLKsqC23XGP6UvXSswTdXOKhUH/hfrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789570834; c=relaxed/simple;
	bh=ij9SF+uCf5UmYUsRDFGhxdWfS2Tgjd33lR5fOFfllhE=;
	h=To:Subject:From:Message-Id:Date; b=HDPX6w1iOIhB4pYWe/fZvvfUQraIW5nQBY+QiF6+7mFkRVmH0tIsUJYspOgSe6rJetJbRxU2/6jLIkjiKbfdj1tRZFwzL/3P2pnShKXCb6/BUmcoMN+cndINvE+n6Y3uJ/7Uq42loJ4u9Rz2ZTMAry1NRSaHnExZqIVKu1sXlVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU6txvxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU6txvxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE513C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789570833;
	bh=ij9SF+uCf5UmYUsRDFGhxdWfS2Tgjd33lR5fOFfllhE=;
	h=To:Subject:From:Date:From;
	b=mU6txvxrcbh7zOorbvF+LUgXyMYEswmSfAHw/umFQ/APB9M7rA1BptMURd53+kLJF
	 ueEUihR414qbOfhxfsU4RbjdEksjox+koZLYOB8imbRmFVoN5t/y0SsKpI0YVyB0/K
	 oVI+YnHsqyfYTZTSZu/9XI2tScZPZX1f4hd8QKghuhr+RkjuOBbZa7ncaY9Xk0t9VB
	 Zat/Y/B0tqv5SzB6qG35KoBOmJYzBwt9vlPclDr70l8gTbVUiWR3CJPSk9MT5sJh5l
	 h/YbHZgiAZ9oaPUSFZd1ZHOqmE0lRpYafhg0kZl1+1tBf7Ww8rGiTr5j8vgvQO67NP
	 e3P51Vp7jAqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC9EC982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957083369.27888.15299650989646625608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86534cb4fa1f0d5e931a553495d0d54809b2c0a9f967efc3c3c4080c93f8cf20
Date: Wed, 16 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789570833
