Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FC61A08AF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786375834; cv=none; b=fvcDPfME8tH49u4ZRsSRde1NKli5TEVAm2yFgvp85He5IKV2F2GP+LG8qYl4cdzXotxtPSrB8y6Qln66/Jm3FPkJn5mwhdFA74Wn/VqZOQ8azltDl15+gWB1ZeWf/iENZWOPy+XRJivcYj3ae0yQ+WOoXY32FWkHiKykhogl3WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786375834; c=relaxed/simple;
	bh=KcFsrWu+J2KqqU1JpgdIAYiVLr1T14qUBuFIo0/85Q0=;
	h=To:Subject:From:Message-Id:Date; b=m5qTE4EX8umTK1J5lnVR7qGf0PboiU862vGWvtlbHv3Q8tr0CPx3/cInyj0VNnAplQCl8RzbPqLyugoJCGAinyzPkfRxUNebqm/4QcMKpAFy/8O7+U8SF3za7042ftwjGcUj9qWRdOybBkexDIoLL2Xb5IUJOOufDMVC+nn8rSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBHZFGUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBHZFGUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7992C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786375833;
	bh=KcFsrWu+J2KqqU1JpgdIAYiVLr1T14qUBuFIo0/85Q0=;
	h=To:Subject:From:Date:From;
	b=HBHZFGUCQGjqfgtd0muLJ3Uqs2lHgBTGRa2bUdztDOu3GmpseoOSkmaXpr2OeZspy
	 zBXqcofuheOjIYTV+FRL30NL5heytLl1HzE1WflbjfmrhHJX6mD55Gq2C7ly2By8b/
	 x4e0b9rs/BsDaHGnhEZfGe/+TbDgSoPaUZr6bT3vChIkz6XKh+u6vsEOzsblmB+QQn
	 1rQBin+HDsmAPoV5NFpmzNYB/CDe7xhbmTCdplZkSZpTXaMTp23qnn9tciPz3f+cKY
	 //lxEXTLSmP2p7hT+cBSWhfAlvDG0adAW/G0Dtanph+/ktSot0CgAUyEYT9ZIVfoCO
	 Np+XRgMU0FgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC06C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637583370.17614.1359312315643517133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53574a81501c29504e74f4891a9f3a4e3056a23b102f0047482ca31b3365e23c
Date: Mon, 10 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786375833
