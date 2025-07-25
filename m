Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96E8248C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753483195; cv=none; b=bNNfUiSeL1j/etuZW6gk676Kco1Z2zr5S+tEdQINPnJQiaeVEGaedZdoXriPm2g24zQoBfDGX55bey/MDDDV581I2PY1s4RcchiDWiHMTCVmoFrFYV+lByprvocRHpzqULPNE1LAJaxImdkvPLeV5gyVyZF250Ci8iCuFyNz1ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753483195; c=relaxed/simple;
	bh=7vZH54HPyfw6IGvt0qrZUPLTcpiEX4jeMoKbJfmzOCA=;
	h=To:Subject:From:Message-Id:Date; b=lxADQClCkJwBpPsQImooRfviejCtdVwQwFSXLpil0IXdhq0meElxxIWF+iIZj1x8PX4EQtqobKzf8OeoxfwDO7QXXWsvy06Iyx2ZjCJIYCpSJ9RpaVjii+wXK7acU0HvX2/lDeYLN3WApvdUUG0issuIDnw+oWcDb1MWvKifaqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtaHwslt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtaHwslt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A976EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753483193;
	bh=7vZH54HPyfw6IGvt0qrZUPLTcpiEX4jeMoKbJfmzOCA=;
	h=To:Subject:From:Date:From;
	b=WtaHwsltWk3J8acvdz+1Dke1xM54ZYg540N4oWGqglADbZ9r3gfr13fCzRSTV+jzz
	 rz8Nx7wIOkpb7jRFTQ14BkgMlonxBZeVcGImSqEEVXk2d/YPAhnK/E96+81XGBg7r8
	 X0SP9S0oC6nJ/j+GEIwa3gJRktYvqdwAdnbez1TsE4Aju5FM9tEuZljrIbsh1PmUSn
	 i/Y76Cg/l33X00AkCBFS0heF0ap7d63l/EBVpnvjOUT16tFQ/sQgVk2gez1UQaSqgu
	 J1AdzCJDzYGnbv/HfRxh7BslOMtFHkYK7JsgHOJxRXmLWJfOk7hPHDx16w4yfUJEWy
	 UdVExHeX0wGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933EBC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348319358.28008.5641047784355793690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735ea61ee8a15d998ab5a921b7901a1b374b031e9b2a533fc3677fcc5e329dc4
Date: Fri, 25 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753483193
