Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B4531D392
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757483395; cv=none; b=jz+/2WHyvlGJRvgCipoh9UymGE+swLltvW5uJgM356bpvgWggIJU0KsdKgGcFuwN1b56wJBo25Am6ReMmHGVgQ+qsk9ubijKyT6oP9Kja2an2fVqeK9kUfIqfA9dkSgxGYUK18MfwLIkdoFz93XP10mYkvp3jvNPTCbiDfZAy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757483395; c=relaxed/simple;
	bh=08bP+Y7/ByrrdypCIU5llP5GtCgh/b6k1IUyRzDyI20=;
	h=To:Subject:From:Message-Id:Date; b=OY/Qk0vEcGYZLnTKrpJBGncDLqeHQ6dZ84tMHlLymzrgXA43Jb9incH/qFIin2ODtEO/7VOXQtYYB+zS3kPTMjt5daFSDKPxG8AvjogWRQfogfEKYhx2bMT2dwMmer7sCfQiTFhyZLrfC/Ea1rRjSskb35Ow3EC3h+hJiohqpQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr5obdR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr5obdR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C497C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757483393;
	bh=08bP+Y7/ByrrdypCIU5llP5GtCgh/b6k1IUyRzDyI20=;
	h=To:Subject:From:Date:From;
	b=qr5obdR9SMGL937uoSfrt2tpXaiDrXwU6I4lXNPCa6SODyUpDFdzdqwGUyKefMhav
	 0LYZyP72DTMW82F111eCUbysqbuNMJkyZOjBi3wKhgGbrk2Td4Lw+Fu0oNwurgMQKy
	 NQCdrtnNH8GJTuA9vgWRb8+67FWmIJm2gok3jgFsZ4kEHlE27DJtBTt4gPxJ2cUQUy
	 +DOCCb/q8q9ell+XQ5yeWLTUxNF7+mbZeyG+cgX+rY/0BzN9VvP5LBvaH3bt3jEjM9
	 QQfA8/2mcBJlg2tLZAtkXZvSzXKZl6aGmoa16jllGIyVWzO45UHBQ6kU81ZJmqBVAg
	 VwRtO0pZY8Eig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F0CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748339357.32590.8465624993735135638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312041591d08199763b14ffeb8be7d1234f78011428b890e57d5feb8ff13abe1
Date: Wed, 10 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757483393
