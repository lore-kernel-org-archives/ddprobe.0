Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479AF1B041A
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755983395; cv=none; b=WGIVAv2Cv+0/dMOtVea08PFfWvA1wHcbvhjH3T5fWiR3d8ynJoRIyID3UIc82BglJ/188cRsKhQ2ZjKhq0YSdUyEl+VbD7y3llyyWv2yq3aU+0ATN0WGkaoIwbuH02x84x0pUlikZ26KqqsyYK9SEoLWoceNulbGAoDVn5kQBcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755983395; c=relaxed/simple;
	bh=u7AOZUkz69vjG+lmvkBed66gN5/KteONLqzWUkqBfrU=;
	h=To:Subject:From:Message-Id:Date; b=kI8xGNEKtAFTgKz6nd9OaF0bEHUawvxMiVQABGwr1Mpng8RKVcEQFukpPfD+TM1LCZnmj1wp9XcYthXquH64t5FOEOq5D2MzSHoPs8PcVM9KWOfVSYpHHqMpgW4UN8eb22W9BSEG/XNlx/zB6DjerS+AQi0gUDDQ/85Ksa6QO+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot0/g0tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot0/g0tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A787AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755983393;
	bh=u7AOZUkz69vjG+lmvkBed66gN5/KteONLqzWUkqBfrU=;
	h=To:Subject:From:Date:From;
	b=ot0/g0tv+SAMpAKfpQ3YOcD30ID39wrZqRfnrePAuuPICsnsdFQuLJH1KO8f+US8T
	 +TBKUd8J4KtzGxOppcO7+j026XgNEaCPM6rofZbR0kZyt+fiSWLdrg4mhKo7tqStvD
	 LxqaGuLLhbHA3JskVurVg+sG6oRjkXjCVFdMyc5IixFx6Yu+kdjPI3hyakdIWlkGTQ
	 Y0QAVKJJ388oLNgMIiv/j7u+QEvG7cDvR3mA5ZkrSiwSX3k5gNGBCf89HGzUFv+ZG9
	 UegVX0wcqIFlAIYQoQVJV1vL3yobCGX9VZbCyWEtQQaX2GNX/YZ9OctATRanAqyFYW
	 pD9cnn13+W+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F70CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598339357.13937.10660561168905929542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f348c8d382a85215026272ca4a0af64ceda1edbe45a9de02acc8ea62eb26884d
Date: Sat, 23 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755983393
