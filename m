Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B2D20C008
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742299194; cv=none; b=ViD4+Lfs/AroVYxht4HPTUwH3zziaYbQ3/Wl8GsV5efHt7RRhZ1xh2YqPdcJIARizSgV1vAp7CWhhfzTxDpJw9n7p3eD5rWlFCbfN/50LGD/GvOEYy8V+k3nHOvPpisWhmeUCdLcKAlEIWWZ6N9PNbV+ek+LItJhIcfcWWqLcNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742299194; c=relaxed/simple;
	bh=VcK6N3J+zROuczUtnxtllkEbPXQkED2cOph2YXIWZC4=;
	h=To:Subject:From:Message-Id:Date; b=BFNRBYyt9ihhLAxXviyVzVeEZ6LPQEwhVMiAhQIiZM0h8JhfBP2HORsCd+KBdsAT6xefarEKFHeld7ZqDhKkF+B5Gc//0UXvLSQyLrK4z5HUckJTHBRzzE5m3I2RZoCkva0R/fMZQ9y7L/xsnRnNVGQ7G/NmeGGGOlsViun496M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjay8sW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjay8sW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC086C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742299193;
	bh=VcK6N3J+zROuczUtnxtllkEbPXQkED2cOph2YXIWZC4=;
	h=To:Subject:From:Date:From;
	b=qjay8sW0vFSwQsQTrfCnduV1B9Cr7U2ARHprxLhpcbWCfr0hGx5xm2CMfj9BLyqfr
	 p6/Lfbkg563wMforqyBQh+1zqozex1ft00XNhkglCYpttuCR84VaIAImCkt08e5W//
	 Hv91nVh6dKN2Lff3kHla6ldkjva2AkPDELD/UPNDTrZTE4sbpxJ1OwdhwH+p+gwoll
	 lMtL4fkk96h5hjEbwFwAc74Jwf3G4Z/murEN5y3xK01BV/xtPxH0bB/RdvUBLUgRSd
	 EAlyLcyPalg5uGlfNEMzIS9+WfuI7jQUo1hxHx1ERjw9FeA5R77tRoeziZVg7N4Bxs
	 +IC91cUA6v+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6115C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229919366.13708.16636157706835504304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3ee0d81bbe38c2ff46a02f06b376d9160d753bff8a31250e0782b057a017ac
Date: Tue, 18 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742299193
