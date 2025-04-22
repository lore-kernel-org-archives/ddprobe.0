Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0E61F09AA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311194; cv=none; b=IbrDU/GiSWbT/nfWtE/sYI21TI0Ur1cI3xl2vtY8XIcHFKa2NcGQnmTYfoj/WVDpfESFBgQzyXR2ygnSEBcDZuJOw7tJ3mr+6JOxOO7a6ucHIFEMtteTOwWcevi1uh66sEDgtbq9rTb9hmzZdeBzagvjxunZzm1/XPoe7pGLd4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311194; c=relaxed/simple;
	bh=RaNBoE7loWc2CQyjdtOew4EWb1VOtGyulO+DfkOm86w=;
	h=To:Subject:From:Message-Id:Date; b=erW58uPSIl365VR9RLmLXNyshSWS+Dgb9jUXGPV3FuFP9gYCZjXvZtI0k4NFM/VfH4LJv8m+LCnsukTDBhUH3skevn7FYNiCeVAw18qUcxZ+gJSHBIAWhx/KLo6xdDDOh3LZpeINJ3hpHubXcxwH/CvQx1a2fpURVQyysTcYDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFw0qFRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFw0qFRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D30C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745311193;
	bh=RaNBoE7loWc2CQyjdtOew4EWb1VOtGyulO+DfkOm86w=;
	h=To:Subject:From:Date:From;
	b=OFw0qFRvBICw20EYu8l0Mlr9Uwi2O7XYGSx8y+MLLfn6Y/XgpSe5D+wydk3zy3bt+
	 J2ZovQ2DY+9UG/5airo/gqirCgjKQVIXlkWNz7iWGL7ir3x34Y3ajumPoPO5uvcffw
	 sSqJlv07aKXsAsk0fnLd3Jj0dHr+KqGTrsI/TmbaTbTNj+zPC6JoOvuzsxhymFdYdr
	 ztlu2PU6ouqrxpjz0y+Tx52z5U1BZ9NoDZHdHrAIdemn8/RVe68FjGHURUlevykntN
	 HGmPD6PSA4EmdQVby5KXHPtyxyaRut/PkLAVz5ewA3nA+vI+4MwibA+R6xo+AKNuMK
	 r6YVWmcONGtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A339AC369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531119365.29732.829678321330823141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e414d9fc945fc912f34a9a6b961838d647a8a3b1c9b880d35aa21b1bfe9d9a4
Date: Tue, 22 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745311193
