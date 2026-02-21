Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E608226CFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771664694; cv=none; b=khV5aG35TKns6SYhNPOuKNjmu3UQmlIgyukcnjEG+/AWaicXUZh05EgX1qZYCYcGV8rPkPBVfbzqYwEL4ObWfPsSy+97RBgUsVoEZ0IMHibsSo++IKQ7ILScyM/Zec1J1UPdW6QY8BawNhGVWMc8yLA91qo2EekyALx18koiyhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771664694; c=relaxed/simple;
	bh=J5pTwQ8AzQHUzu9W3JsIPeo9xcbvpd3kSImEzZ0pZUI=;
	h=To:Subject:From:Message-Id:Date; b=vCHqxB2zAoloYc6tUWFqZnypJboViXgu2ZhOA600136VyCbx2Wqm/PYWR+bGu844RXgQ5/mC47OnyDk7N6gs4pDqEZBUaU/kYO+aRT/OPQGcLy82ViuRtLI5bsifYD1E1C+IvU89B07xj0qWdNu+6qCYCgERcgCe1lSSYyFVxnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3DO+lkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3DO+lkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE044C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771664693;
	bh=J5pTwQ8AzQHUzu9W3JsIPeo9xcbvpd3kSImEzZ0pZUI=;
	h=To:Subject:From:Date:From;
	b=B3DO+lkdyckPLlezeavU1TV0uqI4D/hMzhyloMmkA/xXkEC3X6QJBVieSuyp9VgeL
	 gT0+QFt98bfnMN0APuUYIzTNfn5HHzNjFJdw90nwkFUjDyw1g8cEtfFWciX0XG/pSw
	 uhPRkIExJAUWG0feSiW9e6TxcG4KIoIpV1uCNAu+FeGOD2J6uw8qrlfjYURX5JoZDt
	 FSFOfygnP0pPprnJmXeG0aGqMNzpJXhxwt154NAwpcYZJ0lblKJrUpDASU8U328OQy
	 c1t41+O3OwGfLdisNp8e6zj4GiB88rnDijROvll692ar7T5pC9nI4r3qHZjBKgoJKC
	 /SAIAejn4MW/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E0AC61DDA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166469359.30720.701320311294817068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e97fe4cbadad1f64de9e5cd4627a5d7dbd6b2fa968a304f2170bcac5619e06
Date: Sat, 21 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771664693
