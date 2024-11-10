Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF44847B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731211554; cv=none; b=TBkUMMhN7UT2jk2yp904R/ZJocmUA94RJNvSWOChqFhKAcXHkf5uR5V8LjWxpE1CWUHD3tCGWqtxQR8Y7vrAd4l01EqHLMpi9uascYTszDG4/ik1txlbpx1iQEpyfPfSziksnAxj7oyr2qNsyhB9uvVtRQdJVDj8K+piiKUFMUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731211554; c=relaxed/simple;
	bh=3nyaiI2UH0aIfMyjmwMjWeItqzymRA+r11BVyN5+ksE=;
	h=To:Subject:From:Message-Id:Date; b=MjLP563zKR7SmF1PanUYap9qGvUw8gJgskXhWYV6rckWyD8DU4633JM4a+6DAWHBX/GMZ6HW7WR/fU7ARxt3BSzf8MnDXQCAgkeyiyCR6YMdJy6nRSFn3mhOP+/U3b/IAJY+bpe4wgp1bmx+l2imLh8649jiIPd3eqqcrnL63Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4X5F/Dc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4X5F/Dc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0CCC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731211553;
	bh=3nyaiI2UH0aIfMyjmwMjWeItqzymRA+r11BVyN5+ksE=;
	h=To:Subject:From:Date:From;
	b=A4X5F/Dc0qF9ZB0i0WVdMjklhbtQB8563UT7qlDPQA4iPDe+OE/M4gEjWNEq40Gqs
	 qV3Ix09EJuHNmbelFCNJ+LvAF0BjIYO3lOex4adMvB9qf+sy+ZiszwpIAcBf2yYfn9
	 0JJ/+ZpkS+Aqwnir85VETtuceZmoOoOgBm8Winm77RNKj7kyPzo5Uu6oS8PeCz/UAC
	 q33wUuGmSMkT12wytaYr+HZalF6by8Kyt1i5NEBipJFBiinlbF2SwQ5LmwQWeu4LlS
	 ZdtVIBCOtMmRXLh/9aEc5F7/Qx3t9dqhDLgjclUCWL2Nzr1xVcXRgwR/76pGH5MwHg
	 rkbfYk+N1yFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495ED5E399
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121155358.22832.112635566537122538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7986c4ad456fe2e15582b07ee941da69231d51af27c69e3b04a0b8d0aac7574a
Date: Sun, 10 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731211553
