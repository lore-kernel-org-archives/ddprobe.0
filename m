Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD81223DE9
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777443454; cv=none; b=YS3ieZIW85RqZ0UZlK0r3aEJl+PzG7sZTBvJM1ddH9bCdGgOMt5pBAD4kGImNDI22vsXk8RKhUTqlelHliniLnAwqWI4iYLEbTha9254BXSKVjPQnofLLr3UMMn3RufYvjsPswuzM1eUugEj6mSp1uSY0tIibxSmL1IZZTugdcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777443454; c=relaxed/simple;
	bh=qyqi2JDmFPWZUiMXZvjSm+Sf7J20pk+ZyP3h5d5YiU0=;
	h=To:Subject:From:Message-Id:Date; b=NbeSMpp/eb+OwLRhUsCZG6HLootI7M3LQ4wP9cHEsjs/SIinKVlOvzaaDNbSJ4H4yv/g19z2UMPIVg1cnwdx7MRssCo5lSwunOY5++pnPAEGz8ZCwktlS9dSVj/7sOnXJ+ZlciLsgUD1rEfDoKD9tFtwg12LYy6IJwR8I7kPCZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/+HXKxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/+HXKxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFAEC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777443453;
	bh=qyqi2JDmFPWZUiMXZvjSm+Sf7J20pk+ZyP3h5d5YiU0=;
	h=To:Subject:From:Date:From;
	b=L/+HXKxq8AP7w63WwcwB5NDGaQfL03lxQKbhac4heHXLP/sokz13xTM3zLmWmC9t0
	 hZ1yEJepqtUm0nt3EKC3g729ydHCn1iVAlWU4c4OlaJKxBK3aS2VvF3EG3PNXXkCRC
	 ammhPQu9/Uk0Sgw/b2eP7QOs3FLFlUdhR6WlkWv1gYNhBk5JbXQVVsyvYbiZZ5Zlf4
	 EuKjkEDJFLU3haIwH9SjiuF2HoP4OMXvCMvlzvrBOxZLNzCQN6BifAevKBBJH73nNA
	 n90NWPgl+wYYz6tDWAppAyPNFwDOMqBodiGdfXh0OQpCIi3Xa79RR967x5OEFQmpeq
	 SIGC2lmZjUE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A92FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744345368.29223.11644716482625372379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8011743940400791718320a49505736ce5c8d7aadeb5ec5298b9193ee1348971
Date: Wed, 29 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777443453
