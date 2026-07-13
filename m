Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5235BDDB
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783984114; cv=none; b=o3sipDCIRPe3N+83sObM6mtrI2kBnSvyvY0IZJuF0Pa4jw9vDTHmTYBGEUarMuocFVA6xS+NPVqP5hDiPQZd59oX3ek6NN5E7SPTdV/rcGpxshKzD5q097GXYBP/woMVSf5OPEuk2709bS7NmnCreMdw7m3BnM2CyuCv2wzNxJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783984114; c=relaxed/simple;
	bh=b48yQ0/xfj1G8D1iGfN2ZNZpf3HtO3Vd14gbWEItZzQ=;
	h=To:Subject:From:Message-Id:Date; b=dmQUjwZizQ1S7vcplrMG1yT8WZC/fLSCWE7dOKbGeJp16VdJATy0e5of7OcFowqsi0WRhwsJ0HI8YcivJjah9DJ6R/84zxm23UdVtwt0Gb20WGVsAu9/cDgSTerKfD5AMKssHnDoxBvkp22MaLBM27AunF//RtJGYIT87K4ylnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghao/DD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghao/DD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783984113;
	bh=b48yQ0/xfj1G8D1iGfN2ZNZpf3HtO3Vd14gbWEItZzQ=;
	h=To:Subject:From:Date:From;
	b=ghao/DD1ypBbTC1NJgeoND1ZHohj33KstFCdFM9RFPyi9grN9f+4Kymk3xbdugVoz
	 X44K67+Gl0mBF2eKiIRuv98gMb8WiRbgvItBi1scrqoGrQ1EFmy/ffzvhGd3ytbanf
	 2UpJEpCe7uRln5FSVhyYQGJIY1NEJ5/z2HNApY1uAU7pjVhecx64NhcBQQnHn3o6Y9
	 I8tNxznCKawU8h9GzDGy/yryGUWJplfWx7JJohlzye+/XjvwFjoCHqmiNny9RwNXua
	 RnX8qAWPZvKHiA1iKijh7CCtpP59nDxPCE49HnARhZ2gKnZnZ79I4wXNBWAPWggqD4
	 iQ9Q1/qj9xqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398411368.2080.6201946399245996083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fec87dc7fd504d8f70c98f9f32441ec9a8277be3a7a22f1eb8d176c80393b2
Date: Mon, 13 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783984113
