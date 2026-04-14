Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A5270545
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776130654; cv=none; b=XpZqNpNrG8GVZ/kHTsWayNKgXxDbGJu+9XVAWAYBxRilzKHMD2wVRHYXNn5Jqkh33KdfwUGzr4cFfCxL+GVlwSo7FT7mqit0TQkRzdzXbaCj1LPl1FWYSaqW6wsBPuLzatTtgOUdrBkSa33yUs5glu4nnsOl43WRhGZLaF8wcGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776130654; c=relaxed/simple;
	bh=L4LF7d3bVTIhYFvAaN/MsZ3851r5RfuawP0jEujeWqM=;
	h=To:Subject:From:Message-Id:Date; b=kCObWqGDjRmzvMNtw5Re0muF4aRQP6KERlC7St/mZTKFGzu2Z3EUBPy7kTjLAuH4GZxi6BlehO81YAW0MoJiRsJ2T2y9+4F1GL96MgOScQfcffS3iZQxE+hKLCtJQedHeP9MfVqN0BIxE7p9rvlaWYUCfJ6tlaFIZ7Y30Y8XR4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOle47Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOle47Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD011C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776130653;
	bh=L4LF7d3bVTIhYFvAaN/MsZ3851r5RfuawP0jEujeWqM=;
	h=To:Subject:From:Date:From;
	b=NOle47Tb/P9Y6by894R3VhcHxhOIm7WBNBU8JkpNciunsexAbPe76J8CuM9mvKmyf
	 hVWsPW2osCJ36yqau/9OTYwu+hb0QdI53+0R5ylOag/9xOeEGB6j8UKPN6aovDtQ6K
	 IM29mDOaidf/yj78kPXtC7I59RjkSqbcBYky/iQEjBYg3v6oE0rZ2pydlPZgYMD1JX
	 NoLECHhAPg41KY4XgIxsXd/di+I0llgJL2ID32YHz/tXpN5b5CHPMWWpaYiZSX40IQ
	 Q5XBxz2LQvEv7TIg4cdseUIvpZnjtDrIVXtqPDcfRFZRpk7iz5Z79UTrGau8mz3nP+
	 CoPK1yESXHPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE72F531E4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613065368.21476.9086168166897046467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c7e05503a5437f4b4f8a6c8ee316fb344479e4cbe33dd67d0056c19d5a3703
Date: Tue, 14 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776130653
