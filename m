Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6E23815B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761090594; cv=none; b=spgfx+zRgfLoJK9/yL8H28UlyP3LA6X8/Azpk8roE+kB6BcijdAIs1pu5cg9Thb0p8JHP6GyhCw2LYPxVLURSfz1kHz2HU/ZdZqoffhq71sUWRi6zBVo8gNV5l1Z8NDhOJaFC7HwJ/BEIkNVMa0eDeRhnXwus3GVqLkcOto04c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761090594; c=relaxed/simple;
	bh=GKZ5on7FH1kLrfD6CUtk2g8MTPUzvHAiyXCG/+VdF7o=;
	h=To:Subject:From:Message-Id:Date; b=PhI2mS5hHbI0tDY0tBVNFS+MXNwKR21J6QC2eokQ43igqQuHirjEXd4BwWQS96KHbxfyDTCmqwY74Q+3X+9+YO86URTMhuPLkBG9WepfgeVjNpRDDUXwYfYCKkLpkSE8zVaoGUI5LlQYO42XkPH/gbH4D8WOHYqOeHyvMCKwRpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NELzoygu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NELzoygu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761090593;
	bh=GKZ5on7FH1kLrfD6CUtk2g8MTPUzvHAiyXCG/+VdF7o=;
	h=To:Subject:From:Date:From;
	b=NELzoyguaGsxPGZhgwcFnwQHXQkMwf0pWKLtZOp8DAYRTDxdzySrMhE82ES0AgB1l
	 bBDwDJRo313KcyCYCnqr33oeP/bUkGXoWlGg43QGo8diihy96QUTFRxFI4wNh7MPiV
	 0l6l5savDn0nYTIlo6en3mlOt4mgn88eVaMix4PoRwfjdK38MrADrTLz/wtVIJ0MA2
	 cgHUO4QuJrRmkRCZSOpwbwIqlEeLBuM4atj4HdbuvbGMNWxPhWTrYIfjSDe1Jy9d0k
	 0uJQHVnw+Bj2B6pDU4iF2eboPMdHMHCHOgb8dzVZVI05OWx+01DB8c9/ViVGRNY4SX
	 LKbHV0Ba2qIGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94038CCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109059358.21130.12413329389570202827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa01d00c8389fc41e9e265b6669600d0a0f99160cc079709a75b6f4908215e5
Date: Tue, 21 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761090593
