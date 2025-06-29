Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C491E51D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751207994; cv=none; b=lLhub3rMbAW4US+FTFNR/FlgEv9mtY342AkzT+kkf9W2Be6NW5ZiRgMhG0COL6ihDB5SWZtoCNFta3lW+WmDqjb1vqQ7OrOLokJTaS6XWJAa6tet4iOBSCqmq/qcoWzVVO7a77Wv3WxqHEVI2dDQ7mXALbm/dGPFWDweCfu0Mlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751207994; c=relaxed/simple;
	bh=vDQFH4XQ/JBOAuQaRl2RhOo5Qqe0ffotWESqNZR/x+0=;
	h=To:Subject:From:Message-Id:Date; b=e9joGzwwoJm9kyoJ4B/a6z41QbOoPdFhTJ5xUz+jqFVGfyIegIHEUROZF3nXcE0+bTG2TnaKiAQl4KC4ZhEQMOsHM7IMtxkcxbtSx1powIuYDUC55pQvkL/MKfrF9+0R9fgPymegmYrer3qK02Pvtxm0qn7F7lGvKr8n6frNugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9z3WC21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9z3WC21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751207993;
	bh=vDQFH4XQ/JBOAuQaRl2RhOo5Qqe0ffotWESqNZR/x+0=;
	h=To:Subject:From:Date:From;
	b=t9z3WC21UdQcnj0pui9hps20MF4KgNvVa7phXolM1IyMjn3lT41FoN0Oxs+qwCl8a
	 0SiKkGd7438/cg7MdK6VJT8xtTMkxDlPrYPgTp+m8HmolxePQA71B8NPZSIHxrQVrw
	 ep+n3i3rX5dN0ZpzkFkFacFWaHgCJOzPMG7coHdWQA7hzZcwuvx2a5E7npEjlSvVWv
	 Yk42V68ABgNUadMMxDcL5vu9livlp0e5uiPnKmxm0gOnADhVij4dcLSb6QJKAwjfkg
	 kHezm6YH27m5ja0pTBVYdGlmW53SHJo0+mjqfvB4ZIK2BMO725bUEvHDeOuDiFOAeK
	 WB3dapVXfxEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9813EC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120799357.12951.12014074521803303124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4c807e823ec42d74c354f4ff76986dc07f370492340a5e0092010afdcee51e
Date: Sun, 29 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751207993
