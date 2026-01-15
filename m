Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2680C61668
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768451634; cv=none; b=mtX2U9BLjsr/7QpR8fWKdUUUBw2rJX+IBvlPmgxVVrPgHXrBaQTlRpmoLFnuwhO1hgbFE66Qa4BsUdrV2ipdTdHe8WZPI4YmBCm95B4iyLRw1VO4JHRN+Rj81vlrLy7YfraXt0Je15RGrafla6IPJah5RxEMyAY0QFeYE4EV650=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768451634; c=relaxed/simple;
	bh=YUZExXnYowvOlSjs9JQ+/foo+kYRTRw91vzpjzxGWY0=;
	h=To:Subject:From:Message-Id:Date; b=T2ynCSPX/ExrP4nIshaUkGtNKvc68TBwyV4kBe4FJlwdUZAyDiX53Cwe+STAYJC2Ncxhfs75gAvUQ5DEIbEfXg7V5lsciMUSU/9o/ewOQnjvEUg5bqY/1dK3ld+fTJNT9EDtlGQWUxNYL8JvzxvbGyN0HFiJSBL3Qrsvl2/Jq+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYzcrLvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYzcrLvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD06C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768451633;
	bh=YUZExXnYowvOlSjs9JQ+/foo+kYRTRw91vzpjzxGWY0=;
	h=To:Subject:From:Date:From;
	b=pYzcrLvinR0YepfDHNgIGmdJqZy+cGFEcoPoeCIT8n9vxraQB9szW7g0jDaW4DQba
	 MK279egYH5fbkA2C0LYila40Ce6zgVJQwLuI2sdmTss4OgMOkW0B23HP94lM8ZRUge
	 vOBjWyXmy8V9cbZAE3Xu43pPNp8VqPBtF/iyvv6vZ5fcLath2eX7Xkl5IDCBuNlUwf
	 OShIgDlHmFEUomnLBXF0gV+jkFACj94d/k2tPBuL7r6nY8WRYw/oTOyMS0jzPTaTk4
	 ltUYQWYxdJdg4zRTo19ZFr04GKTTYh86RBT05Q93ILOH+a5Gmi6FGDUofGNS/opu+3
	 xLvf2IZ2gur9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A4D3CCAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845163358.10782.1193069970318738815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cd067ee4c351cc127a8175ac4e0469ee2c255fbd364f68c5b411509ec4b767
Date: Thu, 15 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768451633
