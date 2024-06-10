Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52629B65E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718051303; cv=none; b=lAuE8zv492U9LgvXYIxyYs+YJ5jKW8azi8J9JzTbwKESBloihUMbaxUj8cmsTNGpU3B8U7/0cwCXmPO6yLqtmGd7wBsocgq6AvREy1RX7L5HbkH9t+5pFACBlnLl4ZU6iuShnk/SWlNozvwdSCXMRAAg0Hd9CrPHMp6/G4x9VMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718051303; c=relaxed/simple;
	bh=FfbIct2jpcXJF7fZVtSPw6qns+1LFwKDOmKdllHMqwQ=;
	h=To:Subject:From:Message-Id:Date; b=nDntrH7b/ReuiLp01ZI9buG6TLQEVMSL4gQL6USiy037qEl+TpujLABmz5ZXM8cEKZGIW94Y8vKdHYxIH8a4l6wj3hsZh/NWVukmp2RgzwMkEW4YRatmkukcxZBU3SYIRNBs8l6D48IU10KRFhcWj+EqV2qoYRtBiAd3Q6Uc51Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nntxiKsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nntxiKsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9133C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718051302;
	bh=FfbIct2jpcXJF7fZVtSPw6qns+1LFwKDOmKdllHMqwQ=;
	h=To:Subject:From:Date:From;
	b=nntxiKspfofA7r+aHN9Y8OgfubCeErnyGXTGysCztbkHS9g0WCrIsh7MTgzhnMPJX
	 rDTIv/HmJ6vb+7tsx9LsOJ551+hD5qdBEdvj7uVngoK/fh/1/k9N2fPuzlgAkuV5Pl
	 l2vJOyKqw6Rir2uFYSkM7zDSEcBJQJV/DMbc+5+aC2Ecp01bR5z28v3xdC34K51Ljr
	 +ffXGF6eIaSwbDNTZu/zXGERo9sbZVoyo+ucjAIwSjrDIR/Ck5AK+XSrsq0MQyYNZ6
	 ylcdoUHcXEKWvDPA9NqwOrk6NxeySOnx7jAAQ+GvifT6Hcn6NQuWxKbGgCBPFjt2SJ
	 p2GgVHBcUXSRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBE4C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805130277.7013.5516479809276372723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01a24984df36cacaf003bac23a651b3b4b486b1683a20e6d0b0b3a69f61bbeb
Date: Mon, 10 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718051302
