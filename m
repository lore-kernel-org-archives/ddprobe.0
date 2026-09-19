Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9887D23A564
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789789834; cv=none; b=I/jebk4p0JXTEt7DGPciAWUF4Mans7EYEbDaXDUh8ij6NK3SHe9aQCVGGiIHmSKoVc+zIq4Vo2mbwcPRPLIPioW/MonidEKSFmthOm/Cu/6LHTw0WZh5WkE/kkAyTxfR7sWeFED93w2ZBeumqwVH9nakMOTvbH4gq7bm0fRO1Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789789834; c=relaxed/simple;
	bh=aXpmtz+BrY0rkmJM6jnmO3uMC8LGeIPVODurNORAb3Y=;
	h=To:Subject:From:Message-Id:Date; b=ArFdlKZvkssVUr3mtrHB6HaSFvGkGkwkUrpnyIuKg+itaqhqi2HXuYzhvsCmXlcRyBMymjpc3igD+GNeimqfIfChTXex5aygGKIFPSKREOKJjTS40pQiojFQmtie6IJZWPHb89pQamS0Dp1RznFCoQGjhOyZeBRwgcTyU6OMK38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n80iNXbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n80iNXbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC29EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789789833;
	bh=aXpmtz+BrY0rkmJM6jnmO3uMC8LGeIPVODurNORAb3Y=;
	h=To:Subject:From:Date:From;
	b=n80iNXbEOYhKv8uBaExI5FpH1QvmvmofMW68f28poxR9oBN2TdIKtG15pF2TLt5q/
	 /ebdFKOF0XvAKqE5k3xtp0EctKucTzJUSUyCRkosfkVAcdSzeyM9go2fZ4mN2NJyL9
	 +ESr+uxUiLH6wWTQgekJcqG+MKwPvzOIjHK2wHJr2OU1SiexzYs3mmgzeL7/QgJEXq
	 Z21Tzo2GoXy9E2lzVFq0OkYpb/QUHkxYA84anLDJDiWiGnmaG3GvIDIaWowvoi/oD0
	 RCaEXCG2Y8j2MjHsWt02pnBKsXyxJW5J2VcxHOnT2HqlAoqSx5gv7RvFGjfp//TkB0
	 uVbGxzIGEPSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90E7C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978983368.23385.1964587784993806121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135f1f784efc471bc198237e4c1ae529f9264a33c8aaa4b46f539956dda8a53c
Date: Sat, 19 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789789833
