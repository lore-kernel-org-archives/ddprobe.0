Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A51F1A6800
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774008294; cv=none; b=SnyY0fRFpSX2ZHaorwcTQrcjuWtVmWJNHJPacwHpE83MzzVB8bt/fBbvOqc3AHoyMSgZNhwvnTLEPZGRnU5uKnuC+JsJTNIScZ7tadU0ApcEokEu4ODqXoytsexlXKy8YnWqQYntMZ6ip5UK8Tthdb83uNFnKbohYu6U+CsRKOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774008294; c=relaxed/simple;
	bh=MG43Sknd4n/OpLjUFkFejOfiwtgP4yxBU/QbjkDYzfA=;
	h=To:Subject:From:Message-Id:Date; b=jYb61xtVgCV9wMfZmbwrMjYdAd8aH1x4wuVbelA1nH95ez2TCEyZutx+noS+s5ZMVYvtzW30ix2/eyYrB/zWhVmPqJFmbWNHeA8/GIJedOStpWV/xSFmajucDst78zlp+xoD8i76+InL3fF2v5Xf0zMia9kEI/7hKrwKRXM2Xuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmoOGvan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmoOGvan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8ABC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774008293;
	bh=MG43Sknd4n/OpLjUFkFejOfiwtgP4yxBU/QbjkDYzfA=;
	h=To:Subject:From:Date:From;
	b=FmoOGvanjVtQ5yxTi30JCKhb/A+A5j0KWQ5sV9zQ04Lnu+bn3+fgO33bxd27sx8mm
	 rpGS+iuAT+UDu0FHZrQDlhJvP4zOUY03J1gqu3cBzH67UQGfbJJBZ8wPP5JsZHbr4b
	 6/VlxgBlxSKuzcFQlZDjeU/QBwpOTINji0xvfIkAl2Y1DUW3a1Iql1dMkRhX/szKcC
	 OgnKHdj7obPAqaeh2Tv/CJXbHbKJGosCP0VKEUAZHWMkvxa0wuMyZ54TKyrfB2TLg2
	 yFMUOzKKsLCzsz+J/PDuqfV9YD/Ia6WVpTFk1zfKNtWboAoaKOcVntZ1H1DZFHeFy5
	 wnlNd9m8mQTvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4AB108B911
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400829357.12912.13506399801114635018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab9d9c21694332dd233b5e3862b6c3a6e04370719ea6e1f0e857c00eb2b8bcd
Date: Fri, 20 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774008293
