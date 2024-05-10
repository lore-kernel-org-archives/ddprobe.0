Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29713B783
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715376743; cv=none; b=SQ4Dsd6X0QyMVHJpx7XBC22t0MdvmSisDekPxc67hKLdFhv/lDlfgbtoTyBG4dKK61uHQQ/o50iejzmPiwSc/MV52l2Fuksd5Qo73L83Spr7BleE521gUeRrXXW9552Vumtp0dDFxxuM/x/7A8sejqkvZmMUWpeBZgQK1h/XYLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715376743; c=relaxed/simple;
	bh=kZ1NLFPsEoHwCZS5Drw8Avz6svm2Oqy6Yf9QFs7RjFg=;
	h=To:Subject:From:Message-Id:Date; b=SlP6IVkxV6ahNZ1qG0UYMcjTkOFsaoFoN/OjZ67lq7d2ovHwvK2Ir7GEKCG3R3cRIQ+PlnJSMs1N+RdF+DUb99BzIvk8R3UPiBd4amwXWZLWodnjJmeQQ/D0RHx/KJtxRKlW6vmo0Hj2yruh9ifdIokwdOb470wfTXYgyzc9Qf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/i/vogA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/i/vogA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D483DC32781
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715376742;
	bh=kZ1NLFPsEoHwCZS5Drw8Avz6svm2Oqy6Yf9QFs7RjFg=;
	h=To:Subject:From:Date:From;
	b=I/i/vogAh+jxmnXGr3AKQehQKTZMdwVK2usythQqZfBgr/nQuHA1vhY3gAxC+xMwN
	 9SDcJsFcvPHcJAN2UkqPuUFdep+auHGdTTz2ebie9MtJ1wCh0iLkOKWNLALFEwIh+N
	 MORsyQK1X19+pWCM/+xGRZxgvh4dMp/K1qGxffWNnl8JtwXMtLqSnbGY58oxcUf8oj
	 SXPAY0nXsd0Tu9xOVKGVLAwURv6jIQOMf7fn5HqVJijOW9x1MNr//ya6BNs+EIlezS
	 jESiito2NUE6pH3cBSTdUik6x1gyBsnqLFDlBwsQR6OcONGuGHdP75CaNwrZRKQaI8
	 OEQjTnqWGwc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3E4C25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537674276.20807.9075091718756298898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a47684df406dd7a6f4b2b266f2a27d127bac98bd8138b502aa6ecf7db1fe11c
Date: Fri, 10 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715376742
