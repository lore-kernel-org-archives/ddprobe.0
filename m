Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEB02F7EEE
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782860914; cv=none; b=DKZytCHAr9qVuJuhTobSuxLj1z+nUXQQKvGb5gtDqYqcZjfQHf9NIuW/Dc36IuCmO/yIceI8KX9cmMrljMyViUt/6wAY/5B8SRVsmvMqIQEx+hq5px7iDkIgxERV8KWOO40o1v2sI+hn1R0uKc7KMMKbI0sWLPGyW1wlJ0GbOl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782860914; c=relaxed/simple;
	bh=YbExLxbln5YPnc7bbg2RpkTkWHy9i2zdfzK9QZ+AT6E=;
	h=To:Subject:From:Message-Id:Date; b=VNPsrRkSwFG3JxNoS6Gott1bzRkbJkH0CXFay4VKV7QL0xR3CKbg+Y6QXtrhRvNfmaTAriTeHeExEjJxLRb7+wk2zfAW3jCu22iqUUB9ekpBzcg3YBPMS+SYL5qJhDd/dh0mcT+VnkNTR32CQosekwSxaGrnb3V8m/RF97Z7/LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6zgQZGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6zgQZGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1777C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782860913;
	bh=YbExLxbln5YPnc7bbg2RpkTkWHy9i2zdfzK9QZ+AT6E=;
	h=To:Subject:From:Date:From;
	b=Z6zgQZGZ0LClrCiXhXpcHWNM3XS/jCqOQJ2wGoxssMrh5wNPbFNcZmsNtRnFZFA6z
	 +Ay0HkptMbyYpj752ljheDn0wS31V/UucijJq8zhnnhnvUOD3otJctT4MOpqq/BiHe
	 oWuEwZejJZ/8njme5Z3OKOkiNG4fCBzfBwERq/stckUUYPX2M/eowk1DjAv+B+3rEt
	 X8kHvjTmzmNyJkdY+6YlvC0PgAntYtLkPDQcJ4W3+BnOo9/kUyCyJ98MWSSqQPZu4S
	 kVvzd91TXFSWymMZywdG9l92jpW39cjcEYY6NLdjgZmsC5krKIr9DUBF/TMHvKnRaN
	 hGVYvajgZPqLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9018C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286091368.12350.4578632852550146613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91085cf434014a13e5534d6022653112bae632ae3360b95667bef13dda57c944
Date: Tue, 30 Jun 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782860913
