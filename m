Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1149120C461
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756696794; cv=none; b=cED9EX4zeAFDSXOTBlqYc9prTbVkGdml1AwyYB0dgoJTiTZJvDYJSo/kUgei20s2u11i0SNGdGUX7AUByQuJyrWxrQdpGG+Et9Di3I+ehagNbNLmiIaiqCJglyprIuljMbpJyaifYQBg+G1QpiJjAFiuneyLmf6ksKXqErn5m7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756696794; c=relaxed/simple;
	bh=YzW9vFNjuOkES8H4tWMdrZbMwhHe4jfM+9O2hmWYdAQ=;
	h=To:Subject:From:Message-Id:Date; b=AAXCsf4mkb9hDr3rmKpMeSRHXQ+SMhfb0tXpf0fFKozysvKOb27LQewYnp/Dgf+vvSDgXsyJz0dscz/a2AsQdPNFPobIvbNf33yfckYGJMEZ/QMKKa2Gz1P3Z6NM9wrS9kjkw8Rqwfa8poJxnTRj0ikKoFP/Gt3PB6lSRTmxa+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7n60rt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7n60rt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B3DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756696793;
	bh=YzW9vFNjuOkES8H4tWMdrZbMwhHe4jfM+9O2hmWYdAQ=;
	h=To:Subject:From:Date:From;
	b=m7n60rt4/mT7SbA1FX4ScHQSWjg+1OZQbMJhoyMW/KQlLt6W4KiwVoePxwgLBGZUw
	 rtivzJMiTVF3ACzmoq/Hm3ZdV2ApimQRxT6/A+uekoNcT6C1GZi6OMZAsnsxhYaiDV
	 3kMObYNZvHLE76UlAIvlG2FlYYTs8DPeDgohcvIAMwseBJp8hyTSVYGAIMiFSJhbpu
	 oTzO1u1z1xhPxGe7HN+rQMyl/SBF6Q6yhaqSVWV2tAmcB/z8f95ILZsHV9p3zaUrr+
	 sXUdBguAmNjPqR8IaTbPAESgN8X8+14/A9jQL6mVCVeCco8sDsF0rZWl3W4+wVH/wX
	 8LNHUfguZU6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CBCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669679357.17278.16683984374540780798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4e506ca3916e11e7e93111a7dbacd6df6fcbdabedc5f63b1f4aa802fcabad7
Date: Mon, 01 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756696793
