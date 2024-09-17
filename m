Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE7A4594A
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726609554; cv=none; b=ELj8qS1tsfTLB2GfKa7cEG/CtwVQCQrQbgDpkWogKaA3Q5w4PmMPeDXjwo9oa7oPs0b8y2yk41tqhMsy9tK812IOAOEkGzo7g+I8DmciqxPft9y6ff+qbOdY9WoSaLNMCyBy9qO9q8qOTFL3bH03TJ7SgZjGyTXqCIQ5mFN8oPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726609554; c=relaxed/simple;
	bh=Qtm/or5bVcQXZmjeZ868fRjpHQWwI9tR3hWJ/jU/sj4=;
	h=To:Subject:From:Message-Id:Date; b=fJtbfQIisa1voVMeBQCQGP7Y+t1PTFbAiKmAdi7p7zpqAgSojf0auOPXS+g3jDxlyuY0Fx5nh8IvilBPdohA1aUrzzF9kGHOoySHABXQgZsYLfP/C6J9uvMJXn2XUeYI3scb54hEl0pBFrs3r5jdTP27No+MW4YUQnUa0CaD1no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjftntgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjftntgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F6C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726609553;
	bh=Qtm/or5bVcQXZmjeZ868fRjpHQWwI9tR3hWJ/jU/sj4=;
	h=To:Subject:From:Date:From;
	b=HjftntgOkCdiL8xdEMi/qOQrYvdPWzFgr4rQp2tEXvPP4Z4GKtr7BZsUVfYuE98f8
	 dpGwwNNGbzwAidVLQP4f50sNFRcO+6qaEgWa5YDTlcH9ZDi/xu0n+oKZI0buwOus8f
	 FWa6eJTVJ3OvUmp8RcqXjTJspgB5J9IiJprjQ2JbUu0szlFlkwV7xGng6HUzfiBh4p
	 lzM9EvGNccIadaxqM5593nX/1QYEyPCeMhLAmaEhZsGifLziz1XO31/aLxwJG/ZMd6
	 M67FqHICMU7vZuVA4SMAWwKzofYXC8Vh3p9ECVa/rVL9l4pvvaVvCYcEffGXbc61Jd
	 LShpviZOxZfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660955358.8077.9404144674962400277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc63eec48fe306844d4b16e39c6a25e4f1f18a9f1250cbb15cf558fb155bb2a3
Date: Tue, 17 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726609553
