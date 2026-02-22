Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F9B4C92
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771722894; cv=none; b=o4Qc9IqGLyJKu2WRTaBvkrMphN0BKS1HLRhCBEbZAqEVuyA+FKtRN09uP+Q4Ffk/rSQ3fEcHtRumbfoJzQzwiYBgVogZnc7ZprcSu/Dck15K1aIfdMQ5MNy9csIeo+ihw6F4D44EG/kITnIucI+UE9DG4oAt7rhVVR8SJyz0vFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771722894; c=relaxed/simple;
	bh=PjiakNjdQ/NgGFYM0mrgnEIuCni9ZMawCElkAfVld0o=;
	h=To:Subject:From:Message-Id:Date; b=fHUadsL/EeU9JxkPlSl9KWQM8VHCgqn0A58pjhxFyH1cM1lFeXq+CM9wVhShBN+azK/jyEICkf/nWtK9SiTbyzboSDnr5ZWa88D2M43QtqES7x6mdP/zrhjsFDd9QYsMkqBxKh8jWJ8fsii5MKsXhYOp85xhlxpslXvBNRc1oUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS99eDPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS99eDPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C51C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771722893;
	bh=PjiakNjdQ/NgGFYM0mrgnEIuCni9ZMawCElkAfVld0o=;
	h=To:Subject:From:Date:From;
	b=BS99eDPTz2ZYlb10CXks5dZpNFh12f85rxvNusPtnKD9j8L46wZppC5Vbf52dZo/R
	 nHeiENGtOIecw9MSYBzaq7KSZ1BNSMu7U3dVw2UinKjTBH1Ruqd4D4MSwX2sRvhEAl
	 DWI0LMYl/ksdFG20/lYuMFQA+1SPkZwUTTIJAQPWHtZa+MkRsHWlcP9AFje9o+7MT8
	 jOYIjwrvTsZ5WoimMSJU88uTRURjbPN8JBLMbwwckfSAbAMvD9UGvMix+bqy4+EmdY
	 2yk0BQ7EBkIKRmQL+fKxx6frs+Mq8bGHbEiAGXyKbq+4OXsL6qwXqIESTFpEFhLLkd
	 Is9jENv+FvvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600EC61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172289358.31050.9624568129461982015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb73e6183886f997f052759d58085c11a0bcf18dd4b0da8b4b945a6d39f6dfb
Date: Sun, 22 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771722893
