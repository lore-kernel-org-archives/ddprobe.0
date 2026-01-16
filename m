Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845DB344053
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768536235; cv=none; b=Sb7fsfkdteR4lDByVtMZnau5n4geZH84jsXxnm5lFums7DTprG4HcIMUaqt301AOwZUUfT4dK5ggkNGx+y6Mdj1JjLlwGbINXCST8wgjL5Tf5NMZUNtSTyosdKDRORW2jbt/hNYkzXfYTlyEwJDSlAKTnqfsUevVGQHvgPNQttM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768536235; c=relaxed/simple;
	bh=4MYVMAnc7UQXi49qzeK/xpJjT9n9ykXhhuH88uUHJSM=;
	h=To:Subject:From:Message-Id:Date; b=RzQP8dsoMDzAywyFVESILp7D4x9bTcGXdYo74/vaz0AU8qtvyp2JxFGqTDlXCdwmATGQNB4oo+r/wcVKg+WEDF2xHo7o26WaSBCmG/1hMUTbo6RHKLNYTxTuGYWof9RiLwIFqHM3RN0AhpqIdnouIB9WeEcyxwL3PY2EukVgOKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW8QvOpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW8QvOpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F694C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768536233;
	bh=4MYVMAnc7UQXi49qzeK/xpJjT9n9ykXhhuH88uUHJSM=;
	h=To:Subject:From:Date:From;
	b=IW8QvOpXTr0jLZ9eor0ij0LyMnG947rD7sDS/7ezVMwZO5+lx95aa8x38V8mXxOZu
	 apXk59vbFvJLuNUHx+dZSUXZ8Jai7SFhRwzGJAfWu2xS2w/noC5GPXvJ1oroiXFnoU
	 mZtQ20ezdeke9pqz3HTo48mF9P9SS4SD8LXEK4pbiP2hbu6mwC6b0gYdZJLQ/yvYi0
	 4rB/MascPeCsTcqeJsMOVknj1+nqhoIipMCUwRqxGWWrGCIdp03kiOqDH1BXaDo0op
	 WDjRajZjP2SsZuK8Iqh0nIAqK33FSTFXdWbdLizqLLUGTGKP1n9x6oUCIzKxlIpblr
	 H5jP+Xws4AHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2D4A5F9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853623358.23261.5481520635295118380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e05607f28c879b2a2b2d7044f250a0adf6e112204b30a16766e210a5c1be1d
Date: Fri, 16 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768536233
