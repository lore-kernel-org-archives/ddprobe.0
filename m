Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAC916426
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735659354; cv=none; b=rwdm/3zykcmfvZ1Q1IZcmv9welJ0Q5CqzfFb97liKrNxW3+sFeEYjLNzPQ6mFtla3xdTJtXOcHFiwsxaaWEJObpA6t00a8wBBl72nD+j9nF3CnA+XRPi/Td+vDcpGNTT2xs3Bkiov1Lw1UH87ihFkTj6nRcEpcJamWyodquYEw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735659354; c=relaxed/simple;
	bh=cQBmE2G6XLSUHyDPVPSHAri7lr/SYHGt+Laxank/CR0=;
	h=To:Subject:From:Message-Id:Date; b=pQHp+DHKepxzJXeOLLGYeegkYwIg4gEMMPRs51L64JvaOOU/oLnQf1X6IDR3HOXLGHebti37hR/vlw9y8zkT0opIakP+KRU+PRV2m/caW29eomHEriqQcZTFrwNNheH0/owFFbnWGzFwt/5KwXH3gorYQbu+/MOxlH2OEBk03oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2niSm0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2niSm0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2EC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735659353;
	bh=cQBmE2G6XLSUHyDPVPSHAri7lr/SYHGt+Laxank/CR0=;
	h=To:Subject:From:Date:From;
	b=e2niSm0Denh3cOip/62y3/uob2o6b9hG+cVmZY0Kq4r77pDhBk+whYCSumb6hF5xj
	 sFf7lLaEZKCNfg+dEySGlUDD+gJZUu11/ylx4mhqAFqoG+sJWpecbWIR4gYOmDs7oc
	 EQ/TWZ0cgk9L1hBrsT+YWcFKQvPKLRGP9kHqjQVOTUElE69N2Asw5rA9R72hY71H1u
	 YKlR/MOFM03uqJMQvjNwMWP0cKJX6iqvXdJT7ZSuigOOZu5ykzJ0iFW7DypD1QK0iH
	 RWi8gAU1cFM50XvXVRWAPYlnPPnvhSwme2/bc3cDTKrNsgNh6clmns6Vy/Yj7A76EO
	 vz1Fq/0ixtkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A6E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565935358.19715.12737708124511162421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691ed2957d47e9172b87fa053c48f9d6656f89b9603c1ec1b215f75b36c81acf
Date: Tue, 31 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735659353
