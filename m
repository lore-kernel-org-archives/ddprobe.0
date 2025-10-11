Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3DC29CE1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760141994; cv=none; b=g/SFs1GG/6eKl6Od0qQ12nal46Dd4Kt6azMFNjrY+ccu1HyKSVyE+12HoXYEIZNdsCYyOVVi0MHVY+zueIIpUUf/1VVz5lRrHIaWv3ycVne8OUo4lBPAXyWVIQhx01nWnLgZ7WAXALFT8lLR3X5jEFWxJ2kSHUPfju/4mvIOQOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760141994; c=relaxed/simple;
	bh=OHitmXeZ/ftAkNCMgs4bT7YZLOU2gneNPNppfDXiJkE=;
	h=To:Subject:From:Message-Id:Date; b=ScLvV5hvb4On5Sp858PTEbK9C3fRd4v3+4+GS6roMOOSrBFsEwUjrvv7Uui4dm2NLQATq1Hd23WmNLlcID9RprFpaC0t67mD6VGsCGJGvWa4XFCikEBDhJ8qROcISLht+TgZmLXQZBVE9VOMTcjQhO5VHZlmJUCl2ztv4uqFtpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI/l4USy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI/l4USy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760141993;
	bh=OHitmXeZ/ftAkNCMgs4bT7YZLOU2gneNPNppfDXiJkE=;
	h=To:Subject:From:Date:From;
	b=NI/l4USy5/g7gycVGiDC4fnLscRTgi7FRKUIuU4AzLgy8Rt1FHIIoSbZSe0AbFwk6
	 pQadizL6MdvS6Xlh4+hQKkFylIvoX5nbyhhxtiM7rwavRl65md5FQgDB90LeOmnvZW
	 kDiitXlx5eyonfd05BouIVGHFPwMYv+wTC1L6pamKdOFdrgksNryGvjRTYftmNFo8Q
	 cJ6fDS4o5XIqialL7+xIwHQ6pn8nGO6pMof/lkiK6qoXy8lTFmjx/rtlDWDr0+TL1d
	 TfH3hK/3GRYp+ScUa4mi0sIJNYs8l5GtWZzuITg9UrITdqfVYHzMms2mkXul2fobwB
	 f0PipCD+J44UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E50CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014199361.26644.7938272344048569850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2be8e09e886170ec66f34959d651afc1efc8b4315f9c9514611fa4514f5761
Date: Sat, 11 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760141993
