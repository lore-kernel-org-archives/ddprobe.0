Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37522097
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782794914; cv=none; b=KTGYTD5NQiITsxVWrGclB0tBQ3iJbxVl23GsPSaVnPrSbyX7JtHUkGhpLdS+nCg+pLBMH0cBueBxMKkQh3FyCC9emaYNtNJJgSENIYeNOQrh+gFRAYIwlttkm9mLah9HuJ+gLLVCf8o142gEgWOocFIV7e6ShNXZdpccCEqrw6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782794914; c=relaxed/simple;
	bh=um8ziFWVx44SGEDIjGO4YlTd2hvDrgpHKc41XN4OxUs=;
	h=To:Subject:From:Message-Id:Date; b=LfdJthWKUrqrNLucjZD/g4AnacENR5If411Hw5ETn3Bzqn5XPy3L4n/Vqcju6HDhK97VGfjNjYC3cXtukYOF8jfFJEgGQBGfp4ao+41UU8u5jtYbbhFbEGTAXraRWW6hX4/96cUVRjCOulJu82V+uPWnOvBtFOrjmEdA/nLWO6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0uIEa9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0uIEa9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD117C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782794913;
	bh=um8ziFWVx44SGEDIjGO4YlTd2hvDrgpHKc41XN4OxUs=;
	h=To:Subject:From:Date:From;
	b=P0uIEa9DwMCepwHSHHicK4dI6ag01nZXjbSWqYVdsJPDCB6n1mVA57LV8iO65eWoj
	 Js2bCLrdKitFXonkBjdvnTv26hzDJeqtFatcZ9FjzvjXNzTjNXuUNtkB2eLKun9rFa
	 2XCxRABzB5mmT9CHJ8UcId7ZsOHbsVuRZEYI5dvCjjiVeNiZMeCg95tNbaE/zgYbMt
	 q3DT/kH6qmQM/cOxw+yVVO+mxekFlYMCn4lAswAIJtcabS20G+zDeMg+nqWCFbF5Ux
	 MrE1/gRPGt2XLl61rXgAMh9qtCl6lW4Vg4Sl2KuQIy4zqqkScGEtfwiljFHov6eVbW
	 1hG/BN1vKiK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE600C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279491368.14577.15423318592036489564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20a37d6b12feb71d1be354bfce91db68f7733a9d17be723651dc3d67ef4948b
Date: Tue, 30 Jun 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782794913
