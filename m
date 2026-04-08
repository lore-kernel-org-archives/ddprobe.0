Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332A53D75CB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775670934; cv=none; b=W/VjuzPmV0q4lHRa0C6XVpXI92doch8dFQxAKyX+jS8zR5fvcIy5sLkupYlybyXD1RbITTEfLLMVE7VZvXZ/8ZFUWg2RZ4v8XtBgsWzmI4g5ZjuqgTOMeexg+sc0QgSf2yhB+WWscuVZggQhfcV31d6tTJ+tnJ8RaWXJfHl1sbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775670934; c=relaxed/simple;
	bh=JGJVHKeab+0hEN3d+2M5fo31ZIwiv+UdyQFDnROXgRY=;
	h=To:Subject:From:Message-Id:Date; b=WjWCOMB4WrAZPSXhSUnNFdiz7hyvn5Fr3diPUfjUNm/YUoFW6gmXzKetGjz2hRPFC3t+gQ22cWGfmvcBnJETgCNKnzHWvjLexu6XzWuXNFgk6lP92O/fTsk96kvWbXanb/l88bz2AzsrdzrJzSFMBhrS9BYeBFnFQJVVlKpOqTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uucflb10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uucflb10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB349C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775670933;
	bh=JGJVHKeab+0hEN3d+2M5fo31ZIwiv+UdyQFDnROXgRY=;
	h=To:Subject:From:Date:From;
	b=uucflb10kwLZL0+usUGKtkRgCg9cZeyIVUWdxBzhuCrlto3AKZbuvEPVexaaLYfJQ
	 /AbRZTG1qRCdRamYAtGYfxDAYPGa+6SdnYl6s3kudeQEWCGLFBmZHoMuIahAiFNrNO
	 IZzTZEWAB7yB7NEXkwWeeixAHTPo3AH8jmvTzA0ZnG3Rj15mPXYUba04mIrIdQZiTx
	 XLc7yWdKR5wq6sdq7MWSOXdJxft6iE+5ZZJWOlxVYA5Va+N0JvJAfF0d5XxmTcWn7+
	 LpFLhkJZu6UvS2poYUKYRh9AzFwIUjdGkdEEYOTCI1a2SI66OHRctBkB/L6RuaGtJA
	 iTj3zV9ZgvYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA5810F9964
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567093369.9564.1566965266581528043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6b8700dce2da192bace764881510920f791b02acd90c066cc306cb7f6e75a0
Date: Wed, 08 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775670933
