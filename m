Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE591D5160
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730809554; cv=none; b=Xg08z07VPRzWi+UoSqYVEkMnKO1pKGiQdTCUuVU0oCYBlk9hAI2vTExToztvlWuWrdiTHP2bH58JKDi5fbQkFT59lg6wDZRSPQAnIKehPVy0YPTubahx52WvGtPTfFK8lKOK25Xf0F7GemCF59IDlXllHe3LX47raUqeinjWwn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730809554; c=relaxed/simple;
	bh=Kn2Gzs09dJg2/OzIQsWhWvICrVeJC7/tTe2aUhyTCvs=;
	h=To:Subject:From:Message-Id:Date; b=SNi2IX2j7UK6Wel+BEAYUxCMLSP/6vh+LsbkTuZVBAyAdjsho+9SiOHz/GZ6BY07FhqA7ozGeSgCz98+f7Vgjt/u0YvT+yqJvd2uDJ1m9drAu3rL5VBrpOC/rn/sxM0g3ci/qSEx5NywgHOSh7xVBv4ayc0RG6aHyVekY6LEI+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL3NOvHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL3NOvHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42FBC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730809553;
	bh=Kn2Gzs09dJg2/OzIQsWhWvICrVeJC7/tTe2aUhyTCvs=;
	h=To:Subject:From:Date:From;
	b=AL3NOvHfuNbMJ4xvoV+OOHstGjXfIjDdEWR0qgOni4JV6kjhvi9D+zVgBIBCUThIO
	 7y7AobtQNJARRiiBlUhwek+vfI5WnwzXnLlQqX22DWhfIqi0GQZx4za1mf+dN7Vya7
	 tILCBaIbhM3FSL58BejQe16RoI2+phtKGCeVpBTzNZTWApOTgnREdDGTiX44P2mWYn
	 fHn5op6eCuHCCCbSC06zcp6cNg1BHvxBPQPtCiscUQ+UMZWrCfI6SuVNndoOP4/LV6
	 EPNsO09SBqw2fdjQlkXoPvgu4eKdFbsKSbjX/Dub1Ml+MTXjKLdau6nPcLokeWYY68
	 2vnQLottpsVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8CBD1269B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080955363.10191.8654057089016157941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e970f70dcf99265e547396beab7483f810cf6590d4e6a812adbecd050763fcc
Date: Tue, 05 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730809553
