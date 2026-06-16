Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E734266B5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781603794; cv=none; b=fBWweH18fDItHmFlQjXNLdZmcpbKrwR8358cjfMThduI1B7kD6+IAQbhoA++hXoclsp37xQNVTAGEvELZDk/Lw3lL1EtP1NTh6mVvJBWzBHkO+RC35R1dp1ku6/murL+Hf+8R+hBpzILDVBFwX9mL3lf72jZdpCxpW//2kUY5IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781603794; c=relaxed/simple;
	bh=h3UGCG3MOlI5t0LemerWSkBJwhfDhorPcqUw0L9Febk=;
	h=To:Subject:From:Message-Id:Date; b=A8OKh16fjCWCKmpagoticokaTxDs1SRyXQGHzvpSpDKk0ECV42CLmgWWqZyB9I4T6zsEnGn/vX+9bF/66kl70heSyTlkbQKpqVtU9QLzGVUIVuts86/j4EYfrRuJxYd9cXY7ZQJVOcHEHIdlfd40lvFWGcSZql0MRfhFRDPzdJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE4+ggfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE4+ggfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8AFAC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781603793;
	bh=h3UGCG3MOlI5t0LemerWSkBJwhfDhorPcqUw0L9Febk=;
	h=To:Subject:From:Date:From;
	b=aE4+ggfMPWweaJzRO2q4VWVOdABDPbk7YzRGmWH8wHdE06nkDZUrh8nvLjFwDq3+R
	 qXYXxxgMSKtv7ecMpqTYP8+638qYLn10DCwRU1Htk8hXJoTeVetFaDx8WgLB/Z6NKs
	 tCN2+8++7trzThbNH3axIhziBygzv7ds8nHzH7RwCLbijL+bcIUx2V3xkcOknVDz8A
	 AwfyrC6KoMTVIHJKYjrqzFnuT3gg/g/8fDhV8wudzy51yt5t+MZ82so3OhN20XLUtx
	 D2ARl0jVwiAi8wn60ybTH1duHeMy+4DFqTV8OZt5crAACo9KfFQ4TtAjjfQV3AfPXj
	 BvO+JQnUBGisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EA2CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160379377.5595.16969062608899441113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72204fea173073a1afc4ba12e7acb139e51c8deb921e594e730180b44a7707d
Date: Tue, 16 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781603793
