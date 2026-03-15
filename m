Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746D1A275
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773560094; cv=none; b=m6/K8LqNZPXHB3ZkaM3V4sm8ShejlTQ8OonTQj+5dBJOi6UA+VmA/u96N57PLnkfyPzdnzoyaYUjdcKSbm2QeYa7TYhYGuqBFW8dpf1DwG6eLQyYbxr8I2GiXWtOJUXfjBuBWg1iQUt2cUJIGGz7y3kJTaSYcl4tWFBNjakCEl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773560094; c=relaxed/simple;
	bh=HLljllBEkn6igEOWXL6uFUwGVHNf2JTm8SCV9/4TC1I=;
	h=To:Subject:From:Message-Id:Date; b=kDBHvwxW2f/kTSoiOfq4rBNDduj7/be/ygQINO/VJkDNdWiK1hLeyqvP7KiHLN0w+aoxKGgnikcSmyg4pL+pH23fYsthlGatdFx9e7ulk57mi6q+yzW3UHkhDnS5Q7vwJMPQu14YKy4t7VQZBSgsWFYcRjlaJfK/Y20M+b0hG+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl3cex2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl3cex2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5B2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773560093;
	bh=HLljllBEkn6igEOWXL6uFUwGVHNf2JTm8SCV9/4TC1I=;
	h=To:Subject:From:Date:From;
	b=Gl3cex2Iw7Ygm2CI9MA3T26MuYuvk/Mb6mmB3gHYZF/wWmVyQ3Ny0T8YOg9r1nsT3
	 t05kK8T8XQwzpFmkmw8NrSZGkOd5AmMA8qzJYxEZXP4Y/q0Y0D3WILUnHR4cfMAPUp
	 VlCmb+u5/n990AUsptOpRzGsR3U8lMVbsJPZIEYuzbVznkOpcb0OM2ctY00ZabtkRx
	 F83u+UyCWWbBAdNZVqC29i9Z4QuEywmxq5oma1DpPI51g27lE+n74diOXlaDcTQngW
	 9SzwdlYt+pCIhKl3v+SKHDZE4iRrFxiHiBscjbczONqMWuIIrdao2rSRDlHutem+Lm
	 W9DF5Dpjfk0hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B68D58B11
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356009358.29312.7612164062138862606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66578c9f87f14171824d373ec2ea52d086fd2c33f7c56acb1d059d52693f8ec8
Date: Sun, 15 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773560093
