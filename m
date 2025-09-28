Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291F2459E1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759025394; cv=none; b=syMsNYhwnRSUR37sy7G8qHhNeivfvLIBvMR/thVsZtFuzgeIUQeWng/8vG13Kk0KjQR7DHUqFFCy8x3Sc/mYWjR5CNg9/qU2eiiKJcp9Ypz1OsEo7bxyFcw7QikWisDSs7TPbju2ighdxBjsf/0A7XqcJNJgEgXFiAwA5SbA8Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759025394; c=relaxed/simple;
	bh=ugjauUCRK9hSJWCgx/I3hHowTmjWpP83llSVsZN1rOk=;
	h=To:Subject:From:Message-Id:Date; b=of8LYSqc/e90n/1p47egxE0iz123AGgFex71v8ogT5+j0YXqXQ+yEa0N+Svtnspy1GaXI0oM8zYq1yI1UnpwCEvKSk1EDgLj5OIjdr2BHMekBsl05ONV0biK3+vHWQ2KeYGg1oCTsiaA494/cZbAPfP8Hj/ecE0EdcWcrVNnKEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hv1pA7QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hv1pA7QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E98C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759025393;
	bh=ugjauUCRK9hSJWCgx/I3hHowTmjWpP83llSVsZN1rOk=;
	h=To:Subject:From:Date:From;
	b=Hv1pA7QKHaQJowxYeO6SunvGaPtW24AakvUhZcrcYsqgSnkmFuDeO81zl3JwrxAGb
	 wdPMs9fIWcPTYcpLcD368hYAlsQ8L3I4VaLUVLyI4qHEa9gRnxU5tN18fQ0JvvRCqm
	 8GO/BNfLDEo1Hedeay4kCT7ANXxY7lmBPNgFFPwZPB98S+7uyn17Qb2c9cyoRrfSCu
	 YYK35IF7/NH9nwJYXnnI5wFA3l4oFAaDGpDIAqYrkl8yY+oHDqAkuTXTdeUmN3uCEg
	 7SkkROm3GlGAs3eLJCzJh+N6UhncNb7uuk6Qzgi8bLqewJpeBOXqEwXMkMUH+yrDis
	 NdoL8h/z8TP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5FCAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902539358.15010.16779928011380560578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1dbe340f3d2a754afa314d76e7bd4fa38612919807e2fce464a655e4323a346
Date: Sun, 28 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759025393
