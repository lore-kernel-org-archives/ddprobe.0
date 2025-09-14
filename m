Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290F6223DDA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757846994; cv=none; b=Res6GLhg0L9ziWMLnQHUejG3Vr7BSig/rpMbNlNfEKOwnZjXKpGclZtP5WLbp2r74iSwtY7Wc7398sb+OqQ3+rGQt8uwIWIpbz92mDlyljLteZS0ZNLVGFUpctV1toBPOgwso4Kq3bW/T0/pUalGEQD1OXce9NjT8yXp3HNxkA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757846994; c=relaxed/simple;
	bh=MVRJeEzOpzShAZeiHWPxIgUGJ6DL28KaMUoIzbuqIPQ=;
	h=To:Subject:From:Message-Id:Date; b=kfwj8DjxWnHEff/2+lNC7IpFwpeTXfm8MeRbyvCf+x65nYu5HGPXW/I4DsQqBTK+cl784sdIlbmWhka2tDTb/LjZKAz9k/DDzK7rvmOB8zpUmCh22Z38fEBf2j0n2r6XEhCHiG+/ewg6v3lJB5S++wAuWSKV6pbiT1vm3qZ4SYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0125RDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0125RDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B303FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757846993;
	bh=MVRJeEzOpzShAZeiHWPxIgUGJ6DL28KaMUoIzbuqIPQ=;
	h=To:Subject:From:Date:From;
	b=Y0125RDV6CMCS3HoZz4KOdE8WCxBGF4guBTesr/3dDoLuHyDZUcawlhGYNlf8Xmfm
	 fa1d4aIAcmeZYKuOqGmo0HTfDcr/GO4P2GerfOTpEkUwrU+i5JxRepMVQFXLQrJpJB
	 EomhYyg75zHUAfW1PimA/SfsBq38HHuiRhO2nFIzvlS/SQH6lqmP5oPHpsRBSVFRXu
	 CmfbBdXGSkCFmo1MyrVgvw7/p3Jw3uS99MluZ1O1Prvhl6a69dIevkuZVthaMb+gPt
	 yNjQTQjNDNZhdV4I753mfnobaAZsaJO9fXG0Ygs+XKzb9Vk7iA3f58elMCS9xeVxiy
	 nUpuygeZLjRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9A5CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784699357.23998.1865323882177997010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb5355107f6187f466c15f858fbba5aad574af8dbbc1d262bcbec325aa0383a
Date: Sun, 14 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757846993
