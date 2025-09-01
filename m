Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1561223D7E0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756754994; cv=none; b=nIVXZ5ds1Q1aAUIeaMGAF3vtzRvgl9/lQeqHjZueVWWN8LIT8eqvvIit8rhkSUciEUznQjvwys5OayCfQuU94P1nY9ZPSqDIY03aDiy2+t+YISkc8IHpYE04RPH1qvl4YyOJZoRx4yaWLt5qP71dgEBQtxbJK+iqzh1UmxgPyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756754994; c=relaxed/simple;
	bh=NgSXJvrIlxrsVApuRn3xWxbXIO5J6lkSSdb1WtWD9mQ=;
	h=To:Subject:From:Message-Id:Date; b=GbH4wMzJpTMYIWPlk6VwzST+73903XyiR67HP0Iwj+XVsv9dSltFOkVcLrm83lgoLuY8KmZEIUXLZ0bqcBIme7JPUA/L0LLtiFHiCJiFKb0zV6zU3kOcuzJ4pXNS1GApmMp5jswn6in6HQn9AMMePjNfgvuaWyZ08HA52MJx8Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz78Rp6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz78Rp6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756754993;
	bh=NgSXJvrIlxrsVApuRn3xWxbXIO5J6lkSSdb1WtWD9mQ=;
	h=To:Subject:From:Date:From;
	b=Gz78Rp6we6MAVR9yvesD3rukHa2D7csgB6siNdlWpFHPeAbbwxC4a8eg4KkjQXvwz
	 i7vY8XmUdkyGMnewJu4p0QbraIWerMz+HWeCuskmbQ514UegDz08mawyBNHEjpeHQW
	 xcseA2w2m1Ble+bi8ScDT2ESJ1YIdmvn1ufKFIedG3Ap5eDOpGt0yRsyGChqNNVBM4
	 UbeS1wusacDrLtqXUiEJgsrRAeAOpFlmV2bkprA4G9KQxCtPtHI67EgYQzyAJPlwkd
	 Gs/VkjWHvj7W5ie9A9cXQaTMsJXK9UEzwpl656Dgan4shuieVsN2VwUCFSd5jS/vO+
	 20ANmm0PaIL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90663CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675499358.32109.8195275347850661035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff7c862bcf6514022e4372cf5a8472b37d2139382d4f3e219d3d0f5be3428a6
Date: Mon, 01 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756754993
