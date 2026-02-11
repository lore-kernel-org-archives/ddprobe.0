Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D8481DD
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794694; cv=none; b=TPYstH/a3OXe2yAYn2TCHV/J3xtlBSLr9USUADlRPBC0JoQ+PM8y0SlFSG4KgcpnAxTIeWtGijXFrEILXrPBhK3kG+y5aOyxxyXQCjJJ6t/URhUs3qPWUtF0DopMU40Hy+Th6JbP8ecUaInxa0j2dxyfR9zvlNB0KpkiMZ1GM/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794694; c=relaxed/simple;
	bh=X4d/pUuE1j9QRkMi+jZThpNjVXsOUFUCYscCpdSWvoo=;
	h=To:Subject:From:Message-Id:Date; b=Th/aPas6nRUmJRuUpxgmisbnaAAZQ5JnV7WJQVESpDMEcClUa4LhqpnCuNePvIDdEvgwCABhKTh+MGMr2tSOiNRu2RBNArcQOW8KU37hRoxxCAG3mt8iztS2DhrVVcmpMpMtIxhFc5EhvsIzzV/eWFb/hnwYfALejuNSwxLymuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KywMp8+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KywMp8+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77E1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770794693;
	bh=X4d/pUuE1j9QRkMi+jZThpNjVXsOUFUCYscCpdSWvoo=;
	h=To:Subject:From:Date:From;
	b=KywMp8+zZGpYJXyvjkVtyk6m+gRi58GggVQQIP/7RIZqCX3J4EzurYnCX/7yQtGi4
	 9/YNV4Kmxg+G56WpHVpl4XR7fgK2cED+MsMoJKPfRrAEK42VBqdNFEu9gsBWc5Tclu
	 EEFxt8W2F04+ZiRfVcOtaV+MzOkRnPb5wGeMFGIaVjH4q4NVwlUtRoOh6SMmvFvftI
	 VGgL92kQXIgL5ExwhV2IOMeuAD2UHzS5Jd5+7kDWt8m7N7UGQOxqCBIxwWD2HiudSe
	 jmg1ZizQhs9ydupUviq/j4iYXEKcNqiImje0FSEscgjx4uRROBU6aK/Q8su6taZZ9d
	 EPQtj1bnkEMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB93EB5975
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079469363.5517.13597992093574834306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c427c018f4ce7f3ef0524410a0ad6c8d983b0fa0b211778e8d53a2abddf7a5d0
Date: Wed, 11 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770794693
