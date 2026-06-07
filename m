Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CB03A1A38
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780835674; cv=none; b=JQcHWPhOH0Zg0u6NEvRnsGC4+cFZUxfnaa+bfY23FFUklnYIJf/jX7/u2PkHbHgdhRrBg331ZHzi/c1CktxJTa6ADmTyFxfyS83YTP7J77tnn4x+LYa281k2SHnkOO9lLPENbBOJS3hjkC3++TzFkvJupnFkTIPvklNL9qjMVoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780835674; c=relaxed/simple;
	bh=01VAWm58paKtMTkESy4128DvgeCTJuU0+ouj7HyEKMQ=;
	h=To:Subject:From:Message-Id:Date; b=RezM4ydP7pCV9w6KES30PDYFTOHVIeAdQXDvEyYx2h+3XLgy4ObMJeq4G4OHEA2TqEmE4wAP9tS711IagRJLzOZE1Pv542LE9wgc6Sq0M93TxNScVg0qvriB+kYKfk8JQcseShXD8OwEkMP1+mdlw87IgtSVpX0eIu9RJkZscLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N79vPPi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N79vPPi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C0BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780835673;
	bh=01VAWm58paKtMTkESy4128DvgeCTJuU0+ouj7HyEKMQ=;
	h=To:Subject:From:Date:From;
	b=N79vPPi2PD6QA4S0TvU9Pa0cSkKARroEf8/OqWE55qVFem3cxDWxQWqPHcJ18cFpV
	 zHiQ5Abw1a+sXELXkVbrhPWKke9ZhWlQgCvSxkm1j0HR80FaJEmYcFTwJOBJZ6TRqV
	 dd8/ao1rxAZfoRyMvYVH6/5tiZkg6/v9MoP48Q0JVyvxnGQ2DFu+jOCW6I2tvJXmcN
	 uhwM5A9F8hiVdeJzl7XjyD7ov7mR9UoJWoqkUSBRiANGwMmvPEVdcXXFPxkaW3khls
	 LyvpId6RKYCK+LAvtIc28u/6P+e8T31OPRaKiIhuR70l6Zy/YoAweXv+PDLUHKVrLy
	 S8ALMQA0dKlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E6CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083567369.10707.245238772819683199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2d09dbf2490f150451be7bea54e1e64424a0f4d933acf2f6d177e0cfca9fa4
Date: Sun, 07 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780835673
