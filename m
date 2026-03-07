Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ABF20A5F3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772886294; cv=none; b=g2/g+67KDcVJMuTvPUsVi2vuwfaanhtGZaHQuKNU6jn9FsweRQigEYBmwiDy4pMQJyhOPNRtnLGoFeOr/75sXEESKnR8wKR0aEoJc71n353zCAhqf+W+LaQeMhBI5hKhnm24YYjyi6uJvnr//hbj8JysCFG58REtMejYwG7eXCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772886294; c=relaxed/simple;
	bh=AC3Q02o2Qhwm3mV66EXaBZGDgBRGwchI6znNwZWANsk=;
	h=To:Subject:From:Message-Id:Date; b=r1N2IEvWovvUTPDSvEp1WcK5t5l9leeW5RlhltFPNtC93V0SpcWx+aLBAI5T1TI8wpxags9uo0Jm2Rob36rNwhkXL4NRXO7uGHveKob9pO/1m5pjGoSyyYNXbkkmqWbOcux7ztjgdCckCW9t0TE5Msog4JMhAXDXDJjXR8qJ05A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCwA/3Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCwA/3Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94F7C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772886293;
	bh=AC3Q02o2Qhwm3mV66EXaBZGDgBRGwchI6znNwZWANsk=;
	h=To:Subject:From:Date:From;
	b=jCwA/3YxylzJ4VKuX9IyZ+bO/p40CrsMLMxrvGvSljgh0t4jUx9KjdNPiGu1RJ119
	 2p0UHZFL1LBrOe0gv0EWaUZbTziAnzQE4IlvW7FjLm5C0pC5kttHuDC3IKPfBhAogB
	 h09QL3gqRhi/msTn0rm/tdEA5WSK7gXYf83qpPyGu0Mjobqwx5PZpsCEm3OQOOmdT5
	 OBg9osSRO7pgxp2c3ack50sSnaBMfR6Ytvd6IXeY4GeHNFF2Y9LF/eeiNvQO2Q4ZDk
	 oehf87fZbOR+0Z5FzT/OaUAFPiRuodHKl1HFzJhv2dF8qZzMawZO7GMsk7/bmRiRws
	 CK3ALTDk2KSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CBEFC9EF9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288629361.8372.13230457079435818449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91e4206fcf80d889a1c312d8a53df28839cce36bbf898204509e1d94eab5373
Date: Sat, 07 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772886293
