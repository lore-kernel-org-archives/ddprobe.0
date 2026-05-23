Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F04C92
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779499954; cv=none; b=QASE45NkbAcQwb79CSKo+CtWloJVFFG22sZ8jI3LmAMRgTtcw9ZbFKFktpA+kLpyQ1dOyM7S49ttP1nk09fOzBpfo01j0X+VsORUnHUhH9f/PwcHetfHXZasxZoPeQEzVpR5e5aKXHeCBfTt46O4KTN9OujGy3Whfj3gpzvlX1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779499954; c=relaxed/simple;
	bh=o21yZvbvLGaKQJfFGQ2+XyQ+zv+PXEriAletEf5Nb/M=;
	h=To:Subject:From:Message-Id:Date; b=L4vozX9ahRZQcPqj1Bf6UBOHj7l5MSmld35Ya76TFC2quG0snQad5SVw7FRGocI16mPmldhinAg6ZiCZSIcip4PkU2Qw5gFWQ1hAYzSgaq1RDhvcvISuPlja35clHEkcBVtWItyQMAx14E/EQ0mFuWJsV1VIeImI3x7Chn7GMpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEZPD1Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEZPD1Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB431C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779499953;
	bh=o21yZvbvLGaKQJfFGQ2+XyQ+zv+PXEriAletEf5Nb/M=;
	h=To:Subject:From:Date:From;
	b=IEZPD1PeNhTT3Z1Yrvs3PoPL2V3v7yNwf4rdxQignzRyFFsmqMFrm6NhUrwcUuB9f
	 gqOx9ptVFi8rbkWe03K+8U9QHvLvCFvWauGRCFmTbXUzNPMaxKfugopwgl1BxMkCFU
	 tHm9PYe/tSrzkQfpIHqxYeo8nWcOIn90aY8D+VJtcuDiQB1tPs/gX//zh1tRhU823j
	 q2uq4Agtjs7EzLHPCdf/UBXpsUjooRKaaNV/6NThKDs6p/JrZUuo9Zb42tii69i5bV
	 qGGDy8YmeMGpe+RQWTZUdQ/NYz9bRttFZozm5WxKtUwpsZQCKmu0pBjzHVhC4Nj2mO
	 bWz/4znMIcPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB27CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949995368.29575.4238177399620833028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6178dcf0f5fd3d6179b5e13398495fb775f166f1050ae094a1b5f4e02f051eac
Date: Sat, 23 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779499953
