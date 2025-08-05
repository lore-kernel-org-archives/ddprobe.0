Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B193987D
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411394; cv=none; b=T7EPrSx0s6jacGGOuwyDvEyfrXg3C2GfbJOe5chXO5fOuCXqQPSP3OYLxO+eaDoQoVItFvZGjCcp+UgI+2uqvyZEEXTX1aMiTJEB9v067na+APjaGSqU3O1oi38aW75KwsgBGgKUnPTx4/qrShOzX+bZfPu7wBpNxoiKHDu1ntQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411394; c=relaxed/simple;
	bh=eEUwWUc1kZGiNgRsbh7Kv3pOFIb17xpPqvDRMHiGjlM=;
	h=To:Subject:From:Message-Id:Date; b=lhnbmaZVScgETXmxP/YP858hfSNCaFiscs+6yCc6Kjv6NoLK08CzY4W9fCHbbmY4NkHulrrIfSc6HsjDmfSTlQ1omFBc5f5hKIATWadT3QErFozK9UpgELgy8Dn3DHyK99WknM1IsAZaeyWf0t9ebVyIxt0WIS2Btk22WAZxHpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJgnjf3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJgnjf3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E442C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754411393;
	bh=eEUwWUc1kZGiNgRsbh7Kv3pOFIb17xpPqvDRMHiGjlM=;
	h=To:Subject:From:Date:From;
	b=JJgnjf3Nq1i9gdG4sBE6kKDMaj7wtjXPmwY11MFUjIwVK/hk8OqloVhpxFT/A9nxv
	 5EZ9OfXh4tYASxlftlHTkquKq7WfoV5a9vJCKFWfkinbYYPGU9mWfLsBUGSOQRYd2e
	 UGbkaafVb9jneoSz7qGDPML22R6sLAgNEjtirz0u/M+kW/1arKOn/uHqaJmM21AFtl
	 zSC9IF2hMF6Eb/vIyIcEOTPCtgh4oqM1rFhIANa8/MUeqSRq1827CPdWyzIZkito3R
	 8CotREddUiIIpO/DTaGY+0BI/VvBYKYe0GIBLy2o0lfvfAvBoArSHOpKtszvyGls+C
	 v9Z5ySJWp04GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDCC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441139358.16961.14999979350184267752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940379f6f06ad5436fd0834a5b9c5c93a8ff02ad730d95b599547eaf58276a79
Date: Tue, 05 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754411393
