Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA94A32
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720280183; cv=none; b=l9ps+zFlTjc+Ww24PrUMyknhPS5pGLPx1YZZSxoQwDTokN8rpKfopaxwrdMn0PITMWQGDY9GTTiDAGP/R/rdnDixQJQ74k5xsosxPx6iJlGuUR2Wc2u2Zv+X2MFp6VhGR7oyblrtf/ymz+d2BvNainwBTWpm0fndHLDcIrkLol4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720280183; c=relaxed/simple;
	bh=xIJ/xQNI0/Ms26mRpTmRaLOfBVecQvPUNVS9NUQ7pi0=;
	h=To:Subject:From:Message-Id:Date; b=e+QIDQUdNsjNABYP5rhRP0Qzjs3uel7Le5RTt7N752+IkqOjjS93rJVsTj8GH9geWc9mOswsV0OrZNdB6wS9YhAZQYRR4xMi9h4LHzx2RxRtsWb1tMomxU0ugtSW2w03+VYn56uvIhOTQCJwF9ITbOJTrix2ljkdXJdsIMieD4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6YKgCTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6YKgCTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1427C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720280182;
	bh=xIJ/xQNI0/Ms26mRpTmRaLOfBVecQvPUNVS9NUQ7pi0=;
	h=To:Subject:From:Date:From;
	b=a6YKgCTsc6Kt5CVwYqYBJYlvPxCdp+ikD0YtYRo7nO/xaS16ZjByWcFHUa6sRwGRm
	 O4XtULC7wXyoUK5MwmmCaft08iDq3tbP0dkVJCF+OPpUKdPIHE4qUZl8wGa77GK09N
	 Xw1ggnGHNIbuy8kSLM8KrKUCECwdcSGqK6TBe4EicK6ItCCbtqkMfWg80mybLIN9b6
	 rMjmlpxA4zey9T6z9UMsj4/Bhy1LqPhvSk5N5oduuXFNMHSiy13CN7VtAvuiJ4W73x
	 yO5fa8zxO12ArSX/0n4FTjFbJ1xvAEdttQDVWGGAdYvBUdaUx8rHLAZiChY+HyqfM+
	 1G2KPau76dJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20DBC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 15:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028018276.26427.863231784075664128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce7fb5c3c5e40152c2a71e1023478a776278b3e750b18ae398834ffd6e718c3
Date: Sat, 06 Jul 2024 15:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720280182
