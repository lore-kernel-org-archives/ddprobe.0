Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F60418E25
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742420994; cv=none; b=O67L26l6kMqYghY+W0EpNPlj3OZWdHoPAU0JEOAF5GyVF8ME9I5oTSHaAOky4fSplTZ0esa4Hs9+BIPrCTBXVa+tcTnxa0XAvuwydXRDYp+69+jotlhmH7cfcZP7gsNwplweyohhuTVnWZX3W8CHfl+c6oaaDsu1LHUyz5sMGoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742420994; c=relaxed/simple;
	bh=RSsVBj7ebNvU/JkVz9jixiFwASckdLbaPMQDroJ6VNw=;
	h=To:Subject:From:Message-Id:Date; b=sOtOVEyMpga/t70G7RCmreWxhobfwFDm0cE3BeNteardeNOZaFkJzW9jCuBgn54/iuICVY8z9yCsduH9Kb2elU8G4NMbWYdCb/T7iOCMBisGTx9qzyLeKcTYNYDX65UEMLukd+PQlrZ18TwynSsnifGhrk8Em+nK1gdYUJv/ybo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9XHf2PE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9XHf2PE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9783C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742420993;
	bh=RSsVBj7ebNvU/JkVz9jixiFwASckdLbaPMQDroJ6VNw=;
	h=To:Subject:From:Date:From;
	b=d9XHf2PEC0x2txlMX7cdVPMJs32zzdc9ahTtdj38eS1hEWkehSXFLv0vfq8eq9x6D
	 BS90QEzG1Mh7ZQT4UNWcP+bbe/zbMaroYKFAqmve6CvLcNRM9G+OsfXdyZE5sv1w+Y
	 cElP6olHUVBJ/GXNWSMIFBos+iVUfpQlDDe9MTfmq9TLJV/HcyU9zUn4Clt5REihOU
	 A3qGkTwh9JgZLeGt0gXg+KaJ+k661hGYbVUIK0AXqxSa7/jsfv5IwjTij2D1RUwlGF
	 bz//y6smozFybHqalOwrLMjs3+igAdOL7lHGpivcmDp0NZtYNZujaC4qrZEkCtV9x7
	 d594EJo9s3HgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6909C36001
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242099366.28320.2392709307279353610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9279193b8ef7c89bd55f22930e064e5dc3077d4c7e3589c2685999e1d4d8f6ef
Date: Wed, 19 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742420993
