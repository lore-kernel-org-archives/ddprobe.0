Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385433F0765
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785147034; cv=none; b=WgbZv7EJWCdevNEmmFWaaXM+IKOOVa4m6QDgEnT1gJeU6btmMWBTA5OP+qi4FVtlOz6Q5tv+glJOSMQmdVQxxdTNZz0uWS8LQHHSgSOX6EU6soOCZOBhEpWM4RFE5kPB2ioIAK1zvz/14HJKMkJiLQH6p5u/4iDkwppTbpYoqAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785147034; c=relaxed/simple;
	bh=XmkfgMG8OpysPBOneL3/eVS8bpVHxtFCDr8BDs4oukg=;
	h=To:Subject:From:Message-Id:Date; b=Zwr23sBh2N/Jt0rD+XP7HoMyEOTmyIuzHoY2Sd5UehYUN0P5QYroFeLfUxsvSw74gkzMdaJ2xZVgxCmJTz8advfvhFMVEapkFaanZ8KHsBTmD1p4kjYInk3mwyTxRQAgcf0rDwvBSF0gOugvxaN0clD4EnUCsx7VPTcGGTGX12s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwsVbLO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwsVbLO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5315C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785147033;
	bh=XmkfgMG8OpysPBOneL3/eVS8bpVHxtFCDr8BDs4oukg=;
	h=To:Subject:From:Date:From;
	b=VwsVbLO1U+j88kvJ5BK0dBJmZmftNroA/DD7Y2YhPDPyrZ/ey9zL9dR8IJRrKPqg8
	 zTlvfkLaHpoy14qwDn1qNxFzXeYBQo/QRgD4PLC6cC5GkIsHGKNC8Htg+1CQki9ybf
	 GZD0Hzs3bsGzaPM85jTVovGQqXRzcstgeHnu80iD27qfW7TlERtXWmjgThhBV78bs8
	 A3BuIpgP0XtpbHQw9pbG2WU4DwpPQTKATozidVGq6qCwnJGaa8TrwMpRowyWngeUNE
	 5S7fLX/hYInntp+JHcCsSnlqb0oAxtydBBSIHEMhLvgpqOBfTyuRPKbIj3w2302Jex
	 SGmz+xh+54ATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83B0C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514703368.11487.10544723644992040041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66922803a7ffc68dba3fb4869cb2cdce9a7661366c387dbdd6c4916e36c7094d
Date: Mon, 27 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785147033
