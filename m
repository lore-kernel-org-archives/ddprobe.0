Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EABF2F8BC3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776332254; cv=none; b=azEAcbUKaWt+RPTtZ3UQIGZVJUvXCv3tvTF+g3vUOloxrN/ga8hG5CFKhxgPp4cJvXfl+H3sQ0/dXges1HDhrGkOV0fO4rS8xT7yoof6z/blXL4HtFkmYZvo60aumUcOIqj/VmuBtW2QouJ5mebDettrCwlWzk8PWer68idYGGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776332254; c=relaxed/simple;
	bh=M4UqCFowJ2rypqQqbtgXGmfCFgtrCXlE3HMxqON2hzc=;
	h=To:Subject:From:Message-Id:Date; b=WZJQUadHhH/HD0DKgUsUh9vfQwBIqCqC5UraMBvahmuwgclQdR58GleeoDITv1OZf5toabu/75jCeGo4CGOolhBeGewwg1JYwDy2xH2JqcfHHR/HSHnp2ET1RA73WNwtnHiykPj4dTtbbX2VU//lZOhxfo6zi7heYMXuTC6fmyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3g6LTQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3g6LTQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB38C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776332253;
	bh=M4UqCFowJ2rypqQqbtgXGmfCFgtrCXlE3HMxqON2hzc=;
	h=To:Subject:From:Date:From;
	b=Y3g6LTQMPCEhSwzelIf15S2/HWJ4E2L9sOll4n7UHcyjeYLY+YdMHDAFP1Meks2SL
	 DOjRQ0d3lF/7oTTRki3L/knGXFI4z8GlBcp6G8NLF8ra7t64CW9tw1jDBKU/sbE3ye
	 kqt8CoaDfWZXqGP44dazpmNnFOJz4ADdNy/LQ/mZIJlWINmf0stNBOmJF1e/OmSgRh
	 TQip9s6duSFno4LWFTmmlCvj/ZKdfw2oh3gomQtZh2tpwoW4FLu8T9fn1b8d38/h52
	 N9F5FvYTF1Xsk1G/q4kN1NaFBN6fUpGHx/rqg5YKIL8eOw4o/kJbVqDN46/KhX5Dn3
	 fXWcg1Hz4TEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8FAF8A14D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633225369.2796.837867206791308685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb8fdbf841eae767ce72723876fe8a95d5f5adb22d0ad4659e0d73cf27275c3
Date: Thu, 16 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776332253
