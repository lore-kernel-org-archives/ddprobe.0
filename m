Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E457D1865FA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763991114; cv=none; b=XmqrnHXS5mIiEb3yMgapV8X4RkOZmMXwNJYSFzDaugeyOjMtb/JHxTHiJq2qdVo5+tswcELB+dMNNMuNn9V9svbpJIeKwurDJcUP6EFtIY4cWZEwJXW3hQSnqtRK+FskdRLl3NYJwQVt93eyWxYIvT+U+dGcQ8W8sQ18leB4I34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763991114; c=relaxed/simple;
	bh=2McRm60a3pzLeMQZS1pk/L6JiGx8aXRo76K77PQJbok=;
	h=To:Subject:From:Message-Id:Date; b=poU+0YFd1Ay7vOjJgs9NNPbq/yt1No8fEqrcGf5xD2EQoz/e54n9tfk5GH94rRr4rUuBsafOgdmSl2UJnTjSImFaRJMz0x5CrXKTfrvkXx2W/T2VEk9R43aePyfXluTwn8JXKI26Habr8weBHBw0/fmUsRSQxIZ8VJ0vN24BCvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGY6JM9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGY6JM9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9705C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763991113;
	bh=2McRm60a3pzLeMQZS1pk/L6JiGx8aXRo76K77PQJbok=;
	h=To:Subject:From:Date:From;
	b=MGY6JM9vNdK/eSBWYEl4iPZJ9QD0aEis8YWyDNJ0f9j5SUeatLhlXxbNJIxm5da3v
	 WNxJFxQ8vkEFNf11NKgLkUKIZ9/tkOwGL2P2vb2lX9KDAiyYoBsvFjVx+BanP7oHgu
	 7XQOFh6T8oZrb7Z5h6ZevjZwBhx3b0tMa+ZUzvlE8n7NAtnuGq9WOUGDWHxbJMEmaD
	 goOBmwrMlNKNno+2jj+rCH+krWI2EgmUw12XfJBEywY8mMMxicps8YOF9g72CNsShV
	 PuIlY20Je0lE7zxTaynQbJDZvDrZXHf6rEVZ3Xvj/Bx0BV/ZLfpvXbr4mSzhjFc8W4
	 HgM56I6cLHNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A8CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399111360.32658.8845239907167967316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09550bf7c223fb6db11b2854aa41c9f36e6b54161a3ceafea1192e07f97d4383
Date: Mon, 24 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763991113
