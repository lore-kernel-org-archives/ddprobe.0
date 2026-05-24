Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C94737BE73
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779662554; cv=none; b=SL3AWJS1KcXZlIc7oCbChHk8sKfHWNSXcpZxI1cLjd5Qx9pXXSz7kHqvCUXBe/091CaPinyKjSu0dRzrjN/j7sjZ6ZKahvVvTsgCuVpCgHvziF3HfInhfbdGuk/OVJ86EVx1x3jIAgvoiCazjysfbECw4cIgjZWSNl4FKjLDSNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779662554; c=relaxed/simple;
	bh=Io4xy4svOIluvROl86g/8TkXnvdKI6RIAaS2QJqiiBw=;
	h=To:Subject:From:Message-Id:Date; b=eURJ9Lg5M/PgfNDB7s//SOL5iCJ+3639tJto61lVgtvLj8NlUHa49jslb5elESWDoFE6R8SNQHUUGdcRxvB/jTVRccmkVcP3bQUDsUDYWBrdxySaq8MLRonCFrdoAf49H6G5tglXonLT9HxOwh4fuuOlJAp1p2SRaBnOn1MafPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuyrCtb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuyrCtb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D233CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779662553;
	bh=Io4xy4svOIluvROl86g/8TkXnvdKI6RIAaS2QJqiiBw=;
	h=To:Subject:From:Date:From;
	b=kuyrCtb8CmkgtXgglDx4oM4GPk1zCuXC0xDZQ7FnJgl416sQz8VzXLAUNyCutI4TN
	 0nn/ogF9V+vIgKW59nly9ZbbHYtnFAeQAgD/2krGDLj3h0QAdGCDJxYT7HCpABzr/1
	 5GKgyuBUtzEe8MFGPky2gupn9d92ZarJJLsqGvF+BggW//YX+9uMaBTnym3VCMTugu
	 nfN2StlwKrEW92EC21aHnSxyg4E2Y4y2ceRL9bLrlOLcdQyienQeCTDZkQXtlsUhY/
	 AVLmdr6vJqJT19WeP4jRKEjDtcQEnyZCm3NuRk11MbhU4fFMv2TasNQn9O0gwJ5XhP
	 boZDr2nkl5XHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D6DCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966255370.6143.5256327592926170371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7024351c8eddd8980045f895f33c79ad17f841e038a9162f9e0c8fcabc3b2f3a
Date: Sun, 24 May 2026 22:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779662553
