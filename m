Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6035959
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776047254; cv=none; b=QMOLZswxLHq/qORGk1jDLDQoa6IvrkqsPbii8m8LR/djY4C4G6P2NzFWPGtqDdMXZBSIWFFUMvkKJi1RNZKZW/j/FvkbkNUYRlmCW3iKq3bxcI8PpiOQCWgJX5gXkXWXjrb4Qq8R6jFrWnLFGv1U6tKZ2WVRGGeFwwE8nvaHU88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776047254; c=relaxed/simple;
	bh=GI83OubcXRbxQOAF0nw+BA59kizmTHEUhacrlouhjvs=;
	h=To:Subject:From:Message-Id:Date; b=klU5gb2fDucBls3H7e0jwItK6FSBgw+x+2XiQRJzjsC+VWAgNcEoYlKpxLt54mZQzDuoekUgMSP08FM4GLzYO5Ae2yEQbNNNV/2u0vfGcom4M1o8YT936ZdGkDEzAue/kq6wJ31l9g2933XL2MPG6UkzHAeYkOp7flQNZ1c7yXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmWONOQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmWONOQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCA5C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776047253;
	bh=GI83OubcXRbxQOAF0nw+BA59kizmTHEUhacrlouhjvs=;
	h=To:Subject:From:Date:From;
	b=TmWONOQU1The4l9DlhfkzImUg96hVAEV1SK0U0grNApa0jYUdja+hyVVEE7t5t1oZ
	 I7emm46L4iiFN/FFxZNOcshsDZGZ8/98kJQC37zC11FUjmPPf7XhwX753fLYnD2f/p
	 wcypcdKXsvVmGfofxQ6abMyHqoVb/nnKkkUp/9LptJVwIjmD99RFbGi9RQRltpwZBk
	 bnAcYMic1c2XniUYiZNrIlDlysmvt3VZ3Ze1NiC1pBnH/mjxGrEEAO3x6xAMvhk94s
	 p1sVkdSPX0OoBlb9weoIZI9pD8Z22c82T6l9PEML51ALeegI+MhfwvmgoW5twxEhX5
	 Rzn1s83jo/nUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AFCE93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604725368.9537.3336579886188428893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d6fe1f001fdb290822c1ade129283b8a499a6afdf024bb23d35a11e89b48b7
Date: Mon, 13 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776047253
