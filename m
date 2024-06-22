Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A21F1C32
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719014543; cv=none; b=DkDxLIXRp69/a05aX1mjWIKHN6xua/6SUIwTwaWTKOJSP0ismBufn0/ATSUR8szPOiLeo90lVZeBYWy5O0ie4KumxZPg+bGK8V3oIEJ8oqt85faphAv/sxCdDsPgKzwzgKLKF7J5fSZEJc9Noy603WXY+BDjlfeluyTHwxNjXgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719014543; c=relaxed/simple;
	bh=sqeOdxWwH4gZOEcK6gR0ktJ+va2H/tDRAmmhc5eTEFo=;
	h=To:Subject:From:Message-Id:Date; b=mm7XikbTQODHj1KO+D5Wec0lxqndt7Ggru+CowrxffUq56Z7VUaEfLQ1waREh4jIxVuARWnDxuvDW1cA4UZHg5hpnh4Mv9P3IWtYBr31He1zroXtjwPpyu6WuwYE0GKMsx0BHhNvpThOyatxSi8LAQFu+T4SJtnc3psePwpDEJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD0sclz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD0sclz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01453C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719014543;
	bh=sqeOdxWwH4gZOEcK6gR0ktJ+va2H/tDRAmmhc5eTEFo=;
	h=To:Subject:From:Date:From;
	b=dD0sclz8etNCM1g4SfDT1esYAud5N8/K7ONUtr8V0V6bdoRL6HX2UlGk+byogrSry
	 +Zbzm0HClDCC6K7k1MmchwPQtHNlKVXNdTy0ap5x4BQaYVB3bw8A1jMA8jXJpJUXfD
	 Db0Oia13R1w6vEq4j2lGy/kiBIYAdORoOYWkYHiwvFXHXrh+jCaeqV2+cbxpRbo6Wb
	 Gd1gX78fGVucdM7J0ku/DdCvqaFLXN4hGPUmlrcDfFAaJIMFAlubptxliGrniBMEVv
	 vHL8IymRY9RqIYc1YbForasJgllcvyYWxpPQZy09qM7C9GxUFzDZkR73ATikGTKfhY
	 3hOu6IibrrXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF4F6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901454287.6557.12350572404635728885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45f4d6b839e75cb2f6231b0ef1a429cdc7aaf0599540dbcf365c6e062236ec
Date: Sat, 22 Jun 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719014542
