Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D3F196DA3
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718617703; cv=none; b=Wt2VJOvZzvjumbc3m7iezxiwb0lMxD5wGQ3+qkkyVDkBP98bAznPNEviXFuOOBIxDv5hN8r4uvMxwC4Mnw5Tm1EMc5d3RmVOgsyfg/NNss4eGoBTdkD2vBJWgqK/TBfHRxLH9DRe/obn7ZuRh9HPJQDb6ySajx+YGwV6ttg7kg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718617703; c=relaxed/simple;
	bh=wTXgGpnRpi4wtFgmcQVjX9W2ppyv/lRA8PnfH5rtmbE=;
	h=To:Subject:From:Message-Id:Date; b=A4AAqfR+fo+6RJuXycgzRR18k0hFkTJd/sflVxNBXVfnFqIv4CuCNf26gkqsZsBCAYdn5BPJdv+1QKkq9v3YsRMtwHmXosUW8u+MBVA9F+igdwi+UsjaJOneYdZXMi62es4CX78O6TESkRgmewb/wRhB+5H/liH2WQuSrRPssBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVOoyT4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVOoyT4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE81C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718617703;
	bh=wTXgGpnRpi4wtFgmcQVjX9W2ppyv/lRA8PnfH5rtmbE=;
	h=To:Subject:From:Date:From;
	b=EVOoyT4coVJfo7YOCWK9njD/6TPdUNSYTiiqYqIj0cOEV771rVAddg2k2LjUrv3i/
	 Wc8ccMQPBL6T8hBSJNHBZsjou4VVZ5Tdnt/BAmNkVqJGoHCB28TElPHhsAAZ5IJIjP
	 9G8M6rsRQZAktK4XRitrA5EMyZuSUfXy/EMqSUqML+WKhicpxI+6qOlFbT5cfILtp0
	 8eqznQI275rnbBGY/WI+gQohinxqpaJ8D/+orcwW2GtEXLljzU+6/1ZnaQkmFwrS/u
	 F51M/YViHiR65FkNAk9VSoJlPLITgbKn/kR5TiaNotoQrGdL4xHL0I6XaNz13qc0Lb
	 1kVVRpiLhQp/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38F1C2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861770285.16317.7739238807107278095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9c5b9005afb26e2a551e07ae18dd9eb38c59c87203e9453989726844b0a855
Date: Mon, 17 Jun 2024 09:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718617702
