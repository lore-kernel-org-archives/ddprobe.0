Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3134E381AF
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772003694; cv=none; b=YQqwC7esVzWzrPMe6yYedWnfX8gXhL0M8ob4rhlrUK37s4FO3qJf79AN6L2paLB2L9loftdN+rcv78k/ifC+ZAT9IAYWK2PvpgQDHwM+UFRBnVqMAqNZfZR/quYUDp5OJv6ZcK1hhNIQtD6xJ1jUktTupVrqv5ual4vkEQnbTlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772003694; c=relaxed/simple;
	bh=ESDy3HEt8iLnR8rZRQYqihrzLQKe5htUMdAR2nix1gU=;
	h=To:Subject:From:Message-Id:Date; b=tkaIVFyoFxaz73ARfjOKsrcLkImAJgJVT1VIAW0wItdCS6ZUnH7Da6Q6J/G8OWeV2Y96GR70RdT7FdSFEoBiKnSa/HxPAcGHxRAmfBf/2CtdEOZI804DZQQY9A2zlAdhXsGmhR3Ct5JKyK7dQpZVebZUXVFddByOaxHYbSoQBk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avs7S5pO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avs7S5pO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772003693;
	bh=ESDy3HEt8iLnR8rZRQYqihrzLQKe5htUMdAR2nix1gU=;
	h=To:Subject:From:Date:From;
	b=Avs7S5pOfk6TSnmOY5n0dkOEJzEVVxfdM9YVhAjEyhlpEhIE2L2lmaGJzru8K9DUN
	 HyuXUbsWa70e0Yd5sJRLYzhBVupP7t7yA3MqWUKNl3ob66zd2fSzm++f0ZkfzdAwj4
	 c+WuiAILvw4oFF7YJmztAiiSVEn5usvHzcI9ZxbYMtGaboPBe0GzF+IIAlS6vXq6AK
	 2YAZhBlONdHiv0wMsDd083zAY7ZH4a4Gp6ikQ6uVNgXfVaWbdgeIFaiqmY9IAMUJQV
	 q+dAAa9+YGlgbx/uKBTBBAoCs/IlBMVI4VSB9kc8bBsQ1/fK0+i90EUYS4ckNHfgQ4
	 YRonT3B8j1LnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC3EF357C5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200369361.12060.16513728381956236087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71d24cd021335267ce8b447c8d45c9dcc7e09eaaca7e602e7b75647a4025f2f
Date: Wed, 25 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772003693
