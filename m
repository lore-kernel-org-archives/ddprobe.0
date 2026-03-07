Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB4D18B0A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772926494; cv=none; b=MET72rr6RMa82303FoW8TOiH9dgNMz0Tr4lCQmIjZyoTjJIYZJ0CTj/lmmeWA85tCq3j6LYCRK2VU9wfpSF2OEIB6UGxA/Iitb61776Jfeh1+VdrE4bV6KhL24O/OZhA5E0qB/enDUQTZBsqNtcB7oyAyHcx06emmgHNjIoF6og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772926494; c=relaxed/simple;
	bh=J9ODrdFJXQGsFj1TiezTbgT4OHR2T55+H5onJBCh8Iw=;
	h=To:Subject:From:Message-Id:Date; b=tg+fwxDxwxTd+pIdswVShYd3mxgrsAkTF3EE64YRNXtZIda5Xzlb+7ypdYKsrm2OrArkkq3wKxul2Gz8tm74djOHEONBEkV1McOUhqUG1OZ2PdkBfrehVVwDSEd1zirbpoZyaSuc7zacE7u6vN4kzwTCDOHz8y0cwLSFULpjVoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJJdpE2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJJdpE2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF1C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772926493;
	bh=J9ODrdFJXQGsFj1TiezTbgT4OHR2T55+H5onJBCh8Iw=;
	h=To:Subject:From:Date:From;
	b=XJJdpE2ZU40UCxg9FP4X6Pi8FS82MbiNjmUGaCAZeB7AsIVZensArWiluQJyopvW8
	 NaH167o3PvoosAxaSerGFTKGEDTk1chCg3EsO/INgac6eeUFJzyAi/Bs2OCLd13XZX
	 oOBtV8+Xj3oAe9KhgtKHI3CiX+QeY0rG4k/DrJ6jrOPs2qnyvZG3kG7lGLYub3A2gr
	 o8oCyaYracRCs4aymJfRVMOUgc4fqY52Ag2iuzv523iAgvhcB6eD1nZUb/W9JytvV8
	 7RTt9YNiDS1pzvOLDoJMpUyH2HV2SJ7TKWpCUO6N+EfV1C+aidqdd/8KJ4gsaaP73+
	 L89/lvsi9QLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96948F55121
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292649358.7122.6588528099491819735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266804b45eb4c20c4a39e4b1d972cf2c289d32aa8415c8556278f643add80ab4
Date: Sat, 07 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772926493
