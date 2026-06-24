Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205C72ED848
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782318454; cv=none; b=UPPMjSzonPOuIw3ydtaJh2bMploecCQfKVdFmuWBNvQcUwvqelOI66uXz7PnZRQf+xLh1Jc0l0zj3x7DTGr2D8XdX0QGNS4cs2Czue2f+0miL0hylSmZCTaC6nJz1385QzJD41oR6MS7mDOXxp8QFDQa8jc94v6vLxCxNLMZ4z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782318454; c=relaxed/simple;
	bh=c2VWtpz7yYeoHehIS8Ny+aOsSlJ40V3/BjUctutzKLk=;
	h=To:Subject:From:Message-Id:Date; b=iOJ2GZXwfJKrMSAVPuDmrSOm+pfpFW13xLS1gbyQUJbPWUQgS5LvTq1ihmN2icoSlTzqyzVqevkONg3yKv8oHGEJawPkKxU54VXEBx/v9bYkp4RKcwV7Q5B91O1ZGePlMDwf9cboFBpC1uk3/G3GXTr/LqDehuv7OaM7YluxJdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYInlmDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYInlmDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E33C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782318453;
	bh=c2VWtpz7yYeoHehIS8Ny+aOsSlJ40V3/BjUctutzKLk=;
	h=To:Subject:From:Date:From;
	b=SYInlmDE0HcOlrKnBRR3TiQzSEar0yuseXWQ5/H6ioLHr9yT8zy32uFP1OzxaK40Q
	 BtGzjshfbuMmLGIUK6CjoXBSS03dqHRYG227I6/FWBBpYAk9rI5zqvA1woI2zs2epX
	 b0/4mE5IQc/16kKUhJyPmyai/Kjgmz9coY9VBCGLiPtO1VTBltPfa7E71NxCrYOMie
	 vSS2oI0ZeFavnXCwYra5/4BGB10vqziiGf7asLdt/VewzbxDTV+EoTlbdMJ7SEwue8
	 wFYy+i3wmNGtFl1sNPHODLFAsuzUXQDSupoNlQrDuhTL2aJ38YifsCek5ZQ4mJoXzq
	 r4npq9EQQftSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC72CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231845369.25463.6349135331758301394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bad48eb851627b6866a85f8dba62d2e2f15c39e7a08afbdb5d477d5bd8e4a5
Date: Wed, 24 Jun 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782318453
