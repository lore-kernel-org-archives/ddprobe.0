Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5985D3346A6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787990434; cv=none; b=Sp5K7y+4UnG1qd1B5K/5Mk/pRbfwD8YC7lhR67OxsgwZSzQC93iFJa83CdkXpQ+5czd/H96hzJPBfEl1TOLjWOrwKe4QSYEkxyXA43lTM8ll2sB4m5vqa8n1KK24pAOOHhXHQYn4Rq4UcaBZpYhD0+kVHESwO+tTQ+qTwccSxGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787990434; c=relaxed/simple;
	bh=SFruN57y/gZu3hP6gwK4WAwL02N8/X0mIHzZH0AXAck=;
	h=To:Subject:From:Message-Id:Date; b=Zt1r1iTVssn7+PHRElFfWny7WB4IjO4RsXtQ4WjALm2ciCI7XtnU65Xa7jgMSHffl8y59IJjBjPEhWW+KJhKUO+dsOOMsUUYOVki6Rk+0TiMlRIWAdmmCvYUAzjAlW4L6p1X98KXMWaeb4cuNn82NTNBdXr97h5LfxKPprtIFmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRV0vG6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRV0vG6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F6CC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787990433;
	bh=SFruN57y/gZu3hP6gwK4WAwL02N8/X0mIHzZH0AXAck=;
	h=To:Subject:From:Date:From;
	b=gRV0vG6ymGbBtcINbQ/hpncYx96rJOJFwGVpKX1njh37drZ9X4+UPXZ28ijdgBggd
	 bpHdk0n1Fkjz3n4sRcg7CYFRLDiyDPomOf7qr2JU0RY1DE4lCcXpAaB9GV3nMuG3RA
	 8rA0g8kCJZAgR72JodShn0Vt6iSJMIZ+xec/YaVTFlgf0I5CYU0dip/ymqBfKkl/99
	 y9QnI4l0U8jrqbjTrLljyfaXuPZawr6ihlatEQxwHLka4pcki+02ZWXlHtKyC7xXQq
	 qxVBTlG/SsvFvdqtvBxhgazdpi7VXH8ALVnaewH1uP2wfn0N+J4CQ2JKwLxbMVK7kD
	 8Tw/EtEE/4erA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E5C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799043369.19897.12631307926784888700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8055f2304b9b1c65b62570dd69003e494d2a09e98607e1ad30c2e1a9318cb790
Date: Sat, 29 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787990433
