Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56442136663
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719223943; cv=none; b=M5/FbOVz6pMktFyGy+kyrDHQFBY6EkPrBJAB0/ezbAl00tg/ibmKMv9lZgalQbgHQ+THsP9YUq4u/vzh39JTh9c3Q5fO1e/mJPGpk6ncy5E+xHzsVK8tOK174c+mKMkjI75gXvJXxuaTeSppDC3BZ1avA9t9TcTiVioZ1ku03os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719223943; c=relaxed/simple;
	bh=9zgZniW9wnfcTVBUAnh7svAG1IImmbtEDCKl6Mmb2+U=;
	h=To:Subject:From:Message-Id:Date; b=Y8S+xsd52xY8tM+JnEibMI7Af9A2fZ8bOHH2iwx00FB8XZsO3LMEObC+BWm1UzWIQzxOM0avJn5c5YO/RLUhi2LHXDNahGl4dhP5CXbdShPdaOdAD/j1GxwmKPs6nyRZmAtsIDlD2NGuE4pFE1PCdVrwRwS4t5x3hF1gUAaw2vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDB+SiqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDB+SiqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF643C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719223942;
	bh=9zgZniW9wnfcTVBUAnh7svAG1IImmbtEDCKl6Mmb2+U=;
	h=To:Subject:From:Date:From;
	b=MDB+SiqSUh/siGaeFgvqsRIEZiTbR9y2BIKfRSQoXcx71LAHmSBP8TMxEHY1obJ9e
	 vrwdLHPxvUcO4tp5gksUsOfT+l/EJ4lsYgOty5oo9D67sK+qZrcsK2ixQGwDGydnBR
	 5n+QuFzKradREhsJzaznKSGX3C2MnBGoXNqB/uRl6Gd348cRHgnP4X0aJOCqRB+uHw
	 yXzARq1W6/PvSn4ArhVB7iFP3vKkb3QvAgSNlicLoAEVGsuVvMYzwFeGI57Rm+A6w3
	 xx3pzevPK84br18aoZ7ThSU7rlIpe5B32L4+k3bCmmdsGwctqChWHUdFki+oUCBlA/
	 C0pnlO2eJ9CXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8549C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922394281.12508.6101252314818755805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b976d3f596f5383a468cd06348e358bfc106384dfa173414a73f9d5629b3e0
Date: Mon, 24 Jun 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719223942
