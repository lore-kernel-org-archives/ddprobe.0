Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338E21EF090
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733526354; cv=none; b=DldyUV52IKRVubg2yied83QtVAcOffCm/oKpJxGSz4gdLKXRH9Dj+cmU4DHE/8YnAVAgcMUVyzfVuYtbZ5BDgv2UKuRTDANyz71CVZEN8uBm1rJ5VoQGpWPMQftDYtExWDrTL4fZSrzcAFggmSZhROeDLuOBHxQCQkN1Fco6znQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733526354; c=relaxed/simple;
	bh=rN+fJf1FLl7wO0xKokCk6FLU4ZysOb7eF1Ve2QMGv/E=;
	h=To:Subject:From:Message-Id:Date; b=Ir4VEMHvTwgg1LGEBh2R08OzW3xhNsfVIiGaP3cNFY0JIserM5836SAUDFeBKBLyNc5QfO2geHWIUn2UeLjnDKwGv+GaHSentKZ2c1RwsNcFs/khmQK1FcrpjG3ILF2/uVsCQWW/M+7zfzsevZHtfpy0UVpE3FWbR/daDyCeQxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of/Ok3pO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of/Ok3pO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB90AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733526353;
	bh=rN+fJf1FLl7wO0xKokCk6FLU4ZysOb7eF1Ve2QMGv/E=;
	h=To:Subject:From:Date:From;
	b=Of/Ok3pOeSKLFNREf+f6qdvAJ4GYrxYbLkCfsOgfU5ORfHBIXv9Mfjw5bV81i3+Ct
	 a1w/ZyUO5cEAIPcv+AywBz+XEZhO6hsGMeALXlon2HcJWvfcI3aHAKo9fooSeKPjtT
	 nAcw1pI3PlbdTqIa0ubeEZIshxXxRDVbHPGNrPIFJQ5f4ZqCmwHnT89dj857pWmTMw
	 difpN8DVcxw1ukD5EBckYRTAHnEH569ciqXZLxF+naC6Sm273xdh8vBwY8rm9zX9Fy
	 fFMD3pl9H1CQfjov/5u1oYpuRlKxO1telbhP03ekvLkRpXau6OGwYqfMxLVDLPX2Yy
	 o/DpD6b0Ctc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF2E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352635359.31465.3094994746690103168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17b9cd7c9fd0ed94ea9039d5fd13cd2cd9b80affcd625c37e8d56b58ee993ff
Date: Fri, 06 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733526353
