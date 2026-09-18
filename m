Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30B05237B2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789761034; cv=none; b=pmRgqxJINnDNpMHh7DaRr7d4weu86D4rzlH0BvLNSQTd3GsxnTuHYzfRan922eaH7/LpwwkUidP3w8ZwwNPRIOkQAccGr59ynZHtAnkUL2+v+IC5Eb+5tOdumJUq/PK6SrAW4smjVu8utPYc4+oKqVnnL0LYBgNMJHTkSgSUP10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789761034; c=relaxed/simple;
	bh=E9epGx343fVHrNuti5ZhTQra6BENZ3M/IYNOXoZIJeQ=;
	h=To:Subject:From:Message-Id:Date; b=DZUNmkp+BZ2ZfXreOw/0A24qFkTDYSXCeshH682BIsfLsQKx5HAM2nAIgjXs7G+s81pNThwhTfSIzWZ55HltdKylnvsiv20C3LPaaOALywbFXGJQez/6nUroLqxCd17FNbR1TGFGm7nKh2/3kLUt42E2cPCO+cEdJ9FUbweeBPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d++TnxA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d++TnxA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE232C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789761033;
	bh=E9epGx343fVHrNuti5ZhTQra6BENZ3M/IYNOXoZIJeQ=;
	h=To:Subject:From:Date:From;
	b=d++TnxA3Hw5skduP+FXsJvEXOwhz4Vr3+QKAFi4Q6BOe9bI8olEFip4Uroj26JZ6r
	 PF1PngEpwPjo+fWjIrAmWxM1+6mNiLIVWDmLRTkKh3idnLF9nLIVWBepSFeotGa4LA
	 I/wIPJxJAQKqI/CxkcTgBs+HMK3RBKTpSgSjvMGtypIFQRqvi2SCeJiohzODcVVQxq
	 eK6Rse9LY3ur/MXvlvODcTWaQB6wACf3HWVdUFYdBkK01U2fWmbs9xsBeFW7LJ5orj
	 ysVsUH4puGSI0yQsuXXa5h/K/SwH1anA4Fv9L3du6hfId4h5z/aA+8dzFgVPh702k1
	 byTE4CTz4dFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22CEC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976103369.17967.16251406845392207859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6a3de368b5bb2dd4cb37a0320a087e749ba4b68758f2a1710c3d477c1f6f0b
Date: Fri, 18 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789761033
