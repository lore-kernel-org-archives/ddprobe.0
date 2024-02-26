Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA05A2C95
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708929497; cv=none; b=cqHkjTom8jcPhhp6ymB0qCFGCXxQwy4kJrM3iGfdCrE3uRFh857g+QGYrT8yB+KQQBayMqq78HfN+tmK1JVMAzB/rpA1/mffRw47bJO894a6erC8HiTfosLp9giivgUOL3qUAuDpEy4Om5XdvtJ43j2AO/wFL55Vu98PrXcV6x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708929497; c=relaxed/simple;
	bh=L8haHcx2pE6vKqiA9ruQIPktPSqWFcQKYyzcwuoBs1o=;
	h=To:Subject:From:Message-Id:Date; b=Sevr5Gf0ADfSNLzAN63ZKqcpnUBrWGfm/CbuGbfnkoJNSI8kSMvd610V+9vjtJDpsqj9LbyeyWLdkLXBqsNDpAnuAv53X1M7qYnNNnOIuWbe8RMyrYW0PIetnDVh2UNQJc3sUDO9IhRqLSlumCFF+yk/ZCMEloMM8FCZcsJLhHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMV6VOXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMV6VOXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79937C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708929496;
	bh=L8haHcx2pE6vKqiA9ruQIPktPSqWFcQKYyzcwuoBs1o=;
	h=To:Subject:From:Date:From;
	b=KMV6VOXhwvn+282r2GGrIzV59z4/Flu05doDtOnE3UWgfKLfc4exSiq8PMGMOk43P
	 cgr23iJpwlncpfyP7kC2cBL+g93ICiJ3Maql7RGN7ZOPvBImGFpr9Qi45oGGsgfc5y
	 3YKB/N2Ser45g3odQ9X5eOjVG+g7fQM2hA07ZjhMMLX4EF0KQqm8B2ql5sef614osU
	 gce2kg++lQiHKMAW9K+RCA73BClYjOT0LPKe/2+t0MY3ospqa9I8AwYCjeWMLOoJDN
	 xkLvN27sxjTc9waRvQ+BA6RJGfwkctZgGHe/t/o22/tr8a5zc9on9zwwN7930MaiK+
	 ibLRvoFEUgB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60200C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170892949638.21498.11418138235653755661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2839fe68d4c523faec0b5000c7cabe019ff0e77026c38ea369065aeafd431ea
Date: Mon, 26 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708929496
