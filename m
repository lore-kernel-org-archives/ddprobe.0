Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A1E13B59F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719762263; cv=none; b=Wt2UXyPdgtpvJ/nuSKZ/4UWdfeevhx0tS1yEZIspYkpTynjR2tQmGk44kEOp8Zze/Veii39YUrdqpt/Pop8V/JqshanQ4o9qCjUDRrMnetbLfUW1kDreV8K02W7xfVL8R1UebJeBGn1jtHaCIbpd6kBizO7DI7KsUf14B1iGzng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719762263; c=relaxed/simple;
	bh=Kd0cPen36N1fhK0eSmRLPYErOW1WgUYMWV5+YrbqR/4=;
	h=To:Subject:From:Message-Id:Date; b=B0CEDr2cKTcXk1J3LOgtECi5BMHcXCvZyVJcrBbJeZzahTt8uPUD3W6nFA7yQZznFG/EhWwMsg8rKkq70R+4zPxyI43GV/HJXA+HR96OAxx9PxLd3WQaYF8o5pWn26j8GBrz/3bnPvdUVlcpE16d6DBo8kFSFid9JioBIxExj9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acN27nBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acN27nBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB466C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719762262;
	bh=Kd0cPen36N1fhK0eSmRLPYErOW1WgUYMWV5+YrbqR/4=;
	h=To:Subject:From:Date:From;
	b=acN27nByC7+U+AEfWEJGJk9h/wdt0qxEda3lrhfkJjQf7elyoobUTXlibkK2D2/mD
	 krG3DcRcZ1CUXdq8nLjPsp502bLxTA/+kQa5zajA/fE5NcrfS1CrJ0rEp6O6dDhoHL
	 Dqhm4eJZIogKeMDRYl7KQy2me0w0N4EyApzUz0lPRgPrkZFDREB9NDGj/r10QNJ0zb
	 r7n5tSBkgQNySw184IqVRxzj1UnGnxtQ//R4ogPqBgNeWvcga25NcDuFnv0EDZ/0T6
	 PEYvO5q3NmWb5Dx1UEKXnMcUVOBYCTZQzthH9iai1W+8cBhdfuiyuXVDdW//APbz0R
	 WK+Xx+h8aGeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B66C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976226279.5862.17193482850482849304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce2ec4523c23e73e0134c072db613cd98e1e929eb77359697a097463b49f09a
Date: Sun, 30 Jun 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719762262
