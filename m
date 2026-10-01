Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D213B530A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790871634; cv=none; b=JY5wVc2282rmneYaWx44iytF/jk+1Oxeuzn9q+qw9Q2oAnARI6KmozVTSrpcL+zdJAYigNLdgwLFWvbR/ux6cUti3oLgDOMmI+qR8vYVWL2fU6zUUshT5HOOve8hsEZs1poZ0A1sDyCMyU7yN8B+E5mILW9aNoCeKrZyJz24OJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790871634; c=relaxed/simple;
	bh=SzHSdBYQNosyKNwvDTtihaNUi990EKghEO9gCXDodKI=;
	h=To:Subject:From:Message-Id:Date; b=GhGBfwfL8dPYZS0VBS+3naIJZSGnuln3PBVafItn/5LIxQ4MOrXep0QxiZkqLp37Ghgjh9SzehY7nSJdkJNCvfFpbU6VymsuMBEcowMVFjmOfQGvjTD2CKMVrw+p8WK1b5e/kx3+rIPjtg5AcjAbwmbT0U7+4BCf1q1OkQ9nM54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqRj6Szp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqRj6Szp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790871633;
	bh=SzHSdBYQNosyKNwvDTtihaNUi990EKghEO9gCXDodKI=;
	h=To:Subject:From:Date:From;
	b=pqRj6Szp4NtRKRiTBjiENtdQesNGt6s/cnvMi150TLPKT1k1wBj2Z6oV/cPWHFdm1
	 0Teof4OvR8h0syDsUKod5Q4l64RYaX178CqUcTgdT6W9HQltc3IfJbFNKCatSGx/rl
	 mgraQZJAr2z4NTnLCiiq5iXHGakwuNSmP24veiHt9Ksulsgy1bwP3U6fYcAd9237Hh
	 fvZjMzKX4/UqsyL7wpA/UAOQFyHjsMCVa964VJErB3AjrNR+y1Bya6I3Pa6C4ESmIV
	 GGcSUU29HIrWZ8WMajLc6xbQeezt8x7gstOF8iHHijQMECP7n6xnSo68IFoJFcHZSV
	 k68wWyIRvRepA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C51CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087163372.28755.7172866654696189282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6797af949098b6a74604f43d8799bf8a35506b70c540bf7d03dac0bf0389f055
Date: Thu, 01 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790871633
