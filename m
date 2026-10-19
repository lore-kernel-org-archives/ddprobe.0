Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B361277C88
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792370434; cv=none; b=Zw/jJuBzPZ6UwfcjVvbJWcPoC4Rj2G90+6szhqPpD0/sXYtuIoGzEq4+0fNMH/9LaCr9HCKT2ZhFvMoXK6jeO3iPlywJm+zDGFDoAh2tHSVqd3LU0A27xKPSYQb0pDxiqhWf5unweS2pAbINYgOKkdB0LRe2EZFSOKAEGHmCY6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792370434; c=relaxed/simple;
	bh=E8Y38K9CLs6OGocwEh+70L/YaD/N2S7YUNkxATgZ7MI=;
	h=To:Subject:From:Message-Id:Date; b=Fl88GrZlfZrnP7V+jETYdHunFBlNK77YcyXNOmFV5eW2bL90Ex4+o4hbAlPutjIjqvQMDj1Jo1D8lCYpgyvcv6fN0hZZfM9TzR+Gul6cWMsooNoQqV3mgeetItNmBVJJ/s4D8ujenj5pEkAiDmW1GVZ7+mHB92tx0SS/2GSdB24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIhvv3VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIhvv3VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F29C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792370433;
	bh=E8Y38K9CLs6OGocwEh+70L/YaD/N2S7YUNkxATgZ7MI=;
	h=To:Subject:From:Date:From;
	b=RIhvv3VRx+VroFKxhgoy7qP/BjpRpWfc/+JMxYD3aZk+tMHLMSP3zzZc+/iXd2x33
	 kbqUAh762JqUBRt7rp5MvQOy0oTWT/PeMY8S7c4TklAiA5z5XW2U+t0cComy4jurs7
	 G9YB+JsZSAmFeleABmJ6htIUiePMWQk25j40FYanTUeihh5hl7BI96dnZHrwvTVXKA
	 7MA1QDweTywBTOXo6zLTHRpyu2eBCEoj318HHDce+rEstUx/YwC4wnlhs+XVDUZytJ
	 sB2H/f+HQuM6FR+XxCqqWpeXMcDFoIO+Spi6ns+S+wtHujuI3voqV1ubSLIXgXfRkx
	 XTHokYwfHEDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB3CCCF2CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237043368.10264.13814795884130078660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc75cb50f77e0b7df336b413280ed60d1971b2059102eb6b24e09bafcfdafe4d
Date: Mon, 19 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792370433
