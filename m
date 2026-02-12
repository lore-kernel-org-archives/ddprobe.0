Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D661B81D3
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770926094; cv=none; b=hFD/ScIT6pWAu2o/ogPW72KoWf+91UkOU8JlUrHHLKvSntWZKvbTYMoF170BI2mUklEUnebu2Cea/m/VQRCjI4ycH7AKmVq6/28ge2kODwIAW4s0ltfychZD6NxdbJ/tyCKFWMo3jdCaw5jap8Cwew4kAKo08L4U5hv4iWqTOeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770926094; c=relaxed/simple;
	bh=KEBCDQFE7IKsgdYa8ShS55gTvOwCnwSpse+lopGsHLY=;
	h=To:Subject:From:Message-Id:Date; b=aGjYq3/oD/FQeVfp3/pWdM7kgPt8YhJLDWBEhog8C/ffOv1g/JbDJGP70DnRaGMtyegLQAUz9d68Vj53F773it0LXCXRZP5mdvA6zQSX7EsKqyUCoj9dWeH856tQIrNDmRbkaKo32qXNdl1H898BkRUppnfnH8e6sblvRFwQPq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5HuIDsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5HuIDsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A853CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770926093;
	bh=KEBCDQFE7IKsgdYa8ShS55gTvOwCnwSpse+lopGsHLY=;
	h=To:Subject:From:Date:From;
	b=b5HuIDsze1EDLmrWFYauijWdA3HdQJgR5Eo5vSFO+YbuXL3Nj/phxNmMJFLmIkgQB
	 mAFvigJIbWggwjMbknnu0hV813mt/bQNi4QxlZ5lclkE2mz0AnXifWyuS24HH9zeBB
	 PQ8oRvPiIvVNcgsGPa7rsBWKdB1OZwR5H4aEX+SacPzT12XiKCLCQozJsBQ6jBJQS3
	 4ZAkJhRAMb16FQ1Mm8xLrm2odMr4suGMVjOKrskpkhzPAd1KxyeiujcN5DAaBEzgrm
	 V0jw5qKTz1kCsCaCMhfOCPjxJaKG/6s+8R92LjXCUVsF0j0J/WrekdTfoVn6GHsArA
	 yYr+5pjlii9BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95836EEA845
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092609359.16580.8230973496683214566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e2ec18289faee0c54aa8f5b6a27932d17bf789d8fd670e5cb1e803c6324e80
Date: Thu, 12 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770926093
