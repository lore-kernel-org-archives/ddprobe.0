Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2BA14A8E
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716303803; cv=none; b=G/FBnjx/30d6KpDdACq03jC7SeKkU0nPtWNKDzsXh/fr8JF2OpWm47V0FC+QQvxjtAJDO2Hu1Hp/7oeOAEdwTWcYIr20cN9z2NL2/cqoibQYeKQPYUW31maOuenzBXHE33d+LS6x5EbmaEEtKKyV32mJCZ/720Vp4NBbwCcQTys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716303803; c=relaxed/simple;
	bh=oQT9bsWfacYUdQJC0v4MIN1/A7CXaCJey5YKw0/bnHs=;
	h=To:Subject:From:Message-Id:Date; b=aFZAdREwNAmUV3TwbAX4A0ogKSOtx37ggK9bPnVfWOCI2/OfhZqzQRRKYdDUmkxzT5UCPfGUTuZtoaXWoFH8X+ijrmWTsQoCl4xVGrJqHIl/JccmyMkblV3TZSlV9hSrqIuqm9tXtUZ8jo/26Np1rnoC57fDlfrbpvqPVo6APjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPkR+j+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPkR+j+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5233C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716303802;
	bh=oQT9bsWfacYUdQJC0v4MIN1/A7CXaCJey5YKw0/bnHs=;
	h=To:Subject:From:Date:From;
	b=qPkR+j+IVbXeSlQM/3HtzR9WidsFxAmxX9N+q5RmjxqSvzgv1gLCAQPyhpieyamC1
	 BRF/opph2o1xCRRKoqbW2v/JMSC4S7C7HiABaizj9LrFShzdfDcVxOFx2zSj3lsbGd
	 pQq5Rp0W+jilzd8tm9lI5XCrtsxzg7skvwb3fKF9MQbpA9/xnv+rUXPiPjTqTem+hR
	 4jkfvv3iGlNglO0uDkZF25oSlmill1w+uggx4kV7k20SzseiFMA4I9iS7AgPQYRS8t
	 Ou4I37URs9sK8Q/3Ltac3TtZOmMfam1joBZQx2yjSFnIqTrmOAQw22YxAQmXWEssAx
	 X8/UPZlFnItdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEB1C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 15:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171630380282.9887.13232349963596996031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721c7a7b2dec2fb337ae261f0260a9cea5b2ac763998effa228490495420e24a
Date: Tue, 21 May 2024 15:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716303802
