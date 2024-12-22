Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78D290F
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734875154; cv=none; b=YNl24umVftqsLp1S9f4kTtqEesL91U1z1dYdVfrP8esHMcO8nz/0wHKgQBCEe9CcvQR4WUOqaYAIoiAqLYRMsHvi42KKFEGpxVTy9TZhddtmaiS1NUW/D8Fug0GA/liioObLQxPAvgD83biseZa9KGw7FgGcu2ETae4mxp5aBlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734875154; c=relaxed/simple;
	bh=nyaCARD6SPTQQ3QR28SiFhrms1L6dJbxgImEnZssL2c=;
	h=To:Subject:From:Message-Id:Date; b=MRIDsant85or+TuCMEKhu2wiaDt58rW7CQzicMZy6XXnw76NOyXwNyX/uWdC9w4+9t2Z66nHd3QCj2cLa8dNX8siA/SEUugvgmI/Yr/OZ2n0TCNG5oKxSF7FcjEYVmGRHeXeu2u2cthWCYCYyHqfQF4DjmXhazgq5NKdpyNH604=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMcyAkDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMcyAkDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6091C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734875153;
	bh=nyaCARD6SPTQQ3QR28SiFhrms1L6dJbxgImEnZssL2c=;
	h=To:Subject:From:Date:From;
	b=tMcyAkDURmsUmYd5EKBKaVhphEQNlr6XJkAuW6AfuKlkXc2s6dPbn5U1fyUww5zgi
	 Wdm1sYwBk6fGs+ApiJLV2J9IFkRFaLoIlG2kAKRddrXZR9KFD4ClArJj82LuTjQK2I
	 GmHamC3859h6ju6FsHjj+ltcw4foud2BBbTwl+gR/Diq/AitVsoVuBi/G1W/XOmbbg
	 8J7z+QMYrjs2hBSCaFuen2eHhwteFl1WG1iB/UoZwQrZbgSvihz6ko6pfzUZfr6J7i
	 urZxZwyU9qAPx/1nlPPZJTab5RMELeVKJK8uk2NRvQ+1Fi11/VX102WEOj6aCmZX+5
	 Jd8+dwO9GiTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98067E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487515359.25929.17090193683902998546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34c6e8ae6dca9df1268a736366f22b1a9b6eb1cf9ffce2c37baccef74354d5b
Date: Sun, 22 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734875153
