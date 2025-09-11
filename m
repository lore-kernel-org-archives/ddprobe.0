Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D422D0612
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757591993; cv=none; b=LFlWRhN3WrBuAXOWLSaylqdLKJ7lelllRPltui0E+QE4avZjhEWaRpm7YFD7GvF+5FWJXAseXzZxLIxHsAEvKkwRNx6S/z6oq1FZ2dGzbFyqFV/D3MeDAaYE51A6Z1S8D25G4nIRe3MwvhW603naZv5el1L7+INbskrfrBwMGrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757591993; c=relaxed/simple;
	bh=q5df1m9Cw2uOAm+5zBh7pTY3zOkgbREkfnkQtMWeVK8=;
	h=To:Subject:From:Message-Id:Date; b=B/RPHPfmN7WmgXS5xptnqcHmgAUbT9ApiJXYe/fhGthgyHo4Zo82/mdW3jLFT678pedCSui9Z5665Ju0b+IQCpvpWIU0UU9CXMTBBmrl+ONkx8k5QxVGwLWNYyOLln/TTMiqLG/CIrAIfqw/rB1sEkZ5bUAkLsUgumLIBOcJdqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJfeUJvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJfeUJvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEECC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757591993;
	bh=q5df1m9Cw2uOAm+5zBh7pTY3zOkgbREkfnkQtMWeVK8=;
	h=To:Subject:From:Date:From;
	b=MJfeUJvIaLngm/qXRBBipypjt95UO8nDComiMLjDVrooL/4t7BPyvN9zjIyeAOJ1z
	 KzTTSKNgAAeVKebE4ic1hQ6sX2CHMk4kN2zwO/XeGT1KRwoGkFd8awa+0Xqrddlm4H
	 E5mGI6DILG6lenNxwWpctnAIHbjhwSCrV2+o73kC1bd8A6j1tyWYkidBNYKlluyqnZ
	 O1lm/71VnLazZ5q22V9MFo180ugOKfgWFbToQvfH/jlUT7x6iNC9L/+IQ0/jBEyvt/
	 o4MACJF6mPxckucpJutf/anINiSqtcw8XlMiaeGW+vCU3+ONJRYr4CqkiKKQqjrC9p
	 SwpuXnZ2htQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E808CAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759199357.6749.11101196830007891999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7ea2f79c6920cf008e4bcc8124aeb4d62bf9e9840468f44d7d40bd473f720a
Date: Thu, 11 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757591993
