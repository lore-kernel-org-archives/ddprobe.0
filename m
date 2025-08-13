Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A9F2F3C04
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755095395; cv=none; b=HfML8mRnYyydHgOXbGo3NDJXrRYFipoG8SluTPUvQiPd9haaknVeBqikubZAYbLqj8BDVE7h+XelGcy94xo6bW6qtkm33xecudpAf8n4f/VsuzLQ9d9mueBp7aWG3mTsopZblpEOS2bbCo8LGLPw8hQ3aE9E3JV2Ev+DlqjEi6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755095395; c=relaxed/simple;
	bh=6pOzFkrSiv4o7mbwzIysltb9qlv5w3hKFlOsgDHP+9o=;
	h=To:Subject:From:Message-Id:Date; b=W1OFp+W8NHg84YVrOnHMaHTHgrW/lviunSM3Cewc/f4OpU+5yKdfLlXQyR0Pxg41CntwiEpivksvle2DSuqJ35uYn0H6bkwbYeUk/Bvd7gujuICLFwGFwc6HmWAGmciy1EpkB7KgvgDdThHPqvj/IeZPNxrtVhCYwrd8Nds3Z9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD2cg2pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD2cg2pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D345C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755095393;
	bh=6pOzFkrSiv4o7mbwzIysltb9qlv5w3hKFlOsgDHP+9o=;
	h=To:Subject:From:Date:From;
	b=QD2cg2pvwG336OEqvyyaOSemdvi+AYvyVMqNveSb++MjF36scQ+8JLmRT1MHdOojd
	 b6/Zdv7zTaR7PifHAk6pGojwrMZfONTCxt6iP5rBL6ocYZF/1FoX8K1q7PtVh8d99w
	 8PW7waps2v+EjUX2y8nC5ZYkUsIeAR5XP+b5o/uAn+GdcEJ780jkZtAmae5yGuepT9
	 z5fU0ii4XzU7OmUs3YfENbU5c0gi07iIi0GvdO7Hvi3ukLUGSWstdEoSqumLwcUxjP
	 F/aGcLfsYztOmymskZhJ96q8y0dOhzTVqUgG0AQNOW+Ehuhd5lIP8VVPWy1IYwCsay
	 mSyrlXViO454w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96CC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509539358.12145.6940010550470413852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c7772a1c30a4197ea49258bbbd043222b42a7e92f76bf6fd967cf983334ed3
Date: Wed, 13 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755095393
