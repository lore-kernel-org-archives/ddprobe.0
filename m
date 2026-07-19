Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557AD20C029
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784457514; cv=none; b=tRN0xtoa0lT99fNzdbXU7CzRuHoBwE+AFhZie7/+IW7G/Pp9S4tNNmRvBWZVFAV+5orueKAZxMTrLCT/7hMMJAzgqkd2LqROYD0ZaOGrZilvlHgtGMGGxuvTLk0sWKIdpmE+4tnPWj6ZOGmFBb2s0zWx7EDG3F41z3ZDxwCgJug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784457514; c=relaxed/simple;
	bh=R3PkHRJ+5mQigcKZvTf8Hrj8RvjQ8witi6fuzgOx8Ws=;
	h=To:Subject:From:Message-Id:Date; b=MDi+c3nqea5FEipQXUfPjOESylC2nVRNPthcBPQERt8dU15JwJ5/VKigO6SI82cEgfROUIdntveQum1ZQl6mJoh6nC5Q4mWiNaIzK2MBv9hyRv4+i3DgDCOB13AMFQ9VDK2Wry8t+jJmMAFXB4h4aNoV/rYPmxyfjo5WZ8SZ3dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4pULDTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4pULDTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CF0C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784457513;
	bh=R3PkHRJ+5mQigcKZvTf8Hrj8RvjQ8witi6fuzgOx8Ws=;
	h=To:Subject:From:Date:From;
	b=j4pULDTvJKbMBBlqfYU/3rSihKYCtWSB6gY6sLC9A/OtZJ/akeUj0vMlE8+r+H0jK
	 1GbqVStxxvP6bp3hW9I3v5iv/UoKBOV7a+jtrK8iHDX14K9gHG37htq8A0YCAtP8sW
	 /QmHJ7q8XVQQ8Dx6NZha6UA1YXnD0Qy5oLbiRwzoVnT/ei3Z6WlU9slYuYuSDTXjv6
	 AJE8sPZplRrhyuAZqrkCITMOFCqLXKEkCc8XFOeBTH8Q3Nf630YvBfgCCJ+N6H8nn8
	 6ShemiYb1VCih+3Nnp6MuSUGbOI/jTMGxocBFc6BTgml2kNF8cLIY3jmjEa6wUokXO
	 IYypvrDJl97Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC154C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445751368.11409.13691453162134070050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9896402092ca1f86b647f36fb3d916b49bf68e9f9fac92ce13f53a7b488112cd
Date: Sun, 19 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784457513
