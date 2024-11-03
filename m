Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9617622F
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730649954; cv=none; b=pywHgsEqAMf8HknR7QA0185aENPX9xxCehrhvEM22E4JTNi+nwlF/oUVJISkgckc1muS25KcjNsK8WpdXoPo7lLjHXoy7Yzlx8mx+mIadTx67/r7RbjUbYpCfMos/6KjhV6KbF+BDSxa56AO8kG3dQn/QF97+vmymw3FMEFdP20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730649954; c=relaxed/simple;
	bh=WKEqLHLmvb1eByGpSBusNqWWAVhTuDktOpCytYTTLXQ=;
	h=To:Subject:From:Message-Id:Date; b=iO1L8lVHOtBi/UQvBGiRMHsKoWMTSGvB/W3+jPNDocFf2KEqYF3GrD7dIpSGAWAJMjJ9hPtAqcsZ06qWl85vBR6of3GqTCjpL/0m0QQk8b8aHKOeZXSr7qRh73d8RC2a+VwWO9P38RUcLBdvg+srRrY0g54udCRKGAXN+QHlvUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bugddcBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bugddcBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD572C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730649953;
	bh=WKEqLHLmvb1eByGpSBusNqWWAVhTuDktOpCytYTTLXQ=;
	h=To:Subject:From:Date:From;
	b=bugddcBG4KG9pO+xrJW3ifvWu8E+dx7IDWy78EkY6r8YkdM6IttWKV+pEQeG0UQgg
	 QOXZboIQWy5/kpOdzfUij3IeGmV7WFmAFZXAAEKd1GGnWyUhpypJC5862FWmsPabf1
	 R3Pcal4+l6PepjQBPBscV+0TL6EdcEzNZXRPYQzLv2ALqX07x5y0Gch1a50L4M+Jvr
	 PlsZ+wcGNe1GS0+OLiHmXMn/Y+fl+vX9L+TmOIxUSR5JL6f/pttMwo+5tzcQk/ZddC
	 7SACVqyL5o0zs0TfcC+4Y2DLVuojmqyt4sTsgOCrI7qZfW1eykfxXbFNuW+k1kMB9z
	 3Pv9kTcwkTU6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94002D11181
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064995359.11839.3188588266261010408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18775eb15863a1c30efba494c250787e242464a8494f012db6e732593e2e8603
Date: Sun, 03 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730649953
