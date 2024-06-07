Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D79513DDCA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717795643; cv=none; b=tOdhYN1ViByu+JBwEB6FzFT9fqUnqkdd2sKBykesA/xZiDPMIocJHyAPGCLOKCUsVT298XYvUiVjGAXLkX7nYXnJ23sDjRrtBLfvbUzAnMskZv8d7tuphg5ROat6nSVB/38sPvjK9G7O4DY08L2WFA7uqWbFMyrY/0RqEHHV89U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717795643; c=relaxed/simple;
	bh=176zdLf5LWTC6IW7BDYiJ1JG2/pwQjGIJjvceTzIFRQ=;
	h=To:Subject:From:Message-Id:Date; b=pFawmkZp1Z7VlUUv30e2Gi1QT8OlXqlngwEliZnsGbXCGWB3+MQEoW8EYMKoBVOakfH8wA9u40yXnjmHgNgXD1NGAdIIMmfwC/PVAAcBjg9bCcgMB9WFxg9ES7El76XuRKEV/6OcPhxK1GRJNPbdZkV4PqOPLHNGBKYF/m5ha18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHQPxko9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHQPxko9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B90CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717795643;
	bh=176zdLf5LWTC6IW7BDYiJ1JG2/pwQjGIJjvceTzIFRQ=;
	h=To:Subject:From:Date:From;
	b=EHQPxko9gVzc3viDKwGAaRBgN2V3DbqLgBNRKRsBaT0p2Y3zxSggEbv4ElnFwqzPr
	 VmoHHFhFqiUuvJfqjweSLRIFC3YEdXU0AiSwFZozF6E2sMhgcltMgm+PHOVXKJEs8W
	 SOdKNwATULJynwrtrYTVrxcAVlsr/repvJNcvBCZ/3kP9cDuso8S0C7KgEtwBwQ038
	 aKnU9yTFSFbpMoUeJ7q9/h8dDSqFqXSmqa3FcaSG5gy7TYqU3Cij3s3kRqWTT4Re2w
	 LIaiwPmGPmd/3VwslgJA9wRRV5SHSwxRSBszsja42cWX6NG6++I1gCD0tZRDfWi9Zn
	 oMF2BGhYWWJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC845C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779564291.4032.3844707003340435312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f295ae96decc65a7d94c31b1d866a7d96fd96bbe291f5f4a0f9d0cef1b976b
Date: Fri, 07 Jun 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717795642
