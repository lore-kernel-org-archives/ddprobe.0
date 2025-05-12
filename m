Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7451AA791
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747013994; cv=none; b=ZcnrE+mjTx/sxwlacEZOKq6k8oGEK+tVZmRoVaTUJ8jxjLX0YtNKRGi0lv5J97kYhE+HHBv7j8U/S71V6g6Frv+FrL4igyGha7+qT9+dsv0vQ1trz6C7uTq6YQ5i/jVMCLmm9RHi/X2XVcsuL3zhOmzxvWRTq1Wyj6h9beea8Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747013994; c=relaxed/simple;
	bh=czyPMSIw9p2mt9HV8YlWKm8UpZDtq4QC5PW2RbjDmYQ=;
	h=To:Subject:From:Message-Id:Date; b=Wr9EacHkmiFTd60v78hiFRbZCL9UxM+PsiK67LDuvdVQH+Io4qwpe3facvE73xG2l9GoBEjiNRJEWb4IsVooPGzrQrr0YtPVO0Hm1+rqNluBlZkZLR2e50HO4/FkuAgi5v1Aw45/kn3HSFyb8EXp+dE35zRfZIJqpYyF8Pq3N3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKSMdeCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKSMdeCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A09C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747013993;
	bh=czyPMSIw9p2mt9HV8YlWKm8UpZDtq4QC5PW2RbjDmYQ=;
	h=To:Subject:From:Date:From;
	b=KKSMdeCztSWZTlisJtO4dOHs6/4ivQTEX9950VAR+UPxX4H9G7dwfwAnX2BEtASZY
	 etg/u8hNpyuNpwBLMh7bufnJDFOTGwod2fnK6qiwZW/nP7mBrRK8uoy4W5ynRbLz6a
	 WVHgJwB69ta22NpZdD5KbL7zh9tKhW/R0SPsw4NHw+sV4l6qy12954dUxII6iFXh7m
	 qzihR7mHqwXxPoc7NOce+KsmLhA3WwcEraFzPRE8mzl92BWNBwv5uhxSJVsGdCVViF
	 7hDJouQayccg7iuw8VL4kilW9BSnYwdrMbyG7ZuMWIcD7r8VEOOOrjr1VwH8es2O3x
	 DL5sb1XC15J2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F7AC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701399357.31064.6497180071068707219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fc2d30cf61f8853ba24a389788ba2e7f7eccb1eb4bdc8be540952e2074e2cd
Date: Mon, 12 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747013993
