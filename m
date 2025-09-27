Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5931A0728
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758941394; cv=none; b=s0W09zsXHGQTVWz1Ck82h04ShYYqFa0OpHywzcWtLIfuroJBD8FBMEgyL0dmu/uBDjQyZ9JYFyLfLH+AnFlwkCDUCD4imVc392IepU/HlPYonC6IF/hHRHspOZnXfiaFHvt6+81hyTC+KlPf7n7cEizCPAhOcMBHJXOlNbCDNQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758941394; c=relaxed/simple;
	bh=+q8GT91GORBOvKX1Qxgs8OW4Cqt/nkw2jI/9yj1Eotg=;
	h=To:Subject:From:Message-Id:Date; b=HigZAPValPuX2T9/COd+SpxZLtU+yDNebgdLyl7Qlcva8gmsZi1e7CmOPHYPvxi1ggHR7IB17BjJW5hjVkG9SNFG/fJq+5j0aGR6VjeWvFHOqstXoiV/rdLjd2zzKdeV2DPxKt85JToN8XBAy6iHTZCACkEqZtMPBMjmL5V+f0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj75Skad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj75Skad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E99C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758941393;
	bh=+q8GT91GORBOvKX1Qxgs8OW4Cqt/nkw2jI/9yj1Eotg=;
	h=To:Subject:From:Date:From;
	b=Qj75SkadWOwsvVkKKypICdZ9D46ye7caPlNBZd7pqWjvfTSH1kDFa+rD/WxpPYMLC
	 8brPlPHZkmaTszJf+Wrxf+m1qTRkFEw8BOs80vQGgdW46l/CYdivAVYhJt+r0b3TXN
	 GfpBEuC1A7lqugeSX56yUf5PlVj9Rc1QN5IBk9A51q9uV6jWO8ytufM3KRF5TeAtFv
	 Q5D2Z2sAQa575IAZWhDSc15H0lrO1uVF9BFZZ/Q9PVNK0ioGRrkzoR/kYk6ivUQK4j
	 p8JIA55+w33aRvvY3KP1D8eeyMBgF9rchyhLsWh1pJd1WlXN3sqaBEiztpVs41tK2U
	 G58VBWELyJ8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964BBCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894139358.20049.7582251738436281787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2accdf019c740624d987cccf41725811a1679878d3d3d6bf34a47007ed5a118a
Date: Sat, 27 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758941393
