Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F3F13AD39
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722870354; cv=none; b=ROk6uQ48HK3N1iI8K61jJtWcZFI0KDTc7Q5HDl2LeyIn+tjbxqQd7OBA35o9A6JXGqC86wRXCKC6iQ9b3beoOPlU2msG+T181GOUGsMtmZeqlDBtKEBOvuOnfjcLcN3qeHdwLYtQzl7CZTQE1+2E9yU21day/gO8DHNVWHY1qVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722870354; c=relaxed/simple;
	bh=tl8A4nRppj/4mHw+IlH9m0E6n0uItiYh8vVGZBeyaJI=;
	h=To:Subject:From:Message-Id:Date; b=hDfztnYDzC+O36bUH4/f+BAj+lMnonroHr464k4gHK8H8N30jc1eabYV8xoCdqKrnChDFUfpx8sl2/Vcz6hwLJfItcWBNDVeo2ap6l9PCkliYAKjit2lSvVgSRwo46cXffTs48Wk7DTgPiyZcfaVLsFW2dzHpEO1VeicqPVJAB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT+dewuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT+dewuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C1C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722870353;
	bh=tl8A4nRppj/4mHw+IlH9m0E6n0uItiYh8vVGZBeyaJI=;
	h=To:Subject:From:Date:From;
	b=iT+dewuu8sby7jMw2ZXKbCYutExp82EFHpJ5pHY1Gc9EA0sk21GqPHix435mUqZzB
	 Cb5bcB1M6vXqAWOIfjS1Uwiyd97WW5OrZFDIUHCt5Eq3OZNKT4aa1SESg7i4n29aX0
	 W0Y0iGGw2znZfn6AuHpwLvemqHPv0tCC4bvam2GHLQv79xi3hkI4uIxBuGtUWd01lq
	 iFbEcutLHwy2/9n2Mi/pAJoQhkQynge1IzlMnaEbBdItbWBuiAgh/tilSFShve0UnO
	 0AQ+lFGMiz6mEjbepcaWXRqt+A/F4hvg4LmPWCVidqnhxvj0qxzL1XKGDVZW46AhV/
	 kbkJNusNL0y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB31C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172287035358.31544.4810679281473713415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35d8d142479f0538d2966d5bca46a31ed03456bf2599df15d396474ce6b3465
Date: Mon, 05 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722870353
