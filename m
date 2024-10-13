Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F612F34
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728862554; cv=none; b=aCs9XYyaYVTtE571Hm63l4iOUzDrFUJwcFeNxKIU9nGaVObfEUhNr0uCMN4PJUf2+aTNw+iKvMYmXhbIcyWbd/s02nJQu5+/V83yFPAgQWz0dTecstNIrdt+qeeQbgWJNNFiJBqenxAol4r9+tr/KFBLZOCmwZhD4QQgwZQ+OKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728862554; c=relaxed/simple;
	bh=QXdg6daDK2VqIcx3uB7dMGa9Cb4mwdHy3S04l76YejA=;
	h=To:Subject:From:Message-Id:Date; b=MTcbnKZMQoaIk9I60i5yVbS0QWZAQGzq4/A2cb967+ANMpg08uGuFJI1Q72V6enQRw4nfn4t1aS8jEx3HfnqqX8hOuJPXwDC9Q96LuvaWCtgMclWdBwEVieYFYllG05klGlYuATQNsqLrSCPZ9+v3PBxnHyU0f098hd2A4OPs6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF7vECbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF7vECbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF508C4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728862553;
	bh=QXdg6daDK2VqIcx3uB7dMGa9Cb4mwdHy3S04l76YejA=;
	h=To:Subject:From:Date:From;
	b=PF7vECbK0BOgcTxTRFQlo6IkBFBxqizHN9xRRAhZapYb8pdBJfP9r43+UkQ2AuNsB
	 CSyEGRolZS+CvRoFXWIfzdXxbaWWrQ9IR3SZGw+VxivzgeF7znZqurnjkEfXa5mdmi
	 o769CwAeW3RqVpgCuu34JQyZw/xY51WNutC6GaDxBknDCscQuoe0Zwiqkv1yV9kfex
	 BnkQ27UKGs4a6yDPQ5dfK62Ub/xEFwwd1z4uQdkgQPW4e9S7E48t3eB/PwPTuZo2vP
	 N0koOODdxK+d7vKIgSYHTKblF2kIEayVjdgRfp1mGqmJHjjASVWkWuaNOZL7bD0wtw
	 s+Oj8w5b/GOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BABACF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886255359.6875.3373144399965900100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29d136f650bf17a07fdcf1b6b9cf8c2c39b68e2066ff539f0a90b1e92917838
Date: Sun, 13 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728862553
