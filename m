Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227E93148DA
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780161214; cv=none; b=bxgoFhKLQ6LTg+zvjeHNksQIC8J8PJfetHTagXBCAVHFsdFfNh4k0i0MvLNZhAFbWvR9uI23YQ3N7H83cz4IResLL2OzgyEyUvO5oktJF3uOun43wKwysjL0ZRuccJHc6bAse793mUZaYQLZYlrf7NVXUscJAd6AucZ/Gy83D8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780161214; c=relaxed/simple;
	bh=o66XTFDr/IEf9t3tR8Y37U1Oz+1TB6MliBrUhzwxUgA=;
	h=To:Subject:From:Message-Id:Date; b=R30czSVgHbFFW5Fje1DfWT+8sX9DFnrojQd3SzX8hri49nd9Bytb/pHqJZJ4TL4McWuXs5MhsqbKQ2MZDxl8CCbEpdhnf5tVQlO4t0rDhTvmlelaPZZ6Phxk0PXsnaPIgkq3LTtnXrVJi1cwgrLKf4qJqXcG/XEseAGzvwHL31k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCOvA7py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCOvA7py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF1BC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780161213;
	bh=o66XTFDr/IEf9t3tR8Y37U1Oz+1TB6MliBrUhzwxUgA=;
	h=To:Subject:From:Date:From;
	b=UCOvA7pyO0hKKcj9NBOPGXD0sSbDiwIs7qivkkis70JxhoZb2WPtPPRlKkHpI06ZI
	 OowWA/7+qz/U5+u4Ro2GbA9wtDKgQ5k8fXhJrZifSy4zaYzPUPxsZaK02oV0Ls631R
	 pnsppGd5A0+fz+6wBeSxhmNLDOAWy3iElFKeRmp9PlgE1GNi/A06CviWRdPkY4m9UD
	 k0oP//tyXWNJCX0p19O36K6n/RfefWE9+mKuxO1kNPfs5MfdU321L3Sw4newLdw/68
	 3i2grpmz2nYzpZojtm1ByUkWIRuOlEJUpijtU43tlYgemDMKrgCuB5besmRjBmOZrE
	 SXems1YXLavBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C69CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016121371.3480.15451319590829348329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b10ef0f8ca2c8b4e7b31c81d2751d6c0b398d012ac38c3bbf8e0299181c588
Date: Sat, 30 May 2026 17:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780161213
