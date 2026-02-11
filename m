Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCF71E9B35
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770801294; cv=none; b=euxfGuTlOBWYMgkq4fNET6Q1ja+CfWzUhcN5fXb5PCNW25CZEcSxstAyXjBATMES+5H0PJPUB/F168oh9p0essz59HLViRll6g6CCCYiW5DNoju3AI/JradcxU2Pd39lI8cIdHmTmj1pB47jnAtj0oxnGJeLHvsX+/sQuTUw4Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770801294; c=relaxed/simple;
	bh=vhfdbTcstKlb4nMNow/gv58LwTTPz+a16NNbG2y8Ng4=;
	h=To:Subject:From:Message-Id:Date; b=Ec1rmzwUPw0YOhRsOK2nQOOYkCT7A9HsTWADMBhVQowtMHJSODZLo8qIkjvVdaFZdwutGrlLP/yes8XlNcaXpq3GxN063n0fczilhtDJjD10T3wNdlcLaE9CAwGxZd3ztPQ5mt95OfK3MVonwp/ctQblmEjpkY+7mrEDETQROd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQzg1WQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQzg1WQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5077C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770801293;
	bh=vhfdbTcstKlb4nMNow/gv58LwTTPz+a16NNbG2y8Ng4=;
	h=To:Subject:From:Date:From;
	b=JQzg1WQOiaW8/1Wu2LQRPXGckjtiXngsdUakVlP8Ms9yWHavGIonVhpFJL1NfJlQb
	 xZJ6QG/8iiQXLf0E79JhrVQZyhejI84JH3yDWCv19E3HdLmFraRY/aT7nx9c0Gpsdc
	 BlmDGs1tggK6/KiS1e72kVFM3oXinp8/VuTfLyfbLXuOHc4Jm9yOdBJ8MnxzGgnYlF
	 rBKkLWTCEmsXdtW6wWqHtuc9okxtlllcyjeev0uTK5977QZJkT6nZgQfWKHyyz+1ug
	 3VUwPrrKIwo6ySuHOui88mUOxrcIal7b/Euz6HNMJrWjyHpcHahoqb44k6MivCUXPa
	 oC3u5bWReW8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7387EA3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080129373.3007.726404973495400254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62824386c8c6635f4f1d43c4d77e750bab1a4d0159b300f0eda7d761020ad4bc
Date: Wed, 11 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770801293
