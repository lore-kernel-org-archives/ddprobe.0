Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234C8218845
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777117654; cv=none; b=n488x6foncrrEknOCg24KZUD+ks5BWsnLU6S50N9Qeg5M4KEI0ObQ+nrDOhHi+8PO4ciorg5X0IQku+yDdiANJVPE4FGgSeiXztVcQ2Hb/r9V/hGTdRFVh+5rnUXWNWMCTcr0HMfh9/4P6h10nQlVXoYxGhyYlw8wYTbca1JYKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777117654; c=relaxed/simple;
	bh=yneP/gab8t4GUcNxMl9yOJzxwLoR8wThKgjl3afH45g=;
	h=To:Subject:From:Message-Id:Date; b=MvLMP6rGZE81kFqaJDh/+5+T1AMPD6hYcnypdBMeH/IoFK+HPLOgLrJ28wF5r0rCUpA8ii2avv77fSLvBXqMPKK3T+mNBlnW9AFlrV/VlCnOGA7oDmaV1VLyFmhDBZgYMqQKMfe62fR6VTqiZ5DkvsLjLYzQpzCTVxykQlfVYek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enbTuLHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enbTuLHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC24AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777117653;
	bh=yneP/gab8t4GUcNxMl9yOJzxwLoR8wThKgjl3afH45g=;
	h=To:Subject:From:Date:From;
	b=enbTuLHPQ/vJMo6TM2EQBkGnBv1OIYrmrpKqaO+gtRcPAQpmjMWTOIhOcTsa5oD2G
	 GjyM4+Ux8WaPH5Hb9CMq++UMfY7C19iKRDXA2Ztrdhi4PUDhjTt9KM1zYUtOqXYZQK
	 +M6sRiNMAgIJ4b4D5RXp9lFIQB8ehsgnbxH4yB6F340/1Jz/ArRZMcePFTtacP749f
	 GYofck2dku47qEyab6Odu/u6XTrW1DITNBoBuGEQJxMqIulz+5HWFWPyuavPFGGdP9
	 PCOCUGzirfNXkCe4rsc9G4smj/wUFpNS40/ZFpnNoa2f8g31nyCViD0HcpB4KnUR8l
	 uDk7hZTscT5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9445FF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711765368.919.7301543256108073055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e132c655107c6a426d1c10bb49c5456fb47b3f306c66717952d214e696e947e8
Date: Sat, 25 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777117653
