Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5662DEEA9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746308994; cv=none; b=S39mBZox12SBuTPFdD04QysMixQ68t3qydZ0a52jutc6BQxZ7O6kfpeseQHHcdvrHbv9JNwgO2MG8Tob48Ilnossz/9OemTfWcjIx37Q4EIovnYcor5KJ1C1/6xgWFc+iEl95oWcYs0uu3SluyhriwbxSZ9jF3jC72PLSA9Wzf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746308994; c=relaxed/simple;
	bh=ZnKO5mICn98fxd0pZa3lxVJhqqRHFjIFf5rzWmtOQEM=;
	h=To:Subject:From:Message-Id:Date; b=trTTvLDPXj5EM4lSUlAQ7/gxI1qM1OZR9UDXW5B4oHWxtIZoZTFaU/ZSr5JnsTXRIvifBCer2WGtaDo4zLSxOIGAwHM+p/OgllputtoPzB9WaesNIe9HWc3c6QzW02osNZOUizEEdj6ZZDVjGaUy9qerNRutttwMtlCmXaN9bMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK5SCQ17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AK5SCQ17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8055C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746308993;
	bh=ZnKO5mICn98fxd0pZa3lxVJhqqRHFjIFf5rzWmtOQEM=;
	h=To:Subject:From:Date:From;
	b=AK5SCQ17H1sUBvch/Kg0Xzn8DVSBz+Mw2uruWRw1JP5P3r8g2ocYFnihsz4kpxXeR
	 ROFKWku3VAI03b4YdjvFnIkZaRstRkIoeqIGjHqTdwvtBdwBezS/EYEFsN2leN8zCo
	 2Mb5eOiX1mECDd+HLkH82nBP2wwsfJ/x024cZcKFIYbV2Oh6aeumWCwgqKhpTzDL3U
	 l4QnoNhj+M1BvTZmiFpBCVePUy7iFYScgg2bp5WIrSmKAR9BgifcOvX2qWfKj1K4Fq
	 GlI4ZNsGq8BmAOpxU3fjU/UkFjBLFWG67Rvd9SXmbkM4GoWezVQHVQNcuzBvjiaFbw
	 TjWJ2f0Vd6XXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94413C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630899357.1206.5984169743409095635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41a3fb22334218fab10104469420f4c7e535bc45abdbf738d2e417e8380989d
Date: Sat, 03 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746308993
