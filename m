Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206032AE72
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754010594; cv=none; b=d/W1qAs21Y4kml2nHpE/bulUugqhXnRaBw9bNvETH4BB84xVF/vVG0MRrt7Tcqbggy+31OvX+yKIzMKszUh0oQD0uTvHMldvbxR5SrTcwlRcB15MhCW+qhFcE/lyHVmR8su57tGar/MPB4POvWJHbnjZYKFThfuP/iEOH648UeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754010594; c=relaxed/simple;
	bh=gHWZDmk2kKUnyyC87jwcx3yLXGqzLuFI1+3Lv8GqHZg=;
	h=To:Subject:From:Message-Id:Date; b=PHuqXSpW//XCGYF0Z1TpykTSqglC1RQbXDeBwK0mr5BYNv2feuQW27FOGxDaK97BM1pnF5zSh7fpEGNl1DZE2/P0GG/axpAhmVZkmM8MQICYeWRyQ3BlaG2qOIEu4NS3A9T9QTQhLktpeP/Z2kWSNTIT0CE6cVj4f6JRmU9+pHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOcViUZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOcViUZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F58C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754010593;
	bh=gHWZDmk2kKUnyyC87jwcx3yLXGqzLuFI1+3Lv8GqHZg=;
	h=To:Subject:From:Date:From;
	b=ZOcViUZgd/fgwAIa0TfQf5m++91PuzP6DD8OHKvZLOGpDbz4cdyci55z48wy2aA6G
	 Ui4rqikzEmmS2OOVQVXcWgcSK0JkR083nVvJC6fgEQp39nTce3uuOopxETCLD8tgxn
	 cqH8lpWTU2oH/hLO3S6u+6hx2h5G5NLDPFgFLzrGcCwkLWcR2NnT62oOQEDzeDLcMA
	 eWkJyGRUw99kkK+ByuXpPbsgbiNIHHUOInNjUIjBFBne53IL5TeNvUsdvbcIRnoMOT
	 Fs9qdny14ZV85G5XOIMCwxRdIzAw7Bz6FdDH3p9f2ohSIvzfhuoFVTYR2HagLhufJj
	 9TJJxcz7/DJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92BC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401059357.20642.11989818823347156230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f50b8e7f0679aba02ffd405748ad8ad2746cde35fd6f4baca1e909c337bae0
Date: Fri, 01 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754010593
