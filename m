Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B46A367F59
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786649434; cv=none; b=gATu+mhki5BF6EfzQCPEvRXafKnz69paNzWm2EbSuZqiLSrdCWgPs4CoV6B1G1Q/7jyfbhJ2AAW4DnoU6V04yTdTW5XkydBgXccHhV4orE24T8qmiZHoIWoH66gW683na59k21Lx1wnwbGGej1a/8NpRXCyrnE3TFk5emJ3oMGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786649434; c=relaxed/simple;
	bh=cl5BIUJQk92k8L8FkGZikR04DiOMCwGokwx7JvvbwCU=;
	h=To:Subject:From:Message-Id:Date; b=GNbr0KnJlHCV36p+4wmmZ6mkHjD2CCNF6WpnkSRogX/3cD/T/uZPXJIf1r7H7D0KvbdQkvOI7AD1G5dxcyJ6TjbuNiOf36ghc8Wah2oeIhCiarTtKhVWPZfRckCojHx/MFDGrkcEvmbGwnvlyiI5+W8t/Ds5DhlSHnwJnNHC+30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1knAEOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1knAEOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD58FC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786649433;
	bh=cl5BIUJQk92k8L8FkGZikR04DiOMCwGokwx7JvvbwCU=;
	h=To:Subject:From:Date:From;
	b=t1knAEOFEQxGgm6sn04OINsZZ9fo8SskmnJKQ1HYEv5YzqytrSV5Ma5ARFg46JAMo
	 ojqjwvbJluldjrUdSUI4kb4BLZTA3rFUw6dQAiB9kqe+BHi81pCQaGa+Y4aVOWgbWm
	 Gx3xwVK3sHVWYuhUufPiEAPWOCRhP9dVbg9SWaIUbTt4pNRO2YLMXGGXIxOcN0EL9S
	 qbDFdMlaVhMElgkrx/EjaD9u9FwNQ4D6TA5FoKHt/GF7bHjniVpE0Rm8xfW3uYCzrS
	 vroPaFsOMYSX5KUDkJQuIEpSJcsMY+jBEIXDm2gXSWlRoCuRgtZ/J+7drHT4aNMs4h
	 sbmSivefBWlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA32BC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664943368.13733.8070728848447561059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb391a08228c0360d300a3931e7e713c6433e390986a0f30d529114b9502e9ee
Date: Thu, 13 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786649433
