Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B32C032E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775421334; cv=none; b=KoSmyE6iA+Ln9wHyIu8tu09oei7CsMAPoBfBkyPL5dDmJIJaoO+Hl8a66XxhBCZTMvwQdPnPiRh0dwrrIHZ9OYrE2L5yIVXtDWz+g45YTmA46ZQczfPu0fc6CXQT1fJ0bvhCLFQ9n2rDYFuXoeHMqs8Q/E5jE6xazFr20fXcsRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775421334; c=relaxed/simple;
	bh=S5j3ApRYLFdy0xFScT4KFagdAM9V25XedBIdMlrAxoM=;
	h=To:Subject:From:Message-Id:Date; b=MjAMTv3f6YRBHx2MIkHGRqGdKaY6mi3hA9VA4FNWNrTZiVRYahO7Y3yslNf9BFv5KKyGw2WK6dzx8sKcAwuztem7Op9MsmqxPqe2aXhC22mtMFjdnTzvu3SrqtnHf5BogrmIuIqsLXAM9yjSe8ZRBRwzGZgFXlbcS96dvU5y0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/Y7SrwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/Y7SrwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AA6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775421333;
	bh=S5j3ApRYLFdy0xFScT4KFagdAM9V25XedBIdMlrAxoM=;
	h=To:Subject:From:Date:From;
	b=u/Y7SrwUG7C1y6yFWilMd/quJiv9kTzxkrSAe+4RsfDFMeVWZbMdqVf3Mwnr6Hi74
	 uYzQS3riHNp/ePjK0PJQpvnnnxOeoLq1XCa4WbDZ6EB0lsQa265gkhqRHoISbeaSSz
	 cuxpPQKq0OSkRzrAd8l39aaHO87A8ptIRV2DWcvAgtZyS+TzkMXoBPzZJELUmvE5tK
	 vhE6DacPUtTjLCGWxqII1MhS0WFYQ6Pgl+ra4lceJShVEtHoS1uATBUvvlkaimqD7w
	 PMBYk9JUkJUtXK0LwkcuZB/GoqkamFIUQiBch6teY6pu9r+USvR0W40XH4FGfLoGC0
	 UOijLtqBwal/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF37E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542133368.6948.15174030325520824062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcac3818203bc577214124f1f7ac355def46a5320ecb0d7b7a805969939e987
Date: Sun, 05 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775421333
