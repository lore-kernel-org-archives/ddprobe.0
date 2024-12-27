Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21B1465BD
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735301754; cv=none; b=baReWui2088qlOO05ObUGqkcQyT82nqiWEdyML6/+CuevHc6cPb5jAyf631OLvHwwCXlqdZ43iS4Y32gwfZjQ5S8Sq2TeOKvfaCP4OoFE/W1fEUJRsYmCwh0eh4SfWFod56s+E34/HqB6QWoDpnr8YBQBN3BEeFmmuGaVkev7eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735301754; c=relaxed/simple;
	bh=QnwhUPPpJxOz4m84zNv6hAAc5bN9EALbVlH1BkDnohU=;
	h=To:Subject:From:Message-Id:Date; b=U/s3IiWz3+ccQ8IQ7qRoN7HhZjH7eNnHNq5ssb1J3IXr7O7uS8ozUpGfx1S6+e5c4FZVJHrkTR5Dn9cwlLT4qHbI4YfW8FAFc3WPaWUiVwmP8vK+WvnKq4x5+XZKwszPmTkU9JUUqcmSAQ8cPPxSowz1dgHE10LEuG/GbMcDA6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMfCB0MV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMfCB0MV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABBAC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735301753;
	bh=QnwhUPPpJxOz4m84zNv6hAAc5bN9EALbVlH1BkDnohU=;
	h=To:Subject:From:Date:From;
	b=nMfCB0MVsA5ie/LkP8D1dHK7nyBrzV/mZIzDWEfkmShZSl9KPxBC45+stgx0XAdPY
	 KrEp4KfIXVW/NLr4scJibElOLhOVAlz+FFgvTr9heO5YjIMjJXH0FhL9rSoURusqPW
	 ZQJxZjQ6aY22s2jt1eeGOxAs8WmNfgnEpbttfc5TsMtl4dNyzcGSpZrX8wrd8igkdm
	 IUY+lchu+TaghlMBwmBzQ+e/l/AGoDhgprK9HGxr2uETz86OTLi63v4Tu8CPFCQBOV
	 kcsKPy6i/F34SSxZOKOLgwJFjoqyEKGQg0cznpQxT3SuBl+2TN0l7pZVtYPFqUToh1
	 QImddbUWTUToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C83E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530175359.5766.12505748114334624686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ee25e322e5615462abdf39b62078285b41186d35c7e95a5dbfc901b2787b32
Date: Fri, 27 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735301753
