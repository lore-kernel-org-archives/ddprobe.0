Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF064A1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738054554; cv=none; b=qo/okLu1wI34xbHsmpAl1k0Oa8fGCV7TnxuIY2hk/9StXZi5o6vSvxdf/tTsIsz333BfJKkL0w6tjAAXLGK7RYqug/yp5BEupV6+E/AnDwvJCrZcYvHGbndnSwlTZ6uHgidlMUyEEVr8HrRlGmYWuq2WDVcZjIoZUsXaLqaDngc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738054554; c=relaxed/simple;
	bh=NL8cgHNuoliR2OUXatgrAaJKOQ6O4q+Ut88RNKam0IM=;
	h=To:Subject:From:Message-Id:Date; b=aRAw7KssYaf3Txx6XRMvisNd3y6b9hrMQTmTUOkJj7F/fMQA7HbF6mz9+1sX/RifMrfuNroXfsITpFqD5OM0qWjGaQqlv1cVDQn3Q0KECUsRcLnvTqxSG8BTNo2okMkShgtAWzw1Ab4vOz9nf+92eTXgRqlF+qduKLGOYPQI7R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwcWpPjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwcWpPjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B473CC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738054553;
	bh=NL8cgHNuoliR2OUXatgrAaJKOQ6O4q+Ut88RNKam0IM=;
	h=To:Subject:From:Date:From;
	b=rwcWpPjLxvr2O+YHXZlPjYRAeamoV2S9MPijqjYQ71Trh6IIcs3neD4tPSaE0Lyzk
	 fDRPVU/yl32XARyfagZFUO/pQekV6eQpEMzwnO2nwksh54uew1GW3E5PeRMe7SPBs1
	 H4jKlj9Os9WXrjQAbAVS5MHagHlPt4efQsiPSH1wchFUT8mY/owJlp11widZhZhYRl
	 98i/Oh3fobp4tjVUcTyUQMeW+4tB1f496ei9dQ0l/ahtWtJDyAf1xqldDbTPSJ2zQk
	 vUXvEGXow0dXZ0Ufvi6x3L0CU223CNPPC+BGdnuLijqr6s7dFQb4Qr2vRDYhdQ3sgz
	 peX7raWqhbI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41F0C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805455365.7721.3832641308849372981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c994edcce4124a0f5960ab9dddfb361a535fc2cb0423cc4d8f4caa3ea7e8b96
Date: Tue, 28 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738054553
