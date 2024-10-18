Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A320E33C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729255554; cv=none; b=Ep/CdlbBqBl5wpiSzmQ6rb5iobdCv2HZJKJcFA+d6x4F1zU0ADh68jh+BhzjaKTNlFqE8fAoFOhTjDfowGr6MkUnCImjg3PhQcZJLY86KloObLjdF74Hs4S2bY8vDHI5hOQMNoBw0CqAotqzzALsHBiPBlXjxn8rDTSE1DPIRHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729255554; c=relaxed/simple;
	bh=38Dz26ohbT7YL75kHlcFu6GWY9yTKj4q6aNXPSg4Cvg=;
	h=To:Subject:From:Message-Id:Date; b=DGwhhVr2XK6nk7uUsVI5K0PSN7NX33TBlFDATpxJiOiU1ORWbyxSCpNu+QIy2b6G17dFWHFwWjlna0lIvVhDC6UOQtCULXYzCbwDgd5iQoafffepZ9VisPBDsl30guSZxkFVPk58LBkjmYdEhV+BYyt7tIWmT/pBo7FmuDDJMWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWALe9qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWALe9qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729255553;
	bh=38Dz26ohbT7YL75kHlcFu6GWY9yTKj4q6aNXPSg4Cvg=;
	h=To:Subject:From:Date:From;
	b=VWALe9qHDf3TlJJz7buzQIbyDgT0X74jdBcXJLb4jvdDUW2Kp2BT8fdbXsG+P3Smn
	 n7kRuniopMBd0nw7ig9Q1jRbvgZ2AUe3thUP/RxCeIIxlkJM7S+OX61VuiPOY9H5Eu
	 zzS/QfWV/a0EBQpIW77WP6Cv82ahWCPLWgh16M7IfMW5Ras5rdRbiMMiIHIGqjjk6/
	 uiQcJemT8wzIN62+cvsykS/DPRt8ErbHjRowQ2ZTFY4vvnGDzn8pzotPVeWADPZiaY
	 nSwVXeGSPMwlIxKB4yFIfRYyNrpMzXkhfVWGcmDMPdx9t35lBqaITwxaxJMe+ZVx0+
	 TZqmJb94Llo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93270D30006
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172925555359.12175.17822452960211286919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01761dee7e3469be0a63b3827150d71f08baf2e39ff3afb41c43dd39799a012
Date: Fri, 18 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729255553
