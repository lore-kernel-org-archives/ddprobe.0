Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481C217997
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712970563; cv=none; b=ciTcHQPiUBtUVglnIxtLo+elDqdFFVvlDhnWRTrV7gR9tgJACJczH3/Sd5ZE58vCnQTR+CHAQlq7b8nH3oLLiuXe/6RMdNqApe1nXaIU8DZpyoPS+Et2DGPhMB+65vtyhd6fLxLvfxqM3EBnwW6Mf6cz1DM13w5+cEyeAInL3I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712970563; c=relaxed/simple;
	bh=M4B7+AB/Sb9WAGrYI9tzU0rwdzSDb+UxM+K7qgkJyLs=;
	h=To:Subject:From:Message-Id:Date; b=bTrEjD6r3i7LYbKxis8PyJ6NVainKnwi/0mNLmSFqE09k7VbMlJUm7WEzEHLU71txammdtwMJkasIdERcKAVP3e0QbMmcqin1s7GzjaupyoLvki5JZ43zwMKfRT7fZzGS5jjYPfMnMI403TJyaqEgbUqQn1NK/WfmQ+xtV3wMw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf8DSrSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf8DSrSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE59C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712970562;
	bh=M4B7+AB/Sb9WAGrYI9tzU0rwdzSDb+UxM+K7qgkJyLs=;
	h=To:Subject:From:Date:From;
	b=Cf8DSrSPViPUqIA6WbzKoA4Kt7fOHX7mAv/zPtdPBT0QU22Bup4ryd6Nqr598zLPc
	 SspCxff1ixNChCEdrpuGro/OGPtBlm9tDI+ZoHwEJndkiisjWksr0Cw51phyVFYAk7
	 lv2AcAmpCO7EpkOhXQSz2F3kDxjz78JFP2WCTbJC3Gr1MyGkXgDtKrRo8kOnHZeqBv
	 Radpuj40saQHKPBQ6JO7ENoQrdlwo4y8gNb7twP5VDDmPdYFjAZtoI1UeGpcM6+p8c
	 yfaQCxDOKwxZaqbE8e39GA06Pk/RWIpKBC7cPyxIiPM+mun7xUM4mm3U9rgRHCzib7
	 Agasla7mCE8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF58C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 01:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297056276.24031.12015522134318487987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1035fc262d145179ea3d88adee2448fc17b01a474a9aeba6362a992c3fd948
Date: Sat, 13 Apr 2024 01:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712970562
