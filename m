Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215D1244694
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777589254; cv=none; b=T7dYGpr10KXm0sR6l97/BuxPR34zaRwg/VWsFkmeX/weFyiIskAVYQE/yNtW+QmxFGNEn2jjyHqYjqPdI0lfTLj4vNpOwW2P5vjpk82LMZPqi6RlJmpzwkRh09EE0dDqaVwM75UCmvoH30fFimuliSQmWiIwYz+xGKu1rp8q3jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777589254; c=relaxed/simple;
	bh=5psU1FNIqdtTwpqdQVAUupyAhS0+MKKv9NxjGEbJGEY=;
	h=To:Subject:From:Message-Id:Date; b=tIS+6MQ2miHcbPsHbeVPvV2XFKzZnPH/ueMnjk1aWtZ18PXEomsSchkL2TBbTP3YISAHrGl4VUKL87wfDelwR/ARN1tNXltm8iwuhG+o1vzueYPnFJHZ5mzJJXcgT6bPd/i3yDO39Rxx8LaDR8GzFMT7Id68+sPN24/8E/rPjOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igXNN1Ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igXNN1Ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B951CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777589253;
	bh=5psU1FNIqdtTwpqdQVAUupyAhS0+MKKv9NxjGEbJGEY=;
	h=To:Subject:From:Date:From;
	b=igXNN1Ii57+GYQMqeZynZmwLiL0n72F4y5IwBphX0YUX/7AdXBV5iderZ3cNUwrWC
	 z8cEu1Fbiv+GNjNhyD5DBfsmdlCWhoXhl7LJkTpmeODXBA4P/M0n23EqX4MjEzTsON
	 1Avo/lzgG/eONr6YpAYTSRVm9a8TgZYeS2X3spS3pqPHs3gYvPJf7QO/8/kXPYI+rq
	 +OYNrHI6WoKLX4Yukq/lfqFPHzqZq1AhVwoke0yRSOMFYx1xFpyVAnwknHuMDEIR0s
	 0RzDL1HOSydnU6eWHLLP+YY3liiUIEOK7NbpGnLnbaQiDVj993vhg/0BtdsXDCpGni
	 PaKAeYM5fToYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED9FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758925368.13387.16922398550514103459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a65927ccdb82fafae2bf0d43749be9e35929552236c176c34260f33c483b0f5
Date: Thu, 30 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777589253
