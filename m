Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120CA3EF0AF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773338694; cv=none; b=AeKwwWXs4kvxL0P9So4qFuQ7eWny7mvMQdpo4g3NJmY0yp0RgHcwU4qEfisbtZO1u5ZWIIZ5pNng8+3PTzJyqa8VviOzslpozlkYcdGH1z3Bo2wlSy7BzS/a6lFB5LuVr4VP+bk/lD9FcNxtDOtfAOLMFTv2qwA+53RNi6quilc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773338694; c=relaxed/simple;
	bh=2ts333S7jYFnuo7EH0/U1vIMEHHdwpUwrJPLSSsoTjc=;
	h=To:Subject:From:Message-Id:Date; b=CxjHEk2PI+j7ZNkDmMyxv1403oCm7kIqIpPqAI1KdB6hmdTnGSNJtKpewaklwOTDIkroZA+WO4e9M58Lq11xw3hJ05Uo853x/rZMprEeqn+SRLyi2VrxvrtBKIbyX+Kia0TL74NcI37uE7m9YlUqBxcUZ9ZECdDfmEGIoLYx8vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsU/Noaa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsU/Noaa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E48C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773338693;
	bh=2ts333S7jYFnuo7EH0/U1vIMEHHdwpUwrJPLSSsoTjc=;
	h=To:Subject:From:Date:From;
	b=jsU/NoaayLW/MxdTLHjrZcKF1soSrqtADtqrWtgFUYPBrXrSh7uNr3edLgfi3NyOc
	 Chfv7pjIVOT4XH41NYzNmJvNR4gBKpt+bbFhALS1fwiXR2Gax4ZWwtzPHc1fUI+yeZ
	 LkPvHfmlkIij8HGERw2Hl24hVM5NkMRo57ZpL5fo348ZoVOihKzLLtOYtcRha0MAnQ
	 LuGKIDx0WE9ydLIhZvXiFcPxQho1uszcVUTchXpHzUJXhIApSXW6trqJXMXOORo0C3
	 awzvsa37xQCb9rMGwfAfsRnhP/URuVFncY5j0wvFboBd4HjiPq1CBTZ0U6rdFVl5x0
	 IPY+jXeLL2rbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92678106ACCD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333869358.20745.7428706680033042217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57be0d3dd1850dedb76dd0a34d2911d9a0621eb1896c9b745c3fb1a184c622ce
Date: Thu, 12 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773338693
