Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418F215E8B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791129034; cv=none; b=ADLMIThurYNo61bkCV8xIoRHC+GhWYYfjfVV3La+X7t26EN8r/vr2ax++xLADSF/GUM70bbRd1DPzkv+LsTs81JAZbPpCgI/rU4RbaLF7+EQGeafUX7QIxlFp39E7dxU9EFiHA36xKcPNt0SdNDuk7bkLrulsWhX3dlv0NevAyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791129034; c=relaxed/simple;
	bh=8RtPOIDF75aReRQG+rb/T4ztbGBwW8sJvoI6W5gllAI=;
	h=To:Subject:From:Message-Id:Date; b=PPQBpvCOLP/fyv1dNyBYwRZmxjW9ktMWTxF75rgAkS0+rgU5HqyKTbWKQmJzAB9KgsIYv4bJXKDXoVCYM5PkKZUulbwh6sxeLLTSJRmr2rYtoJPmwOl69A0OASIJkWwiOjQz99U2wCKt2e5RmcuWFUFs6z74V8XphOUl4V8iMKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C46awIDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C46awIDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC616C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791129033;
	bh=8RtPOIDF75aReRQG+rb/T4ztbGBwW8sJvoI6W5gllAI=;
	h=To:Subject:From:Date:From;
	b=C46awIDs+tK6PgLU3MelhYnlcLI85lUa1I6w1H6f27mosScpI3Wh6LtKGXISltoiw
	 hrdfV7e5pbfiDMh6XMgA3UIwDtG6faNr3E3eq5+QCihNQP12oipGXuQ1aV+SENvavM
	 5T8MZsBLyVp6lrbX0HfhD9PR0dUpOzpayOI5WgfXWrWXVhIO9oYpnbih5VGoilAeGd
	 H2QLWx11dLEnGQJQo3+Rcl86hAgufPN2JQ+UxV4kcvJLTGgdQuvWSQrmJ4P8rYrrG6
	 IiKwICMHvKoJ13qmxfDW1Psi9RgvoLRr1rYAIUlkHSwp8RxIeW+3h/Fyo/Qea5oXf1
	 AG895Qlt3jPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936ECA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112903368.4159.5710197746556735338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b034a775676841f9f7cca0101454353a3a0e8cff92686b1b1e19a74104ec36e
Date: Sun, 04 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791129033
