Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248ED21E091
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509174; cv=none; b=C23yS/L07OliZYwl5QSxfJPrfTXHMFHy0+eZ+9AHSBwoniQCttjTlpItHC9OAOTBtqNTbVL/39ddYyo4s6kUV0BDhumJbvWi4cM6EBiD7M7Ei7SVYEo4Gm+WSGtnCT2rK/k8MdHAYEuHFgNdrkJm9XWY2tOA0cie2IuAg+RKc+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509174; c=relaxed/simple;
	bh=dtT+RVELD5EiRtQuX+1MQhVf/PtLpg92/O5LKTRpAmw=;
	h=To:Subject:From:Message-Id:Date; b=sbYBdOj2DEpGiP4Bk5/DgB+Daf43BfdveaQVCxYAT6m4C4+I1cWZZ0KldmEXF1CSm3cGjb6kfCM0IbGOyqQh83DA2UiWSrgOKwoIikVRztkXRwRUqZUMxAE89m3jN1T6vPyzBQgm/QD89OgAoWi3I3mSZYEQPgyjuSikuKr/vHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6yyz7Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6yyz7Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765509173;
	bh=dtT+RVELD5EiRtQuX+1MQhVf/PtLpg92/O5LKTRpAmw=;
	h=To:Subject:From:Date:From;
	b=e6yyz7CjJAOzzTRJC1s53b+hBqGJ9xGIvtn8ut44ggCeCXu62fkzynJuFj/wQwR7V
	 ZS0IM0lromoesmIlQKUXH4CXYWj2ifJhTwLvkyS0+ydH8qfFM1aPbwyxXLuHL+r6cx
	 GKFDsM2KgB2S8NnLYyEbsuTo+DD3ktlig3+OKPR02TNY5DheY33MXWphIo0AtAY3Pt
	 P1RN3DAV5xX/bbuVbwmNz+xGQ/o0XZQ9Jl/M6gee78Ld0LJ/HIlILcog0GkEM4TvPf
	 wXOxNFidIVGoB1UocLaKWNmcuDxzN/qYjRy2Hpf93lp4Swy8UoEFREWS9vXa8rRabc
	 dacNg/kWfzmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95575D43367
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550917358.27993.12277439994587749321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86a25a31f637e7f4238f64424e2e08c0a238ec0cee131940c18085c8f8da770
Date: Fri, 12 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765509173
