Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AF77F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721693154; cv=none; b=DQrdP5DXBJcE24sThxsV6EYS/uQuU5QefEC7jXsFlO21pQVbQFOFzqDLDCKoZ47kZaQOiWp6BSmtQrvKytXhmbFX703oAKtt5OWvZS9uBgq9fRzYbodkGxdyVYeCUStS+yTh9rSd7J1Y34mLVf+PkyuyAcEfztyIYe4MUctVvPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721693154; c=relaxed/simple;
	bh=VvJNnL5PolMNUEpxyTs2BBdQXKdcpxzexb0mRGx1Y3Y=;
	h=To:Subject:From:Message-Id:Date; b=U/Z+4nzkjv+JUcGAilsEdWns9FqMm0kl57HqtlqjMiw9/GqK0ex8dY5ajTiP+ym0ozhMUlq8xBu3kl0nkHzFr84PYJyAS2sSbD3Ya/nkRhkeNRiXtqIvLY3dB9k0HPJzl2bL/VosWAnQyaIMT+aIy9Sg0TUENpD8F99gJhnlpwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2jbXsyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2jbXsyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7876C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721693153;
	bh=VvJNnL5PolMNUEpxyTs2BBdQXKdcpxzexb0mRGx1Y3Y=;
	h=To:Subject:From:Date:From;
	b=h2jbXsyjElhOtsdxIkrZ/5IHORv0CD5gkmOJkDsuGfn6LTxFxNwfZTOMiqKSV5QJD
	 R0unKaORgl7ZFfnxDGSsFOtIgc385zDeRvDc3TCPUGGzfBCeKo5gHNMbCfcSQTyymd
	 ACSHAy1wRyo4cFZ/Xrj/ROMJq3PC7jhEneVtdIA3dG5eGpfT8OtSTud8f2BA61000F
	 hERxwGi7jSiv51zJBb/3UUdC0CeYD2mvrHMjb0x9ZWS/ecGUb8pphclSjn+NR4d2kp
	 jEEzP2MFIkXBmjyOu4cTR7lKxFdWPy9/y5TF5auj8MfShRmhcS2XdgatYsOQ46+J3x
	 m/vKiaWQdOKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1454C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169315361.24052.8393789741073459567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaa173afdc466b2468a97282ab30c3564ab2ff19a2da9d0f420b6d2ce9b749c
Date: Tue, 23 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721693153
