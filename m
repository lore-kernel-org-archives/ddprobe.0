Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A40A926
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735260954; cv=none; b=j6ADz5WkcZ0ArH2YVZXfMNRdrFpnMJWc7r0zY0E9XuDyBvcJbIvFNVnKUqoWcmp6aFXOqZDBN9nxcf47/rUuOEGcTWbOUI8tPJEFE1gUZbNrJlDy60/CRBQMWhXThIOzzIHlGolz9Y0Gz929GJue6mp0CtUDdOwcp+aH9dFu420=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735260954; c=relaxed/simple;
	bh=E3wrMvYHJ4DeB/0F4lF5qzFVyOZny4gukntp98MMPDE=;
	h=To:Subject:From:Message-Id:Date; b=DUshhOIM+ywzMN7gSWpyVwKLkVKVvkiiuoDAwkH84kajxkkF1rggGBDjW2Ymcz281wzTxlulx38XPK0FO7XdINjykKj994sdTNoeljFKpUxksTpXYmd5NwTlzDvqORT6p+PbobNx9VoLIZbIZpPzOW0jclM+sPkzlKF1YxMYmng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLEAg53O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLEAg53O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5255C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735260953;
	bh=E3wrMvYHJ4DeB/0F4lF5qzFVyOZny4gukntp98MMPDE=;
	h=To:Subject:From:Date:From;
	b=fLEAg53OO9MKE1E2ABL92a3TPFTpKQDfHybtbOaJJ223UPOssIyHVGjKnpb3e18zi
	 KT3Bfsappeqh6QyNMN7+1nPZ1FhrlgbGzxJzthbba+2BVlUgMp+i4HRXJRL/sXW3fM
	 WDSOiv9Xa79RmQhyGdrlGuavQmZHe4OvwfUprYZDPMkoU4/PswN04jKzWkW5xebhC/
	 D13gJTgjBNXbeHnRG6os7b5ewMrgBbCX/tEfUFEKizOimGNMFmO0cAVbWahlAy2dMq
	 NdMUV6m2m+/g8S0jQAHqa4JEl5EAkRk2VJV1+ejWdnxlXxR/STmYRRidjmUoJgTmiN
	 QwfM+dfo3N1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AF2E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526095361.22012.2646588740903964610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe6d3ff0be9a292da6dc520c98a761a1d9eddfd1e89136a2b2840e836a43639
Date: Fri, 27 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735260953
