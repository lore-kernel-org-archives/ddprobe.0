Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F112CDA5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792101634; cv=none; b=hIdFL4X9Mk9D8KZ+nEWFibDhtYmm4Rf25CUFPkIfaAT2HSrkDnMpcycE2jA/e6uFJ4WonrkvRllsSu6N+S5PgGOBSODDeKRMUI5ZR5ys+6A0p74/QV4E1TtUPaIfCGcNqU7/lkKCvzIYg6s/5PFszgg4QYSavKra4wxzuZpChRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792101634; c=relaxed/simple;
	bh=vUJuzhvxRJakTeVTvpkJAvbZwc33OpGIa+PLkZ5jXBg=;
	h=To:Subject:From:Message-Id:Date; b=R7MYuiGfbS1YR9A5A/cQLluyeVHupD4vRKb2AbA6q0F7+gCT6DFN0EU/M22paZTrrZcIKQBACp7kOpHTgUtZNObAcrH0proicoE3w68T2nzU/Mfyptg4mGrQLoasK0RFlXt9w+gVwe8pL0xtWlkTdKmzu1lq+o4BFeYHIVqX3Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6V6vKel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6V6vKel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD5FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792101633;
	bh=vUJuzhvxRJakTeVTvpkJAvbZwc33OpGIa+PLkZ5jXBg=;
	h=To:Subject:From:Date:From;
	b=D6V6vKelkWJ/XxtpxYspOwbriYCv2U5wBraJCX+tIq0nr1mIp4mXlrAyxlAM3To6b
	 p81C+rpXUe62RGUGLB9pN63n3cwGv41NoXURalTOtTF6bjZQZiaQfTG6kSymxPDq7a
	 gr09keqC1+6rWwD0EkRjmGGv4pGL6M/aA2NG7NNgrbsc3LQOxQn1qJU4V7laUNTWKQ
	 H5tg7khKj2Bsxyw2G349CAoEYyZ5y+O2LdItK6qA9DSaF2yByB2QdQXpTYCc1FKzIZ
	 RdoMRPDTfgQkY23pFUlhPiyWi090AfB0hX2FqKmrDx4rASFojHDeRC25ki8VhYp8CA
	 V6mI3MKB/c/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A989FCCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210163368.8137.16478369875549382159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6223ef5c7b2ae7385badb99b3dbc7f5cf7e1c7993469a09c5d18488801ce77
Date: Thu, 15 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792101633
