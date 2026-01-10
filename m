Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EC42AE78
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768079634; cv=none; b=D1bHjprccewgK815hVU43ObJ5Bq5Shpce0AUSIL50+8xmmvSo9BmfAhovWgjhzUPinxUe/7EGGSxr52wxSVXDbyFJqmM1I050oo6dQeWN/MEUoaRgFahs+DwUSA8TuJDRc0zpdIrlw8lhE+qfophppgh9raxzymu/5KGyc5h+k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768079634; c=relaxed/simple;
	bh=UNw0nxGn5TOicq//RuBODXMRjIksF7q/90SbK9CqWE8=;
	h=To:Subject:From:Message-Id:Date; b=WT+BMh+ho/lJofPI+br/23B9KKvEKv1vjQ2RpD5//gm+0trKzOthti7GZTEYy+NBB/68439hDkVGXeXkCZ0fC7e1TxhnK0OITRlUxebDnkdjFV0AUdCzAK+6GVCK8zVNtiOOywy6ag8L6LJkVaRFj6xuxjP1kL5Mls55e/1sn+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtOV8rk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtOV8rk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F73C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768079633;
	bh=UNw0nxGn5TOicq//RuBODXMRjIksF7q/90SbK9CqWE8=;
	h=To:Subject:From:Date:From;
	b=gtOV8rk6vyv4ZzrA713WuW3XzYzwHVrRAf1ISlnPuuzg5128OaGmvXVXwnhwgTSpT
	 XqNtofxpswsydYotgLumJcTG4k1jM3n+uB5JDZ+9eaCVZ7zgJszPHOCyGz+16CBqgd
	 aHT4cxVBaiTHCIGG64NdppXohAWdKWUCFLivyHlzlWNEXCvFXPno3bhQGKXmhcvxgn
	 f4KFdk42Im63uBDetqVl8HDQcqCeMqpOd7gXRtlGU+8jF2mN83sZKHn/1Mtwpl7iPN
	 OM1ryh6LqXVJZHAmsDG/SMhC05mpr6A9H56A6ljoMiSdoO8xPg6cyhI0g+5ot2btLM
	 NrOYYTyeAs72A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB6D25023
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807963357.11503.4908246019648913679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682cb26308b73c40f36e51998f0a0d776307dd5d0aab4f116b1646d989613952
Date: Sat, 10 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768079633
