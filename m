Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20250187FE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772972094; cv=none; b=ihVPG8A+xIz0BRtd9WgDq1m0gCS+rEoLDDCaGMGnb9BbgFbXQ47ayoR05RyaB5dQTMkSv3SIEEmmEjAQLExVOJOqMCsSb0I33rxbUu+q6fdbqmh5Lph4Njv0JHLMiWdreTcL+GOu7sbpsZkgUDRTTQoicQb/PaaJ2Vd/1pM631s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772972094; c=relaxed/simple;
	bh=yxPHcYBO8Lu2Ml2VSagkOiR7eiPOx00ghOGpKLlRv70=;
	h=To:Subject:From:Message-Id:Date; b=hCe0E0ctBZBHGW0emNHqRarVnwuv3cNRloVgo45mr1Pg6jFfWCt6WyJh0gFcTCOM6pTQCF18f3sVrTRFNQh07VCVVFBlNvtMbApBGe9LcqDbxOqXN7mcF6t90Yreetzh3W4ya4HgMkL8G8c8FYKq0uuzshLJQ/wyLsIY6DIY6Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ8/rscr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ8/rscr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A2AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772972093;
	bh=yxPHcYBO8Lu2Ml2VSagkOiR7eiPOx00ghOGpKLlRv70=;
	h=To:Subject:From:Date:From;
	b=tZ8/rscr09F6mHdYpxCyK7VLYYX3nMfQ+rlEZEenZloptA0YZE6IWfguytbURil+a
	 wkpJTyJ8ZV2RJBM+zOG04C2CjN7R1bQC318ZgoG4LnFfMHjOk3hZ8FbnCFAK56GEB3
	 0nvl2ZH9d3ojuiJmBobBimAd93TABxU4hU4GBbSLraFxeMLRVeMaSwQhbzi1y1Eyfg
	 Eb82xRrlQnrGsgeqVgcCSGFiYSCRpcE0S5rngcs6QxCdPDGq8uio8+qxtQXgrSj9qO
	 kfS7DN4v7i6V0HiFM61fujJeC6XbqW/abH8Po+wov14sH/dAyvQ/+tXcFjEZq2k6YB
	 MKta9C17tSwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F7C54FD2
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297209358.23459.13199256699158613415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03269b3222f633f01bee65e2ad610fba803af2f3ed89ff25d5545f80a7be3190
Date: Sun, 08 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772972093
