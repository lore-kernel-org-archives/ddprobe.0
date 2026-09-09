Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB98391E76
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788976234; cv=none; b=HZPX5W6FfgBRF7WWLWWxv4IGIgQrXrHZkkxY958TFY4Bo++bWNkr9RLzez/FNKv3X/inTG0Ortv+81Gcj/6tuSEkdTDF9z8Zm66WVJHbJZL45ZyChWS3ItMf3ncIgvTobILuqziiiY4hD7YX823fkqHAkpA0RTJ9TWDPUuiNCcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788976234; c=relaxed/simple;
	bh=TgtalUVgo1YOiKlfTCnxmKBGyyo6f+XWivSsJpoBbvI=;
	h=To:Subject:From:Message-Id:Date; b=fjo5y1gth/z2HxkLETHPDHs68Nf5emMbSExVNkKj6+0mdQbPngNiNtvPMMcybGOX0vVewMSYkGAONlBwOEe/5SJaR51HZipM/X637rPyNQv0t4bjtAej0C63XvheXv62ghlhSUtLqbSdPz/W5vT5y99UHaHCAILg8OO+bVTH9aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJmuv1uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJmuv1uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6EFC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788976233;
	bh=TgtalUVgo1YOiKlfTCnxmKBGyyo6f+XWivSsJpoBbvI=;
	h=To:Subject:From:Date:From;
	b=eJmuv1uTskZerb0BDYtFa8wYjjinwgDWevurZk6Uohv2K2RaygHhWCZssXD/XL59p
	 ZNsYN2bExEAMWSJKIO59hunKXo++p9qP6pp2zovnLxLslak68NJYeJi85J8kEKKsN9
	 PDKZL+w9GOI21qkkdDZMehxQ4jLOsRBExiTDiK7wgQP8pbL/go2se2Ta8hrSfOcvMR
	 OcsbMiTFsQo8gXX7KkzOoqnasa622LVo9rsS7U89Gn2xCCliN4zWeAs6e5OLkA3cpX
	 NeA3UgVZJxDj0fJF6Kf1dwmblAM44Q4Smfb5zF3vL4Yq5fT5aYQjrm+DVo0R0bqq2+
	 P9Oq/zp5FM45w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86E1C79FBF
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897623373.5805.4164279313279550192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa66fc58c8f18669b83ed732e03530fe382c2026af3114f0460e1e503681e51
Date: Wed, 09 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788976233
