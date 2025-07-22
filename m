Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C83273D6C
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753219794; cv=none; b=qdRnTtUfxRPDXOYj6dduUWAhntZ6K1dGwn6vtS1sFaX+KT6yUWeTI3XjQsgHv859af73MQVhfKO2IXpS1JA2XMUHsCdwC5C0QZqzS4Wun+a8dV8Etbyl4XMQXjVMTJQV+SVWb2O2ocqFNsM+PnonyT/M9T8Blk3z3Idfxl7TuFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753219794; c=relaxed/simple;
	bh=TlpLbdxtBokJOeduui+fTSGPi8cJcQGp6CXza0ODXXo=;
	h=To:Subject:From:Message-Id:Date; b=lTdw3RgVU/KXJDS7FQxLNZEXuwcMYZclsyx28R891FZm2juhKsqsfiCtCEoMZffNhVMBzximuhJw22+O0GKWWaIM0Cs1Xg88Dj5NCNjH1UzMg4TPTV3TVNDvZzQrQFcjXlqjVhk3qB56Ki0Z6ZTEzz8u9kD9R6gnuLbCk6c5i7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CE5SNTLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CE5SNTLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B2FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753219793;
	bh=TlpLbdxtBokJOeduui+fTSGPi8cJcQGp6CXza0ODXXo=;
	h=To:Subject:From:Date:From;
	b=CE5SNTLcYQnIO++2cB0LmjegXOMHHBY017yuciOtDTfgu+RuuZqYqllyyofz71hJ+
	 XdDU216DyF1ItAh+OS/r0vEbTm4+/nw3lO8OWhS+OEvR7H6u6cHd0huYBpj2v8hGkj
	 o5jjQWaRCJxIXTjaEEAw7ja0STYUNMrHWVwIuXE10WoVoRoFWXTW3bZSWsDxoCGuCt
	 c446CRs0sXaUXctnNqVNdr2kTZtbIMg0CBqq2osPKTGIapll0ji6WlR38IhvlnuCEU
	 uZYdp60nvu+x5+8PhYBk5+Vkb3fsrxIFRqlSz7QGOmSleciu7KmEc9HF6zJKgT5Ji/
	 qMVkLDsiB0R4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C8C83F34
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321979359.31143.3338069443760593018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed2274942ea27c3b921b41bbc95659e0f17d36bc78c5ca54fcd8d9b25e5e926
Date: Tue, 22 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753219793
