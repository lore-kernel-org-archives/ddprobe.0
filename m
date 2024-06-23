Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525F9185E46
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719178943; cv=none; b=rh1YpjeAL/OI9VI2L8TfkahmFZMUBjMNdzi0nWhbhb3b5zg3ITUyXOrN+4RqnAnPta21g4mCmANJWZgpcjL729T9PMn/dz/6ouJxXMqj1d3Z3IlXWsJjidvurhfLzGcycV2nl61GDfvjUOxjOR7+DJ7piVN4bC9Q5FnEtv9LWSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719178943; c=relaxed/simple;
	bh=FvggH/pZenikBm4pGaV9OOZtbIYotbDuTcH20Tf/BcY=;
	h=To:Subject:From:Message-Id:Date; b=okrayAn5dNwc+SKHqf/Bp86mcA6MVZnmZ1nVaXA6WN0tq8sUsV1xveoWYjO6kbwXQjqI25D7F115mCBr9DCvaXP0jRtJa0kUoy1wXrvQycRTqecjPnzSWYPsJVtqzr/c+Z7qnxU+woLwDmeIsZUStV7Z7ocoOsCcwY6Ufrfgbys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZC/UPwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZC/UPwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D742EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719178942;
	bh=FvggH/pZenikBm4pGaV9OOZtbIYotbDuTcH20Tf/BcY=;
	h=To:Subject:From:Date:From;
	b=iZC/UPwQs8ACKP2SF0adZMkelQNrnFyA7eyMl+XFlj8EI9xLkOisp2dCGQXXRkJ/l
	 0nAGxrpJtkduMJikty7FtPZ0MBTu3IkFy/8E68KiggjAtgbnx6SsiFAti3FJFWBTzx
	 aelngempRuIvqLipr3qWg7V5qMjDnaN4hob+E7HcwDzWMjjX82WQPlpEvQvxSYZd5+
	 J+giSZbUO/tgvm21kSwnHIPZtzrflJHQzOXs9E0qIqnoTHuenatf7WpfJmwNWsW6u0
	 tqaSnhkSg06UbEvKllYGeftPEgHNaRhj6jYSPLdJyTWSSHzsyuT2F2acgGjdlBbZj2
	 B8y5qFaf/EW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0761C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917894276.16540.13406534903207853071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfe7beaa753ce69a8f8dddab526ec24b745dfaa8c343e0d8f68f34eb5d2b834
Date: Sun, 23 Jun 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719178942
