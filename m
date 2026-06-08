Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5281F2F872
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780879474; cv=none; b=URH0kjdJw2NaKVJOCHdKM5z+Nwf3gMiFYALuzJrQTwv+vH28mvU0DPMjaTqkxYosK/0cDADIk/eHt1SNmRZro75BNJpTKYJsISsojUzHhNBfG7vLUTM4cKrpePOgS8MYJYwujovDQkg4sHuShgjgU+hHcGnNuzQ2M94kKx+idR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780879474; c=relaxed/simple;
	bh=GpiYxnGVNpRwz1x7hb5FP2NX8pEq4tiWIRRuJj7OYWc=;
	h=To:Subject:From:Message-Id:Date; b=gLkOmMRhHdQSlmCN/j6aaKJeh/QHkrdmKF/+j++yNObohN0rJlswnnmCZIpc2U2G/4xCSeUSR4xLpjSoLHMJ3ntf/nOnsQTuste91rYvXKS6CzhQGkg4qnYLnbcrXIDrjaxKGW109ug8CtiaeDgTt+beegLX93vl3VqCrX08Ux4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGgBbRmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGgBbRmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA91C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780879473;
	bh=GpiYxnGVNpRwz1x7hb5FP2NX8pEq4tiWIRRuJj7OYWc=;
	h=To:Subject:From:Date:From;
	b=fGgBbRmfRqGh3/UXnfByNa3QbgUY4JV6gLdXglxJucPqTkc9wbwkTtxL9YSVtoqP3
	 1Jd7efHxcYBTp7BEHRrITq9yMH87yM9fk+mPFmwz3OKWsac7lIk3h1vMhk6BFcffer
	 l9KxWyr3INFEjZvtN7rlq3M9FSTNCRvlBKgzxhpQ4hKQCwmwtJzs2NifDpx6Ht9ABw
	 1LAiN728LnWGnD+9GPiwilw1E+9QWUJqEiGRldi9MTNK9XfSCPyoeMqeK4vug5JvrU
	 QJtPuR8HLrLv7U7vIST98WOX/Mf/vYVN/26V+br0NUWt5RolcViHuZ7qmJ3FQOa9BT
	 x4QkPhpBsmAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB1CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087947368.27492.13977162490071410186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4828c8649ed1e0977efac5055990bb6006a73aa3da50ba4cdf06d52589cf28f
Date: Mon, 08 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780879473
