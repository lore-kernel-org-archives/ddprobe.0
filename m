Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461BC35A38C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788488434; cv=none; b=hvVnvp1lhMGQ8PZ4l/kS90bTO9rXU7v1aS2usQ0McMZ6pnCr6ToHIMWqlhb6sj8iJpkIM8DWRfOp3j84hWLfHEcONG9a84O4YX0QJw3ZtzbEVFSS4beKihVWYsWFbcJRTo8XWAj+iGnPfAepzBkksVOUi7/QZVcoohRS4GnIA1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788488434; c=relaxed/simple;
	bh=gG51lj4BvJsAEz3JSDaaNZBXVAhyeOM/UcxXVubgyhg=;
	h=To:Subject:From:Message-Id:Date; b=ehi1wqrvqSGcCiGrg0qzpPTVOcAGZvhKS7DdqfC9gmeHWh7p2WIa0x35e6Q5VWL82vdhYGabtEb19FT6PGMvqiB2eN04HxDvvtKvp8ejfObk2E7rT+7Fl3XbnG6MKb48oi9ViyBfz7LMoqQPcLQ6bAcq5ZnpTDQfQ6rD8MZZMUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOefiUwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOefiUwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF23BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788488433;
	bh=gG51lj4BvJsAEz3JSDaaNZBXVAhyeOM/UcxXVubgyhg=;
	h=To:Subject:From:Date:From;
	b=tOefiUwb4JrLWRXyKtnYvp7OzV05ZChsW8O593jzzABvsaQDhRwqr/073OOUMx7pE
	 GUiSnYRnJypVM6sED2x1CXZeXEbbbrcDyoYxuW/TDVJpk+0y76Sx7L5gFNDtgmP4IG
	 wd2VGX2aLhtZI8R3mHZfAAySym/2S45HnmgBgmN8p7YWyJO0UW1dC1QSSKhoIo5Ed2
	 uoYwvleLz4HK56lxXWe4OnrJ3MBlR//YpLO8G87MUnWljfNBcpGZb42JBzk65B4hkz
	 RRGWBB9ecxmUMt/sWkQMwMSMsDy5ic0lYY11QQ3uHghC7P9HD92je1usuqoU44Vd0U
	 Y9h/qTcjLWh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6ACC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848843369.16364.5448818631792018806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f7622f474b61942a6eb41cccd886529da0fc9098bc99cc3e3cf3881acd272e
Date: Fri, 04 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788488433
