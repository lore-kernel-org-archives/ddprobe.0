Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E160B3769FD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791261034; cv=none; b=iAosPzRCy8kND1O5H3kh5QrP8TMBuFB+ciYYKRJ+iGSx6W1tDV9h2jTXNfufHp9ViL4h27bR0FUQT1L+EjXSu2qJJm0+/l+3b3k4eKZGIaQ7m0UJE9uqLRSe+U5CyhxS2kqlNY4PRltHUbW5REiR9BIrpnJIBO7ThHesWyW1h2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791261034; c=relaxed/simple;
	bh=AX02ervSpoEy88dJmEiTDe5eMYO9zd3FAd4oDGz3ECc=;
	h=To:Subject:From:Message-Id:Date; b=InIm6pP/EBkyKCsw+McGseNDEvQBQe1gI1LF/Xmr1e0+2RTF0KBJ3mN5JvfAnJKQonjMfjdtzcM3W4ZlVIYAI10f/fbv1N6v0aEt67cy72WmmTsCdqcR9SnSya6y8VBC8JG2oiD8tJH2xGJiDtRwqbC4LEEd0yX9M5VG8OLOmmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7p32K6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7p32K6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB531C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791261033;
	bh=AX02ervSpoEy88dJmEiTDe5eMYO9zd3FAd4oDGz3ECc=;
	h=To:Subject:From:Date:From;
	b=Z7p32K6fjE2QRd06W+xGGzoRTkZGVFdBlDdZ3JO0dy7r3uyRKrYqqpfBnODdhJKu9
	 tc+p7UP6igUMM/pRBcfYvPnsZL2RO7Fs7+1eivSgZPiJR8AO7qNDrSSuiGcog3hV8m
	 OMSb8GYQf/oNpC5ipBCTYe5hXD49mxMSUloqoX1Klvn1Kij0biPA13nuUDodnI8gJ3
	 ZkQf5ZCJjoGX4MsVriijLQ2UMkao++aKppbc2yi2icrH2OY2q67D1+dui5S/JS+L5F
	 JXeCi7zZJ4FCswiy0OA+mMX4hdn8Wpmh7LknV6D+yz9a6xbXtHEI3L1rAxHyG4fqbg
	 mmFD4nx/Xeqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C7CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126103369.29922.10717440940262491398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471e16d3f20e3d2e69ea2f9c517db9c1341f81a43210bb6ab1c0ce7b68718ed5
Date: Tue, 06 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791261033
