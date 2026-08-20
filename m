Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB9356742
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787248834; cv=none; b=dulze30AUk3e8EkrEKbLQhAwK92EfyMCpJ7BtxGWSgcEQu6aXUiDrpPuJGBjViingnpXfHm110hfjuzy/kwIIuWauD1wCVHN1chGeTh/S63yYow4NZQzI6AIyCNBO9GfaXvIO/Ess/41NYrdbUyym/x3ul2WuxLxNoO1KnsxNec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787248834; c=relaxed/simple;
	bh=4eYuUI74Oz0YJqnoDrfWST6Ety9UtGhQ9LEzcqta8UI=;
	h=To:Subject:From:Message-Id:Date; b=jz6NY20DcceYKncibfkgNZh/rtlbSsGRxxG4eUUBKR540UysPH44VTFgiwO7fCyL1Fq6lSSOLWGOOqMFlGGd0SU+cPjPFJTGvC3PVt137LeT/pLNWpTC2rQj2TY1BP/zOqI5poJC6NRU1/N+L4JuAXjlHLz0GWnolMm/k0rhTSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlAHA86V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlAHA86V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE48C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787248833;
	bh=4eYuUI74Oz0YJqnoDrfWST6Ety9UtGhQ9LEzcqta8UI=;
	h=To:Subject:From:Date:From;
	b=PlAHA86VEvHQkNzRryklWNJcBGkWZLXN+YKSO7KOcszwfSbQ2Lno+tj1ziKS+AGQM
	 /8MGezEO9vZdki0/RbrmRKqjr74PyARoYwIwUgwcoVxeICJMBfJ1Yejkw5EiIcuh5h
	 gW8OVpb8o9O914eVzHtQtv060wkrw1X4uRowVUZqIaFKTbOxqOtuDD9ec+QUxEEDVI
	 Xg+GlCdc873OA2wSZUaLWmv91Isy3QwwJUrudaNtc5RgShUYfg65JHLI2Xx1V6XASt
	 3XsrlW2LH/SBMJTGjJkYNEHfVMMrpunPmcg45VaSniUAGeQminAXQoc3MaSfp7y0s6
	 HH9w2dPDqBASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84F2C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724883374.1224.10122463647504031992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f6b92ee445b2d0123e4a62867ff6da21c25435c81fa62f4d569c8d656d45ae
Date: Thu, 20 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787248833
