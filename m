Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B0E1DD872
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734425154; cv=none; b=Ni/E3iV8F1ptady8jxISJD2mTdLzI0+t0ArziYEW5cROFzJcc3Fg4LYyLL56x7ZBRjTLOyouCoKVysODQ/u0bFiC9BPfNGKYYGDaAhwebGDl6gURH1Le2ZqJ719L0vD4y3R+I0ZyOB1ss3YWTiT/NeNZYS1Q6R9YEmydpCyy+yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734425154; c=relaxed/simple;
	bh=01nHQ1aBJjxNVGQDEaQGvLluqihBuZ8E6NaSQira+Do=;
	h=To:Subject:From:Message-Id:Date; b=WaD696xXE7Yuu+O1IbWma5RXJ9H7J+rE8U00Tt65OlsB530vU6YRFW5BSe82QNKepuomrbatvPa+O99x2O+6QiH0bPmDEGCjOWlJR2iMy+qOuTY9HAsZ4yR/WReB8QgPJxywQzHfE0E5p7KSdK8Y7nvnweHwAKZRFKdEeocvhxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh3qKpNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh3qKpNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A614FC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734425153;
	bh=01nHQ1aBJjxNVGQDEaQGvLluqihBuZ8E6NaSQira+Do=;
	h=To:Subject:From:Date:From;
	b=Oh3qKpNO/UKWwOf8/nY9mwv3q2b/MoZ+NRRRmFc5qbv1r6Yr1V6wiZJU1Dz6Kcvd4
	 ty9eYML/gAG+aIjBKV4ktrJV8Wl+A6+J9YSbVYyPfm9WjIr5l7sDtbD3DH4PkqhEwr
	 nPR3HzbijZGhfPLCpuR7EBwReVpi67IrW632BevA9/XdLkb7jC7598KTlN8k6kqZNq
	 h4ypp2cWi27IYAl3WTfNHBXUkeljIP4gCNoJqDUeW0GC81SwweVQg7HRAC26RVX+CF
	 GvphIoU0076sko8Jup8R2saQdKQQKcTjwmxgwidKFshiSo1vNhVIeZ+Xyl3/0gyQ22
	 BC0KUpO37FCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B29E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442515359.15584.17866477889992823321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12ef7482a412568a572dca8720465d48cd1e63dab2e828417442bede6ddf862
Date: Tue, 17 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734425153
