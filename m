Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE719046E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788705034; cv=none; b=KddgYA0HsSrCn8rLpHDGxym7LhVFJFj79rN551KgsBa6Qt6oREEp1w+OwGA/A2z6T5FqTr5KC29GP70FjLJK5IKA1ShujXvbhteR4Ot846V33Xyak85vKdgET86z0Jzf0/MEWkrKtNsXScNvnBtzl7PPTplYeM4EpaYWpffQgmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788705034; c=relaxed/simple;
	bh=KZeBljXex2uZQ6w3szJgR/HWXVcB3F8E8vLmyPFqzVI=;
	h=To:Subject:From:Message-Id:Date; b=dRzlaLgT+hrw1KD6nch7O79wMs2ydwkAaNS9tNs4m3OpMqV4r799Z0XNVxym5O1G7DEmGGAu3Ild6oqQdhMdRg6SK2sAySg3fElt8Ez99xtMOVYGeqGmwVLC1hD3rQWK5lNWSyeEsfX3jai1pvYo0k2ZsmejQ2eGjXUz5C7kAfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnhOXGCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnhOXGCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF9DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788705033;
	bh=KZeBljXex2uZQ6w3szJgR/HWXVcB3F8E8vLmyPFqzVI=;
	h=To:Subject:From:Date:From;
	b=GnhOXGCBz624t35o34WaZtNlNob2lMS9zaA4/tIdvLhlO+gPo+sMQastQbLnkm6tL
	 SJN4ix04nskjScnkTnWe75vzc99rySmGSVe1Glf9e45HI6amzZ91v1lnQ4zOxrvZxO
	 aMetY4nUa3sBrnvJkSqnv37H46zRKEsyStrITwDR75Lf/Z3ieJ35VetW9OKjgRw1Mc
	 FdEPN6duAOL4XACFvEZMDw5mSjgsoidwVeQaiLTuASdZNhjy2MUN7keOSsPkJ+5Njb
	 m/mEC4X0BU0qauvml+QxOS1+nSob0muz3ltqtpKepc7P6Zru8JPjjSdAYZotmjUe6+
	 4Phe2LUiLFiiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA2C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870503369.21267.1950675073865395671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd4a1c34d95812a799a87e702e7783283382ea1516eae46697824521ecbbcee
Date: Sun, 06 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788705033
