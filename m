Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A5828DB46
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771989294; cv=none; b=NsPhKLwq30znscdA+ZGsCqf7BvLC/0+Kd25AmKaLRbmM/J2YXGzFkrP8fZAayJKV2yb17VLNoYjvt24+KyGAa4SP0joB6cYorZQkGgOh6kyX+o8oMHaqINQFHIL1Osv3dCzEHPrEiL153tyJox5Usk4Q1SSEhTa0euPROcRC/Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771989294; c=relaxed/simple;
	bh=OiKc6p4sz7S9RC2uPoQwJ8wYuTu5w2m40aSkXOahm8c=;
	h=To:Subject:From:Message-Id:Date; b=p/F8FoZkJYXQsPXd4EH91NgjLNmo137N08v8SS7rrfLfeY73BrGfMpR98Gc/9C0AjHph8rGWow6l/hUQXFo0Hys8BJKd2lV7n8gzU5xUMKi6OqFxExOgXiSisDfzf6ScZWzeOzztua5HPFGEVAbaYq554jw+R+4YufmZMR93/fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2bE56+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2bE56+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FDC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771989293;
	bh=OiKc6p4sz7S9RC2uPoQwJ8wYuTu5w2m40aSkXOahm8c=;
	h=To:Subject:From:Date:From;
	b=L2bE56+fxVxjv6H2rnrfPccmvFOsekmRe1q0r1t5gvCqeYWH+mheFl1U40dfSO9Ks
	 hH9wcLEx3E6OztKl92h3xHy0asI5anHGnTOgNEjcH/ENebCEgv1Qwa8lFAE57tTzPH
	 OAgA4Gus/iSFDs3njxADw2DYRADgIsav6Gviw+33cYYaoPswfK4AD0+H9CGGgo3KJN
	 kQWgVLAJJxQv99efunQT3jiDHVA+i/28GgoyVg/gvQIrBS04BGa5hP1ydsiopeI5my
	 iErXbzgtdt/FVWfQySRQOp1yXWSpCWVjo94ocSkq+qyKWobNJ/Cfx5mluOh+OG13A6
	 AOg4jA1sNH50g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158EF5544D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198929358.15143.4205201078028586203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b5c35aeffdac123acd43adcff4aa47f177510e4ee381dac3e2faacee9102e7
Date: Wed, 25 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771989293
