Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317972609DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763006394; cv=none; b=ITlz1a6Owt2lcKdgxunox8ENyi0gX0b+XztT1FFI94WhPFBkmiIZ+Vx7P9pr032FXZQy/c2N6nDnyBZbiOJi0o8u+i1zyY7C30PI7ZHfMw7rwShEJE5kIiKknMMjfG4rIdCaUG8bN+B2QKBPQ3S6Iu5JU/HLppP97b+UzGzJJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763006394; c=relaxed/simple;
	bh=njA1C3mfZTbpChuTN37wyf+NulV/Wh3vMvs9/Q2YXu8=;
	h=To:Subject:From:Message-Id:Date; b=P+nwq7J2nsyI479eRuoPRadBPfHsHwj3vn22igCCut9tlns7OUi9HKMlYO+HKaAO+/G6cHd8OBj9j6ezwCJKTW7X9gWArVjk/vwkNboBvUo+itMAaPAfT2C+CKGYYlH3wF+6Qz3kvbjICU8OaD2GJpuBI5AC3zPJBtuwxtRC7P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3RFlwAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3RFlwAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D914C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763006393;
	bh=njA1C3mfZTbpChuTN37wyf+NulV/Wh3vMvs9/Q2YXu8=;
	h=To:Subject:From:Date:From;
	b=P3RFlwAJ0KekQbE/VoKSoLJZ6jzmMPofQQSklrBAKrHHa1illzf6hbznhz9Vw+2VR
	 PU+iwiMaexNmCdU9wr4eCRiPkqRh2rFltO9aBJj2+wJStiFaf2ir6uoKHqdeeuzCIc
	 yNa5Or+SBhT34NZdGt37k/+Omz9baq3RHJ7sTHyUi7HHhIwyev9u3blx4tGtB38Bv8
	 WpvcLin0z/4bvt4gnp171CrwUeuMLRwhT9wpuGtly3yZxZuYQ6QVFngzOsozB6XCL/
	 PXglhPCSqyvSnio5lsPxEHGRXXY/PL+zUtAk6FftaSQhml+C2w+ZY8ClDkfNKnsklA
	 rFbOja91ZYYwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE3CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300639358.27364.11831079011788916425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814939ef77b9f6da7281bb5aa3b93b78145c8aeef32a974eda143b46d2e117f0
Date: Thu, 13 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763006393
