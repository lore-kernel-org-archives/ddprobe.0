Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C361CD15
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763265053; cv=none; b=qsNBSFUHBwA9LX0UPmBMw8LPXXrd//deOSU2wy40aBlRAb8aYKLV/74xoF6dcyWLlI6z/uSqpckMltk4tfxO+pdDIRtBlnBTtMLXNJHLzPP9704YWsUxTswhdXos2vH5Qr0nuXzDJR1VR3pAwcogwCG/0jfoWBH2VT5MOJGCPvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763265053; c=relaxed/simple;
	bh=vxzH2WTS+CSGWYD2SgKjbs10oIFgMlp+hnpmpdocwDQ=;
	h=To:Subject:From:Message-Id:Date; b=HVUGhyZUiDiExh/upTacpsxOYqkKjAD0DsxpT6GnqYXCgO6SRzpTL+8kiO+XDgIky2sNyhEpXWMib62OeZndNqNItc2MhwqGRqBAdwUNmiIX+qbuAEpCZJMgdg2wcJ01b/3EmUtWMIFzQ+PtuMywaZrh85Grv9FeN3NFMMSLHw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqCva4pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqCva4pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763265053;
	bh=vxzH2WTS+CSGWYD2SgKjbs10oIFgMlp+hnpmpdocwDQ=;
	h=To:Subject:From:Date:From;
	b=gqCva4pjLoPTiLUGfNYNxg3GX5V8p77tALxyERn50NB8WXpHJGvjKhyMiCVyPa8BR
	 y6lUdmlSBTL1Wcpf5rA73BCZPDSMOxBCEQjmv4EpQkXwcPmKriuPaLrKDv0mgn6fHo
	 jobtPdTdxW/pm9abtZNj7gIxWE97bsDNmKTszUiFF5aY4VDOt+E+F8KtTf9wW9jTsl
	 F8S4ZeIosDqWyCanWOy0d4PVo/zHP9Dnq+HcUB/RYi/CdGOokym9rnhrORGfj5SffB
	 hQMLo4ODsvmzh4fI7qxFz0Wwsm8HbOe6FjmVXdNWMxx4jKJ6qBkU1+gIIyZ38hNLly
	 wXVs8UeUU4s8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95431CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326505358.27369.16066267292583782266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f32a425bcfd98e25cc191f2f9b55d3a47016b2916fcc05d6d5c5bfe30e4b26
Date: Sun, 16 Nov 2025 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763265053
