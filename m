Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3EB74BE1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765014174; cv=none; b=VGWuvYE20BD/7ywil6SE7GomgChQMYmvGllBVBTslhVwp28xQtWbkytGiyNNUFqMGZ4A28nG+q8yhTClD27Z5eDw/r/y2b+KsTO+WzP7dSHE3BrGUk7pgN2Z7J2dfrzHandG/HQdCihtwO1DBI/QO3Wy5NfAwMhlvxR0+xwOhJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765014174; c=relaxed/simple;
	bh=F5DoWfjULqPL91xKiqlk2A9m0ShLgLAChQzU7+/E75I=;
	h=To:Subject:From:Message-Id:Date; b=Xjj7cacDaqRPn+YP+WfcrMyW1gWLA3W1ECMjWGi1720TM8gc1UWvQLNPQn6o4Sa32gBKqsrcDUt6J9gwiorRrlfIgwuwTyvnyRa2rVuXAqr+8SS4pISFSVdT5dQluVlbddoG8NuDo22pAkoZgLXMhsUUhDW+chVSeH7tmOYxPpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR2jUYGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR2jUYGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8781C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765014173;
	bh=F5DoWfjULqPL91xKiqlk2A9m0ShLgLAChQzU7+/E75I=;
	h=To:Subject:From:Date:From;
	b=ZR2jUYGwU6dzX3HtEBDzvDyd2aW36WeWzG2K0Fc5g/QjRqahu9OyQcUvXIIsJw9/u
	 Pg8IAK89jvSpG01qOICjBU3wVRsmu50UHr3Mp+BhyhTcEnDgJFJ9kI93PJIZ4RGwQc
	 sWgx7dtMdZlh4rKK6BhXsprh2Ywe5bwQF243DQmt6FuUVbuSMdT41vecRsZtzfXYq5
	 qiDSSEmGXQ0QhXpnYiAegd56yerNIdMM6ULoJlKpM0CfTNF5GKCo0jRCAsIZmX0PM6
	 uJS48qVqkyzcDECdnDqGRoBaIkhvZITxFHq0Ea7rUo9iD5Bv3vVQiJv/ahlA9mVJdc
	 2g+nysnTeZEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664FD3B7CF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501417359.4406.2953500687533275680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec049c924925ea80498835d3954ee70466e31cb651b3751589c9c0ab8b9100d
Date: Sat, 06 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765014173
