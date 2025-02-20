Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4172C1FBC9E
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740067134; cv=none; b=fTfzSw0E/pibLEo7V+akhY387XAWIQzsJ9F3AtU9TFQaquEPKr2hq2q1e5XOidJKopWOrL9+GJu7F/DiDNh73B4piq6/7JBEmGpUHobwNuJ4ZWw0YRFP7Mud1WdqMLQglMPVE5L4iykCdOrM+7Qjmcb18EDZUYzLFfeBAmMp9m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740067134; c=relaxed/simple;
	bh=nUnjvtdQe4P/F0ks2gfBZl//9EGXRIvHcjVRkmcm4QY=;
	h=To:Subject:From:Message-Id:Date; b=fMXDvqhZgMmUyXXFDjisg3N2CEmXIcZctQ/LFwJoR3OihR04nU5N+iCHu1FRWtXBraGozSrVveaS9kzVmq6ETfGeW+SvrmEk/XJnBaEpUX+X549vL/B5U+kBIUh3eK5nRxp0jkW7bUq+eVI2yWjBV9GO0mZSkIyiTPrN4j7D/HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9lH/+Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9lH/+Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A01C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740067133;
	bh=nUnjvtdQe4P/F0ks2gfBZl//9EGXRIvHcjVRkmcm4QY=;
	h=To:Subject:From:Date:From;
	b=A9lH/+Pu41QEu8jJUleQeAecDvbywrmdjPM0HgzODbsd40qKBFWNfzVej/9jcw5v+
	 A8gXdg98AVAgQCq2RsVfW4yu6WvpjqnZVc1jASkVhBZusbEbyW9T++mk6MHl/AXtd+
	 2olF8fMnCefXvGoR7YTDy9SQtVBe6OLKSDNikKdSPRkiCMUkZTnSvHgSMm5i/xUrBx
	 OP+VB6MA3nKhQUfeqQiz6k48EGDMKvLeZOVeLtXJQqRO2xpKI74Xuc+Bnyuom0SZxq
	 UejD/R9KBTW0E9Sys79d9dBlQZlh0t1OJhz3RG7YAeEU5S1MxJQPWKf6muupmmaLNV
	 MF1GounrP+f7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03B1C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174006713364.18279.7404477282898369082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12eede24db869899514e03fd295661445cf8c991cbec7e0092962e3e6133172
Date: Thu, 20 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740067133
