Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C0107A0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720071923; cv=none; b=DvtiN2+oRAD+IcuBlz08NMUeKhPdQnk9NObND0KesKNMlwNH+VoTHy/WPqPAy67sNJlhidLyglVhrlCGjUtCPhWA+OdPty8qRt+lpM5D3NtvsFxdyntkQr35Jw1JGlUdqiISnXPSUuvYBxoF+19fS3xFg9Iowty/khPQ8flwEbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720071923; c=relaxed/simple;
	bh=Wx+BAL3W0j+G8Db2SBrEL+ebHFjStccn1ucBsg2Ix24=;
	h=To:Subject:From:Message-Id:Date; b=icLUrIgER3zEF9VxHpyTgRZ+0kMr6ZIM/t4rtkoV1Ba/qdPMjbeZNUgRBOmfrH9Cz//fvEekv4BZDFW5ww8OaINh3Ttkl3LggNEThCmgM0yy0VWSFsylIfM3kvhq7/thoHFTAjrKf3IGmurY/DvVfzWYGHXcRRgsBrrMRTXJvXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa/SoCcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa/SoCcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E146FC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720071922;
	bh=Wx+BAL3W0j+G8Db2SBrEL+ebHFjStccn1ucBsg2Ix24=;
	h=To:Subject:From:Date:From;
	b=oa/SoCcjZzPlUHGA1JrtBMt02vOiLv7QX1Q/YsIkhOwi1+l2xM4v2C4GpPfkhDzLc
	 m3dYh2dO59sy+w9eji0MmiwFYGQYKQrdroUj/3SHnvK0MN5/jQvoBQrq7Q1TQD+lGy
	 hhIxyLZzeczVgwKMLTulVOnM682sgrupyLqf+CoHT71SvONIfmLL9CyPLrDIwGB4D8
	 eyOPFi3yiVcZEdlxCi+QwgsE784fCo5CwN3mr9zGRDJaZra26GYLco/17eeUQ3nlgU
	 TPnCJbQXAVCaQwBpldD+awwJxdeOIv3S//6bCkW8zTiB3/uTR9Vll1dHcuUIpErKTj
	 l8N8/ikTFh2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC38AC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007192279.4919.3371608007897378494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088f2cf2d38f0c418c4c329cd012fbf3c8fba60b9daa5080b069a1c6c12ebacc
Date: Thu, 04 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720071922
