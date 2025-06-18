Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4562A2E3AE9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750240795; cv=none; b=cq0HuRXS2WXvaI+CGkZY0pMVV8tNmvOGK9hs+YMOZh3yv+x2Xg1+m7lEqaFtSk+PDPWOXGxefL7kTYhLtjmkOHMTcGZGP9Cx0HrsjD8XABgA7WUveoVZzCo+5BiDhEEJzPvCukcbhmBIV1llUPfXRJ/9mbi7cKztU/qe9izN2w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750240795; c=relaxed/simple;
	bh=awpTmcE2375UetkWIPd5qze5PHQJ3Pfl8HovMJ0V6wM=;
	h=To:Subject:From:Message-Id:Date; b=u0I8ktST8aieYX0bUgq12k3PbEB/FQMs2dxwFpAkZ3WXwkV/g83YI0PVtBBf6WpXSKism+rzA1LfRNXRU2ZSFkfK/F5f6ZLVlBjokGsIy5YNClqBWxHdARa3YyPkCelw1HEJAGOlOPsPtbKprf6Xq8FvzSTp/v8237aX4pnCViM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiXTGCuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiXTGCuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7AEC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750240793;
	bh=awpTmcE2375UetkWIPd5qze5PHQJ3Pfl8HovMJ0V6wM=;
	h=To:Subject:From:Date:From;
	b=NiXTGCuKWwZMBl/lR5JW2dDXgKrgfCsKFkvGKOCX1USQWCkcnwL6gde1VsKtML9p3
	 HEhDI98Q2I14qlXmllUCMgP7qrR+8HnscuHv29/Uv8SOH5Kty8Uqt+hhd1zOtT85iN
	 Yqxlsgblmyj57NXP9h3DxOMElyZAm7Zukw72c5FPMt4OVUuDNMciGOuCeTbm8/xGTv
	 T1A43hk/EXIYfaXbQ2eCcWuXuu0KTprBe4Kzrv2wL06Wg4Rie06lbtDQ85HTpm6uBz
	 ZP9CQugSlviPwPDZ53VpWuxabmyJi8JK1Ouy+s0ES5sY9jJnlUWg7z7x/InNLia5E4
	 Bv46XXDHCUmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2819C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024079365.1348.14768603761231837202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282b85bb31d10eb705c4a8655f18c041529f36a1bdb4a3162e0429f0661505d8
Date: Wed, 18 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750240793
