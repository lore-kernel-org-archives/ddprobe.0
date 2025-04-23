Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315812C3772
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745422794; cv=none; b=JXmEjM1B/uhRM7Q4SwuM7H01GrlTxW2BshCnPoqI6B2rnz6M3pPjtqy16QuVQs4fW42yIZ3uAZehPzfs8ktXPFfWEH0Wf8FZJhEs0+6HJQZ1bQfPKsf0IkZ/42lVZPgorjPJ1pu1jOtXuaCW9g7wo/xg5aAxqz5MalgaPemZC5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745422794; c=relaxed/simple;
	bh=bip8tNOPfHgY2Ula5btoqvU/EeSfHq7+y8wNTw2ib6c=;
	h=To:Subject:From:Message-Id:Date; b=GRetcA6YScZsKbnQtNGh+eNTklXrqw/vgUREyev4DCD7uRztSkIfR8psnX1cXVtXIt440YE0Qxejj69jf8bMpYAheS9P9oETRsC4s0dQT1/OdEyySQ8RUUHMLFp4LGGU+jHmoVLFZb1We8kHy4Bgu7yeNC10mby72wJqOJgYi+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDk9B3v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDk9B3v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745422793;
	bh=bip8tNOPfHgY2Ula5btoqvU/EeSfHq7+y8wNTw2ib6c=;
	h=To:Subject:From:Date:From;
	b=oDk9B3v7kG7Xs8GL937ksCPd9FvgFi2RQBLJ/9c/0yTZPuxl9CvaYffakChmTZjXq
	 rcMdJlSvfZA9/Ejls1k2pE40vpWknodKRVwuHGT0PwFELMFDM0F7T9Ri7Obe/k9+vZ
	 xgpaHfxDdNWf6I7ka6I9JhTZiaF43H0umCMMO4nZl0fCbatS1nMvUqtpdxw6gcwEwR
	 RTFCD9jpAfCchD/QThJiF9jdzvxxK3B/Q3h6ed+Mk1yLFKoldbWO6gQB/tpNS3Vqcf
	 +u7UVyCgqSwFtzClY5LJFTw8Uz982Fr0mDWXIYHw927aKbeufMuE3a5e+ToCyvSGcw
	 zBlrZD/HedjEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91452C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542279358.9240.5186941522557671232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e84cde9d8e397e4b7360a5e1581db40b41ff2ba9cd2e707f07f7bd5707aff4
Date: Wed, 23 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745422793
