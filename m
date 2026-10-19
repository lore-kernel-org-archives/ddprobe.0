Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8A72FD69E
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792404034; cv=none; b=dTRzTJOgv6taVoBLqVVtoD4BlX8or0v9T5aljBLckInsRtMGK37iguZ5Nf8FS9p/o3kIrrm5rYjcTBNxq9Y1HdxbgltJnuNeW2M0lcv71blWJK5O0WuKgl6ceRbHaLWg+jp0+RkVBf6LnRidcOjqvpY3sy0r+4B8jZc1+Ee8n4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792404034; c=relaxed/simple;
	bh=MrOGT9VJlxppxvBMA0HpNjvjfaJsa9HDJ8/gJnq13mE=;
	h=To:Subject:From:Message-Id:Date; b=pXO3WcOa9ZXfVJ5KXMCpPo9cbch4Q02uQfTEcOxA+xWmZ5tMN6oEU6NlEa0E7YkpBeP642FTr68D/SpeHi9JH/1PsQPmnXvfl6HTXEtSucUI41Sdrgo2AYqSXY2VTzjv7KvfB7TIRKEFEXf9RdlW4aDfhme8aaeknMwcrk11bhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehyhKbdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehyhKbdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C844CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792404033;
	bh=MrOGT9VJlxppxvBMA0HpNjvjfaJsa9HDJ8/gJnq13mE=;
	h=To:Subject:From:Date:From;
	b=ehyhKbdmGw1DVL2gaDoLObs2l2MZyFqvquzOPh1gtvLNt5sEXtg7+q6GtqFvEs7t3
	 dcykRSO3extFLxqLLqy7yf8Gb9zxxA/bXj3M29AJwmH5/GkY397ZYSjAT1IP1+/iaT
	 kV4zvnTqH21bUt3z0N5vXILZCdCCRFhpOTwXs7goNfNa9w2+3lsBH+9/6eTEoJrz86
	 6Qz/YwX/cdb5F5zRikoGUXlU+Ap2mB5j9dBrw/Lu6r8DKbGbsQR0I3/9cewOMlS3Aw
	 YA1K4TdmiOLmp5mpjsO20dnEy8Sfd95otXiWI1RLqyBuVHABsyDd6hxs9OR4KxZz75
	 sgzqnfmqWOfOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F3CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240403371.19150.12182366773936527069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b813d6ec91168a127d3ed700dcf7b7820c6f93e2c2c0ce0b5d14ee5aa301c
Date: Mon, 19 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792404033
