Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512833769E0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791786634; cv=none; b=UFKpoIIkF5KABqeoj4TyJCuzP7jpxv84CNoZptq6pnG8DR23OcOu2U39KJ34igiETbyLUaslAsCYFQ4gxKyBZvKH+qSlJtLJcsNKaCAwNUxG9CVnlH94K78oCPR7dOjqxC9c0ppRCTiRU4r9FvyIEM50JHfRnaYxXBLJIC8Wl1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791786634; c=relaxed/simple;
	bh=TeooxsA9CV9mE+NexgMwDK/pDPmbo31nO0pjbc+soWw=;
	h=To:Subject:From:Message-Id:Date; b=IWiHd2nSP/SNqHwphhswne9/S8vgLoYOzMZxWJa8AcTWSjMDbce5GdTgKodxrAmotBmaIbMD6wZ4yTbDu2FtSUe90KP7WjpwZDG8gQCx0rO9UlT9VKlU5zYa9pS6ylNfHeKh4vCqN4PV2PrDuvOFP04b0TeSLvxMPblzbz68ylY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLRsoF2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLRsoF2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95C3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791786633;
	bh=TeooxsA9CV9mE+NexgMwDK/pDPmbo31nO0pjbc+soWw=;
	h=To:Subject:From:Date:From;
	b=aLRsoF2yGGGwkqkmRiSqs5HbdLcCOhGLTuQqTyAJrVzCFXLkN2e+PcBZ+Kj/BSwYd
	 uaQn9Om7ntAl1/1GCSdQ+RdUq4Y8wXIaluR3gfC5YxH2pqsv/bVeDI9F9zqW3DFqR3
	 31Ew86mz8wmCLum5uKx9+4zid05wO0fCJJJb70e1gA13zxibfA8JEE+J8RiLpzexgg
	 LNarGynT4obOiSilkYRW2lN63JAgIPRx7PCpNcTXq75DWDn04QT71R9IHat8HgW2kx
	 ktkpn/gh+Cn3Ehqjl59ocj1DPBsdLRVmg2MSygen8Z9GytlYjBMxIla4J9ouIMWbTF
	 esY1RrCihcHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7803CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178663374.30057.2216627309134270744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802ce1375873bf60f737d23bf16276fe5ec16ad90bddb09d863c9ebb717210c6
Date: Mon, 12 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791786633
