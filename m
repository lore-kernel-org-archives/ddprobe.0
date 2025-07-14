Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7091367
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752473394; cv=none; b=tVfiZAfAcKgwbG3US2l0dMDixlUGbPfID4FLOUY2tbaZdLIDS33PFjDPoscwHAKZNBxRSW6JtswWPepg+B2ej6ldrr/Y9GdbyTcKE/xA916+OO+bZjZQdnHoa4VRpe27EruvksLgkd3cQFuITfHfyxv/M20kznJM9u4b9NR1xzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752473394; c=relaxed/simple;
	bh=KVz71V6KQuW8dFYrhqqH2sXyhcwFGx2y8n/1kqPLaNQ=;
	h=To:Subject:From:Message-Id:Date; b=Pym31Tr9qLJpa6xWTjTd3YidVcWWHuwXdx8cnzvTCG14zCJn2A1wqBo/KvD7uthcznJAlo/e9jYJdowvzzZj5zr38PcKcgVW7NMrPx5NlvRkYImRt443suF6D9a2gBlNdMPUa1KYcEe0r6oSLMhjsPdd6PKLnYXygTsxA9O8KR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9w1UHnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9w1UHnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6CBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752473393;
	bh=KVz71V6KQuW8dFYrhqqH2sXyhcwFGx2y8n/1kqPLaNQ=;
	h=To:Subject:From:Date:From;
	b=Y9w1UHnC3TmxK7+f9vNueUNhPAtAvn67C5Z0WfNKlG/wKwTxZjXikSFEzzZkGg3mj
	 tfpn6sRj8p1UESaAOK/pv3s6FK95JXtAkvWXfgqbwO9cdW437qYNYvK41hD5+xAoiW
	 S6c/y3NNR0L5YUz/NwZKvtjIgUdOWKc40GqlbY2mqfhGVX6PD1AA0OeHwLHz+YeT/4
	 ikiISOBxApuHh29dwq2VoGNo8nphh51443jNldqS3x8G90G737eRUPS/lBojclXEmR
	 HKyRZvmbGGn9JUs5yaHoGUZvWaQLwLcoYRdOtWnvIoY1yBxoTYM+iyXhbM6rx1SQsW
	 HHe1aPK/nyWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A1C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247339357.7752.17951943729647004934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b38129e2ad3338839bd3d3321e2f1b300149e49d7645fe934b9b9cb77cbea26
Date: Mon, 14 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752473393
