Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8DD25A359
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767627834; cv=none; b=eon3s/C0OfqvSQb6Ta64SVifAthItxJ3qcCMxdF74CvLcd1xZtqyeim2F7kOb3NZ/Ob109xlO8uRNx7MMGcBnRsGh3mYjkQeSmgy3SGk3qS6UDEMQFS+d2ut08SZ4onDmeGdEYTKlECnvDn1WIu347yiNA41AK1cz05/bEbaUBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767627834; c=relaxed/simple;
	bh=/7QPP4et98JSMnuDBOH61vnnBODeB/BVIlPdGtJ+hZs=;
	h=To:Subject:From:Message-Id:Date; b=pBJpddPFnnZtmNbXu1UNnwftDsQ86DtBVnmxh6q49YZjJfBVva1ZA1q8Xzd1tX5VyLEdu+tHdcorr2ROXcuVEhKi4363W5BzfE/u73168WdBzPVI6XrMRePoC99cgCIPzChcniaDOdykJvMovadU7dyKDjwY2kRG0Y72yYd63Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZgF4hrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZgF4hrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E4C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767627833;
	bh=/7QPP4et98JSMnuDBOH61vnnBODeB/BVIlPdGtJ+hZs=;
	h=To:Subject:From:Date:From;
	b=tZgF4hrBiOlSUf4pX5SVptrjyumod55z7JykWJWYOnSGJzpFHLyQA98oVLTbwJ1D8
	 68Q7Kd1ExVsahQZp5x8EmZjrXdSg/0BZunrGczs4wGvZYQGZm8fjmPDea5+YNs6KDU
	 I4IdLeP9wZOYSsTrRr7+LAn6XEK/pYLCaAf4qyGmFAtYFBA3ykIrJ9ne58ICcUxM3l
	 9PAjgcPpfAYwis8jQAceapgs6LGyqCAnFu26eYMoVqiDasCAEq4dBOpMALIjD5MxT2
	 DmCb6uYBlvXuprNQNHzQQmoi2P7KVYEW5FTsqsNCxV0nnnQQQesMEuP6LaNTOPI+2B
	 7Hvk9fbDHaTqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22BC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762783357.10822.7277802868844528705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d748186669a173fb9c7b013d72993bdb4ba001771fa06d520e44df782c59596
Date: Mon, 05 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767627833
