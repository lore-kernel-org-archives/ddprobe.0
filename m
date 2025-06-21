Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4281E50B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750511994; cv=none; b=Bl/tNXJVSxZS6l7Jy1Ap+5YIRn/4ujqFsVPwtUS2THKnIXkit32NVdOo7wi7kz51ufTnZdCWoQVGXhMtNfEuIFZ3HNuAUfdpPY82yevseIpfp7omrnnr6JPgM7JCyUxoPba4UeF1sQzJLfOe8WHoTT0ZUSULz1E6wI/RMg5pTXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750511994; c=relaxed/simple;
	bh=USc2SkCYI0MMMgvZoxtwvi70s7eYOvfUmQvp8pqP+iE=;
	h=To:Subject:From:Message-Id:Date; b=tdRApVmkgVr2E5ly25/b6AU2nL0K3n9x3ldCWkSGwPAQsq9JwZqmT3U9BzFAq5shw301CEHs7NZIR5qb4yZ/phaxfTSsdBYKQJ7ol5X9mmSEBiUWe8ETNHLUk4713Zd5kOrbsVILMHM7+ndvqFKYwh+et7QJo4pPvkroj2L+MH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa8CyXx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa8CyXx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF52C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750511993;
	bh=USc2SkCYI0MMMgvZoxtwvi70s7eYOvfUmQvp8pqP+iE=;
	h=To:Subject:From:Date:From;
	b=oa8CyXx3NUY/kvBelOBbXrl/j44BnemvRVZ7g/CHcymTxEDJFC6GWasgmEVNNFVWc
	 pcl1BzkCXUi8l2naPZ76PZTYWSB5Szp3iKwoF5ZIgRpyOr9PqO6yNmr4MyVoO5e0wm
	 5imoMxtzivUbmJravF5+DT6ZHVOTMs79QzUDA4YPopAfvgI0ShUdNmO6o42drnNmsD
	 W+TRfqMJrQ5jzlRjcpUjy4U2OsC79UbCgFhoDpA0T+23G+WXO6ihBIxfMdu9Rqywtf
	 fffsIU76LdI0fuD2/A2oGW+Vme3Y9DYc9ZavymYDyF3oqU4t74DK8TTrqKBp2vjvRc
	 unYkTiXcbgEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F30C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051199357.5493.4635675962835371927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54c87c9a21c34cac557ba1dd087ac910f0d0c1cb6fb430bc2ec597e59933b48
Date: Sat, 21 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750511993
