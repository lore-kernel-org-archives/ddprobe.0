Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C64B3B95F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790373034; cv=none; b=jqZklmFCzmZpeGSYhiJI3xqvfnip1C4jQOxdU6R76EzUFRVC61575I9CW0hd6xAT8gpjb4DAQsa4ODcUMovvyCgNrG2ZvXbB0RH6atcsvsrUaEhKucxDIRl8FNCtBathJE9lf22eMSIHR/NbPXS6FrioVXCJazVn+s4FVszDs5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790373034; c=relaxed/simple;
	bh=xSqK9ze6hfsm+3Pcq8Pfc2TiBmr7hwmvR0FR4RIjAHc=;
	h=To:Subject:From:Message-Id:Date; b=bCwTEJpEtSU+dzU0nC9Ohak2V0t4Pm/ZSpVRHjQ0S1d26nWupY167BEXDu6LlNBrGiBKiqK9RmH01wM08TVU5jM4KDaf02ZhS1FBrPYjmELf54S1qXs4dQYhgumXVvSVEz6gth/KZrx9YYoTFYgmTetDLR134sjTTwC0bk7n45o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxTwf7xO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxTwf7xO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CB6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790373033;
	bh=xSqK9ze6hfsm+3Pcq8Pfc2TiBmr7hwmvR0FR4RIjAHc=;
	h=To:Subject:From:Date:From;
	b=MxTwf7xOvWFAk8VwHRcaIQ/4elbqv86rXRtJwT9oqmyR0ysYDKZgliKomC+QDKA2t
	 6AnKef65AMQCqYw1qzHKYdOSgC9Bv79aHiMYzKfJ5ZzJ6eRlsk703JWmQx7r6Q5Cv4
	 xu113jM0hhmtAoNjd7Rr7RFLsBDnUnQ9GrZNiAiaSfTG4R8fIh4S52PLfcJv6yfY/p
	 hmQNk0uB+zRbcc0IyvdCltcuRm3J0EFIG2cwY1TlMdOiv0I3nu9oqM8XYGO56njWD5
	 MiTV+MfNOVz4CelxbYAWJ0RLWcKpvX5Ox7jKjbasxUjCb0zN4855tEvXynoAEYJEqU
	 Uny89MytCTBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDF7C9832A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037303369.8075.17968902352919284928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2289ffc07a847707f657f35a39b350228f60312df994d7d76820517c07cc0c
Date: Fri, 25 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790373033
