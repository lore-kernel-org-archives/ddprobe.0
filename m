Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452D58286F
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716376403; cv=none; b=GqjmcqAsNT6AoST7NdEZ8fIgP0QmhZRoW95a/PyIx+osvmQgxX0Xz7FL9Py/ZgPRax0s0a+dKg5iul6Tt73H9zz3lgByfG5B00NmodpO8WThEC8Z9ClN6vElQF8fL5UGDubJqhjjqpEAbURt64FMBJsPLpDABZL1vLC4we99U9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716376403; c=relaxed/simple;
	bh=PkN9PbIfUxxe4DpacNZLYtYZRpCyvGiSsIqejg0lp1E=;
	h=To:Subject:From:Message-Id:Date; b=SsYhqzbDMkOj3W8H7SdlvX+XaQp2/LJ2hrjqfJTHQmtY1/7MR8VqIG9FmTq1YOAmZpvWv2eZ9lS/3W704kkKnm3pYlr5LCFtykd5INfEbmBNBug9diYlK3nHTYSJmDfxP+25UPXVFWBxOiwhoLX/MWXKcQ7VUqHXrbHc5RAeUFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRqpyMl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRqpyMl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEE4C32789
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716376402;
	bh=PkN9PbIfUxxe4DpacNZLYtYZRpCyvGiSsIqejg0lp1E=;
	h=To:Subject:From:Date:From;
	b=sRqpyMl8IxuFLs5KhKthW9y0tcrh0MhWWJlp044gDzsL8ekrclyHQ84iK/n7sYEpp
	 YvvsBjJkO1xLv38aGzSrHDdHiaAUcCIcFxHihVggrQlMeDDD06koL/zAzEO8uKI0QN
	 BfGr8pyGBHxfu2XUNZDA9lHlszC9h8bqw3F5vm7ZOxqKBdXxLYO7gGiwjGUVsc44N7
	 Meh8nbjrU2nJzndfwIjNN+u242fRRghmft904NLbItxeWoCCGCMXYbhnvZ435YzoWl
	 i+7QMWESwuvZ+d4d3B5azOMamlzaOpYGmfRxccz2CoQ5up+1BLfIP1u87NXElflG5h
	 +qWzjv+vyr6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC781C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637640276.2832.18353558007870080125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa65d1307098087df0e95d4f2a6f02f4af62ab092d1c181622cb0053da59a62
Date: Wed, 22 May 2024 11:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716376402
