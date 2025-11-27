Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86F17A2E0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764221574; cv=none; b=fxVwZ6+gen558BwZ6KGXCm51IcDLOYhx0duZZVtxW64zzUImOhlqZ/cY1mSvh+ms2O5c8qYN9XYeuOUmoWbnoskjYMmx1qdT27dkDffelRlmJB22dv08Di/toP7zbs0whW8JkkG9ibi10bQqLqWMJJ0qyp2oK5ld6jfR8uorB/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764221574; c=relaxed/simple;
	bh=LI11uRL/eFng2FvlLBpVcLj9pJecmBvVV+Gap2QLdTY=;
	h=To:Subject:From:Message-Id:Date; b=g0Nw4GeqEyH6kpvZjpsJDoTEFJ2LL5TmkIJnDPsQQUI4GTuYszvioDApmmWGLrO1ybctfTblgdRhJcBCuj2R/rFYzmThX8Y+GIqTX0hkCN12a1XHosi4l4WvoN+40zXr9/PMc9+xx7orIXNQkLIfKwQiO8/0x7+mUX0N+p3GddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=go6roJWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="go6roJWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82F8C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764221573;
	bh=LI11uRL/eFng2FvlLBpVcLj9pJecmBvVV+Gap2QLdTY=;
	h=To:Subject:From:Date:From;
	b=go6roJWeRjvPI00Bz+XHhSdmPT4AIYOUmectuJ7j6SiHwlQVEGR3+XY/o7AG947+9
	 B09pUfVdLkFjugebffbAasMkdci7saU07xO1s/iC0+hmBok+IwCkBVPzgEeug5evgk
	 25DtY0dP7jqDEn1ysHbIAgd7RJ7n0UA0EQmc6fxMPx5TTp+w/yFd5WXmQl1Eh7l+Eo
	 3uVsyFslFKlPClSYQQtMOqGkbW0zbDhabuKFzEitwMwoTcZEHtsoqrd8rnoyQhIPZ8
	 W+rH06zWHBQYuSAaiC8l4cjypGDS1WyPDUHhJcYTEkbzRJ66v+PUy2bCOuooqmP88h
	 JNrXwD90S1O6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B50D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422157359.25255.12447450949021444802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe88f875e688da521f0a687646c4a1c5fa0f3e5681d9d8269b1ce3dccf47c35
Date: Thu, 27 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764221573
