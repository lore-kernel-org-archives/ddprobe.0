Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476932F30
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786249834; cv=none; b=eDZaEeuTeTEjc/dB4oW/DZIfphv9T+4vKFO1jtP30WKOELG/bX5v4wk6Smj7vqAVFAv0bilvu5IY4uLumRvaTMv9lRcQg4m8RiThtCH34tsN6XwjDq1Lo39Fvxir4QCtLLIWqiMzyCGf10rYRABKHCJ+fufAw8M7AzSH04+SMqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786249834; c=relaxed/simple;
	bh=IRTnq5+udpPajktRdXBjcCHQWIs9ZSjaBaPRZB3YOGQ=;
	h=To:Subject:From:Message-Id:Date; b=XPDUAKKERzNqqkzKRp1tfkQaTubnMHDknPWWbjnvaz+IGHJqNEyVsRwIJLEah0+aOFi+GlrIYm1wU1chZrDAoyok5njNBnoISkPzQunDiJBXLl9DBme0BjUbXvFyVNjamBcZ/CrwhW5w1VOhK1U4Ivu77xyE6BRGC68aMnXFK0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOyDDZ8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOyDDZ8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69A4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786249833;
	bh=IRTnq5+udpPajktRdXBjcCHQWIs9ZSjaBaPRZB3YOGQ=;
	h=To:Subject:From:Date:From;
	b=MOyDDZ8Yey5S8G4Zc0RQiHi6Ckibwx+k4AH/A/4b3sFOEmWerx09/i+A0QLKaWD5C
	 RGGO6nYezmYskVdJEMoEq2HpcTBMPjQJLlFWZTg2//DDK03Zj3WZkakBGcYLV5Fdgz
	 wjZAk1xf9P2Wqx148oNXYbx/5QfuLl0xQzrAibKJ44nTk91jHLYh637AWAjAvw338B
	 PG4gyuzJEUMT2jBOzOM2+RLPXGqE8zwbyzfcl2QmtZmrfQoAWinOucetP5eTOWTHO1
	 TFXkeDaC4upEjdxuTQ8qqCangjO3QodifBszjWavSChIovA9T/v4RnWgZcFR5kTur6
	 0W0lMRHXIMoog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BC1C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624983370.14664.13814040375310830576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e90a6ef4be622a50bb57875ac72d8548d8c99a116839a82cad22893e99003a1
Date: Sun, 09 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786249833
