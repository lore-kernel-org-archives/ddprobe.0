Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A326D4DD
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782048994; cv=none; b=quGUS9NngC2FdipkdeyH0o2eXVTkVTCKhZ4YrQcEDeef0hMwRpeKk+sZ8skocfZXY5K4LDS/LTebSSQL85oB0dY2coGfSdylegnHxXYNr8AxF7kS/QnG2OxHogqpAoufTsrxhT2c4KStRp3OS0zv2nTHwftV3gmnpxpCRwFwI1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782048994; c=relaxed/simple;
	bh=iAEuEFLgaIVSby8/CS1C9Ahh3Ee+THdT54P34+EpR5w=;
	h=To:Subject:From:Message-Id:Date; b=n89zy+0f8TfNM8KQwuc8URP+7krjnf77zs+pUQdOr2g15SVQK2nKRUjMggzKQTV8LK0UslodxuGnjcqvstasJv/Z3FnTLukaKEIXpoZl5nOzJ1BH2s+burqYdk1cBLDLJ0cBk3EJER83no7EMiA8YjKbESITu03R0J4oNwnSAsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQUjHlOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQUjHlOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE00C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782048993;
	bh=iAEuEFLgaIVSby8/CS1C9Ahh3Ee+THdT54P34+EpR5w=;
	h=To:Subject:From:Date:From;
	b=AQUjHlOoD6xy/DzECS/maU/8kHvnfGpuHoNXAH4p8YO1kcdQiIhJZq+I4gpJt7GQu
	 P8c9oTI0rgUclTHXVT/uH02oN0Q2cj9BVW5I4LO0spYvgXtUbiEKUktUAsGEXb3ZOK
	 0lC+6Hj5oFFFICBWF7GzTbJP4Zxlbx8jaNtflu5D8s0zTYzEoBSJdvYEow3AxjZUj9
	 JA54sFbE2hGNeXE21dPuTCvP3U7MJ4WfxKKDqQnNIcOVgBwVYqZp2P3vqqpRYsvs0Q
	 7tDfdKG3u1Vv5Tx91MXMTcNwHWk7vSuv5OZLGAW+tbSP7NF/DB8ijsuo3hNVOEdqfz
	 aqorJubUH+Skg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129DCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204899371.6835.14742328010827070650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695c37c7f940ba41d1b2dac668bd6ff297f0b908be31ae12e2fa0db13e9ac307
Date: Sun, 21 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782048993
