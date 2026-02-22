Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319073C2F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771794294; cv=none; b=IplH8ybx60Ry9/BO8Ae0JWGCzGCfIYd/rBVECz1kzvSKj69rbQb1KtHtY+BlRpdKczQlTn1y068+MwyCO5Zaiu+0MYn0udRoAkA0F+rsyde+rH0SaxPEZ+oGCMX4BSRzURgnq2gbeUoQuZz1Z3NFxArJ4NpZVO5Q+bJtdd9Kklk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771794294; c=relaxed/simple;
	bh=PeGtsLu2F2S3PnwbfyFZVLYdRC+ry+dklOTrX38PP48=;
	h=To:Subject:From:Message-Id:Date; b=TRSXf8atpYgW42jihtpAtxJR7GGPpjNjNNPqAzdS72oTGquGJSKMmeC+AZxA2901RdVHFZRWd6cg1X/g1gWXM3SBWAHkaio8IRtSYxZ7CQNVHEZAq0KU0zzI+CJqqEzMKCYZvkbu1l1F6Wu2wt5MBmof5kiUKIGRpdF7iDrd5PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvbVeySP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvbVeySP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F9C19423
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771794293;
	bh=PeGtsLu2F2S3PnwbfyFZVLYdRC+ry+dklOTrX38PP48=;
	h=To:Subject:From:Date:From;
	b=SvbVeySPci0Xtai8dctZIA46OT4tDZVQ3eT3suMLAJYrILBdevZdtbvWmENZRjyan
	 JVEtNWnI0ZcRW3tR1pcvLdvs0sy32rvgnnUJC2e+CFpS219hXXZWPLihXlrTK3vCm9
	 i2z63m1Cd1ar7bqqnP39sYkjfFVgstTbK1oZV9ZoDka7QR/Wz5wRrws3w86KhnOK85
	 Muu1bHuGKGkEynb/ZSBKppjoqtPTZjGfabCYXMB/POyyc2UH/Il15fqlWxgM+8WTbO
	 wS2m45mM3FnDnNhHXqNuTPBI6mgMMIyR7f6CIvhxRLBfW1ahDN3GA0YwBQTj6cHSeF
	 mXqRJKJ0PNmdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975EFC636B2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179429358.28219.17549154382909311152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b772eb4ac1654a0c803d5e9bf97f430ae6a6f4c75d629b06fdd60b99d2ad5b
Date: Sun, 22 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771794293
