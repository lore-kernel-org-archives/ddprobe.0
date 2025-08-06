Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161171F874C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754481594; cv=none; b=eM3L/cjXeTapXP+lNE2A/M0SRDcq6/dEWN3a5rhvZzxPrAo73kfboWO3iLNF1cW2R21vxT/+ezp7pvOtQ+1+hmhYm9MMJ+4M3u3ZgDrArBzksmABGp/6o3DpSavHDrPL0T1B0RlaCrUjx+C5C7FEvchXHb9j0txvaCMpBR1QY8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754481594; c=relaxed/simple;
	bh=TLCjUQhvHUQiKc80fOJBtiKuakxltYkaAKHZ1cxeo8I=;
	h=To:Subject:From:Message-Id:Date; b=vDhlpJ91khNZT/MbGcWj09smpXrUF4yO6OE/E5Bx+ZpxUKz79q1RV03xIT89vdSAuuwbzxk0KFJF0SpGIEVz6yK8E+xuI8A8zxPflIKcdTAX84CuxIEVqjl3kv1U02VapF8947CkCg8WXdbnbARY+rgFiWeffNwNTDxfGdqwdSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQM6q3dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQM6q3dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B06C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754481593;
	bh=TLCjUQhvHUQiKc80fOJBtiKuakxltYkaAKHZ1cxeo8I=;
	h=To:Subject:From:Date:From;
	b=pQM6q3dr1npatypqhbo1jPqOoKmr9qyGi5/ZATau9g24Cs9TLyy1sjFzEms1nYXP2
	 lYEmPs5T/N0khk4JDREUSrR7A10YBxjmEpVnXYT7L0ltQQCdfKrGRjWDP/3Ne6mWOr
	 W1a8US6HHLllpe3MsyvDkRO8tjQ54rr272/rbsE+pvTZ72SFs4X+RgD3WCPtYzLtku
	 lGCBq6qs3IeUsJ8geQt8jY31rTC4JnOtd2wR9zdLM4W1JkHodPIbDUGEQvjTjZ1JVm
	 Uo3xozaQ7RAGweirNvFmNg3+PE49s3r96d9yjPyq55tokKuMC23z4qAurxx+NE0jWA
	 apiKHsNS5zC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319BC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448159359.25279.2916869887892922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19eb6c27020956c0b82403f9321ddeb4d0121fd17b28e149d9bc264b33830a0
Date: Wed, 06 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754481593
