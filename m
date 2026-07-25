Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A100329E5D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784959834; cv=none; b=m8kdvKHaQxQa9XvVxScdYzdWCQACosEgujyYY67fKMZPdcEsggsHK0t/RYXLNAUvWzoNldEmkMwPiIlaIQ6+4Zhed/GK+zo5Ngrq2YctaIj3OcY7gdXnAI29Bk4bHUo1oKL9+DtM4oj7/wHIGQ9dzzlivE2+DPlz0dwtFUrfcBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784959834; c=relaxed/simple;
	bh=zcW+sFwe0mZOSXsnjgj4m19P8heD8z9LBI4DDG37EwQ=;
	h=To:Subject:From:Message-Id:Date; b=jTfAzU5ngFHs6hMlxjRMyLUdEqE/4MAFPcOocJVyEm7gIehm9JWJlUVmKmgOxp/gcu04qLqivqdd2xKoJDqQTnwMMgeFK4MvS/2yRDP08ZHkgE9CmamNUWfzKO3tyGw/Q38FjGUz2v3BvgQUQEp2y3Lbj9AKGOr4ss3WBUomJyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIYZVzUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIYZVzUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D721CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784959833;
	bh=zcW+sFwe0mZOSXsnjgj4m19P8heD8z9LBI4DDG37EwQ=;
	h=To:Subject:From:Date:From;
	b=iIYZVzUlhwQrzeaJQ2uslzGIflBCa21hi8kY2GnA/TyavjjpsF9v4NPbCok98+zMS
	 41PaQGoNJvYFm1gs0gZj8aAXiZ8F3CpSey/V44GMMuFIeoTK8hv5MJ+jJQKtyk9WZ9
	 zOm7RNiJUQBYseuhtoW4cqmNO/sviyN+vTIjJig1Ti+ZLjEmXEtoWS+BDJ1QxA2s0R
	 rAc+hxY3zjKTFcty417/WlnTjWddV2pu5j8SyVMreWp91BFf+ISRNmwYi2h5FLIUfK
	 LJcv2TNV08trQ+PtfN7T0j6Mp6i412EL0gprwc1t0pF0RcvuLC/eDtuMQsg30Cnfib
	 zbGFpW54qdQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B176EC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495983369.16343.8919007495357408724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17356f0ae566d50138337155b45740f2d6057a09f79907cfa8298a23327a1e0
Date: Sat, 25 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784959833
