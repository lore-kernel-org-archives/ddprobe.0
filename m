Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCA3293B72
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747252794; cv=none; b=l+LgIcCxFoYU+YQChpYBwkWmUKucKZ5hf0qY2XAv6y1YgGANsloBycuWl3H2GP2NXEAYPwjV1d/yGqnWj+2WfCh6XqaSvscndfxHAMy4aISdzeeZ4XxzU0sTF8NhitHK3epf96xS+QG8/Fgos4r5upDCIvzFhA6s94Da1a+m/oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747252794; c=relaxed/simple;
	bh=rvOMZOdXiiWb+MD944z1qFzzzAdZdzkv+oLEeBEZnbo=;
	h=To:Subject:From:Message-Id:Date; b=SF5wzjdB/CWXjxyU7B+rCyRCxFieQgI5pJ10cvQbbfcih2/C4CKxPvT4u7ie9wNHYk4ht42YzoO27c4sjJy7cHWLcw/zc8QSC1Cmx772xi2TdRcVLo1gLBuqi0I1xjm8jQgiNmNEmQvYjyWZHcL2+bbtxMst7v5m0yvvYpiC2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhmA4FbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhmA4FbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E95AC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747252793;
	bh=rvOMZOdXiiWb+MD944z1qFzzzAdZdzkv+oLEeBEZnbo=;
	h=To:Subject:From:Date:From;
	b=nhmA4FbTSrhRuhiU000cOt0QMUia0Vd9S7OZi2wmM8KHWivFRmUze4uvBPMhXePYY
	 y2kCnGP27XQey88S7EyeJtoJvBi6ayQx9Uw7UHaYzFp3n/+9fPGJyOY7JpU7agvH3+
	 lUbmdv0R5ZUJqiC1XTO6Mo6/gR061z/uyqPgWs12an3b3S7fTYrda7ijhK9X6EoAfw
	 ndWlVsst6kYThloP5bwKQVsUEZ3c2WPTsopseHidq0dQIUop6lFz2KbDXKOOWtV3jV
	 BiiHtn2KXgbZFev4ErR5nCwbTbXfja6wL7H90odZKAdpprlkRArrxq/c2J8Y6vFzQ2
	 tucayIo5+UqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFAC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725279357.8350.46133058548251529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a24f3297086047db9f70eac70072411680f526bd42a9f980b80dad22b4169cd
Date: Wed, 14 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747252793
