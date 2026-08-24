Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C87A34A76F
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787590834; cv=none; b=V0z5Fb2DhspXbEtuxck5v4b4YHxoa4wdVzulnzx2OdkM2IsbpYkH5ZrDm5h8Q/q+YZKizvxjmc2SxwC0SuarBYo0K+bRz5JIdZH6KFV6eyV6lhkG8SpDoMDPD5VceQTDKodK1yJE+aoYgfWMH0qrZBMAVQzt+Rxs+MNmSIAPYNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787590834; c=relaxed/simple;
	bh=Y2d+tFXab7F5TQPwqBtwkH91Y/cQvL4idQAv+dptXDo=;
	h=To:Subject:From:Message-Id:Date; b=YtsjFf03jP98Cw0gpPyhu5oJoWIe4nVfHTwUZYvdMyqHJTdUOf2aHktUVaqxr8ZdK5Fb9Xx38dxGRVWECK0kI7LdB5R1SQ5wVViVW+5LeyAbKCF5sI8KjCQi+aCo8/wgMGG/B4m3Pa6QVDTTOJ4x2ZOOBfep22Hh+/uIM8ujsZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs0jYj5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs0jYj5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A1AC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787590833;
	bh=Y2d+tFXab7F5TQPwqBtwkH91Y/cQvL4idQAv+dptXDo=;
	h=To:Subject:From:Date:From;
	b=Vs0jYj5i+wvrVoMEmXvD/DQYxC39FT5/mVy0L5Ddw830uj4KGY4UAsdogQZoYwHaz
	 Z+9HNDPGpnPOpREc9JlkU5Q5eEMPecnSmNLNtJJdeY0AZpm83mIVxKkArWq9vni+oX
	 Z+jTZxZTToz70XHcaonv9OQ0bVtRm7olhEMhQkak2tqQsZZpMA8RcDUJRtU6EkZFxe
	 nDN/wBEoNjnkcU56bbujYRXQf5YgCo90uS636Bn+XHThn3SdDbYpbG9K2GDXYZ+ETy
	 DJgIRcrYSeanYpaAuceNBo41JQLCInfS9iWqdVpnz5lT8CyKKjEzh/1m7Ks1Y+BanR
	 rkM2puOynvrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD944C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759083369.11244.1089202581476426650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1745d83973a49f264cd138ea7e675a6484e6b0545490c6c09b6114f1ff05aa05
Date: Mon, 24 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787590833
