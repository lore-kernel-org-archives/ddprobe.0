Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3490C78289
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732994154; cv=none; b=s6djOHbspBA7O2J5bJY/9cNMI/bnqpCebc/CeA9XoN56oOe8/Q02xYS6Q3nqESKGDtGk5o/VpTosdrITtmEUYlt+vffCXGdEE6Es+VVmnNFVkMpiZLD3cxjgZHICENBS/gUnSFJUdORMFCTL6CeTh67jHVnrSKnzAWuK1gkDncw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732994154; c=relaxed/simple;
	bh=+hjUvlFZOWcR47Hu0Bcnkq1Q0RxgrA89SmrEZJZTgHY=;
	h=To:Subject:From:Message-Id:Date; b=H13rRRabIyCnhDBMxHUdhGaXwOFtdMsb05RsgzNVdWQtMyorme6DPrpRSbNj/zHayWfivJzqk+yB4Ra/qR2dvbhSmX48KtnZBsq/RD9wV4hUYKqvoigv6Jh/L6j1vs99FNafDxf1nrFj5U308VmzLHmkQd5vLMSpxZeiSU5S0Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9bo7tfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9bo7tfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A72C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732994153;
	bh=+hjUvlFZOWcR47Hu0Bcnkq1Q0RxgrA89SmrEZJZTgHY=;
	h=To:Subject:From:Date:From;
	b=t9bo7tfWtNPNzGFZD4Q+zY91YT1dOvdL+F9wBySKsw4623YkpPU0HuZtAwFetH/T2
	 r2FaDovUZF+sL2I3skv4mIH1/84VAGhfTpeEjU/u6kfLGLnnfur2CsxOFKzrIwaZvF
	 yGqseilffIbQCg4rT4sXzJXRfU39XFaUDDjDlU4VUNBL79fqMHAYxDs9VGeVJYFQw0
	 XXdrAVkiEhghBLCdCqCr/lJitaaB6l+cqgd9yg7QFH6yoB4Nyx90OfrjLP1FmYoxEw
	 4O32D/DC9qQczM8CP4HdHwk+EEgbVrNJbtaIu5OTczRT1bvG6KuHoiaIun+lZPp3y9
	 nu4wtJbXOkC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379ED7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299415358.8750.2675606221745899782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cde973557fa3cde2a117f37c39504d3a30fd23204efd841976d4941e383145
Date: Sat, 30 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732994153
