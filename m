Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB1D31B814
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432434; cv=none; b=Sny8nqHA6mZukxgmQIYghtx/HRTUaR1vFu6z1ve3P3XNaDiZoIIfzwXIr+TVdcCb9pDiQN8L3vADNx6zCV9QaAnDL3KcWzwEwB692yIjCUX+xQ9Asx/hEBIEopUy1LIQJGCpN2gZdi99CBNZa2YcfD45fW6Mu5wwrRaaRnbUgU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432434; c=relaxed/simple;
	bh=iYAOHyE7s5VXeHh8O38wjb7JbYqfsvkNhFsIdHvLZlY=;
	h=To:Subject:From:Message-Id:Date; b=bih8QfhwqZL3vPdTeMHs4IL/fK7qpbBYrrYkmORJtc9l8df6sZRqdguzJubFUgTIRmJFwZfeKk0e5tpiG8OFB46obZYluSj8maRLFP5GO7Ni+629eVz4Ntld0WPx1TqzHFP8V/Iq6fvOyJOGnoQEdoFuA6jmsYImbWsNeO8YYlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIWdCMfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIWdCMfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1679C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768432433;
	bh=iYAOHyE7s5VXeHh8O38wjb7JbYqfsvkNhFsIdHvLZlY=;
	h=To:Subject:From:Date:From;
	b=uIWdCMfPXjAy6Fg7wamSB3+dOVpdAH1iq/c0KriP/Bzlitla+sdLaf4DEPDLDwWwh
	 86xGBcMVKcYhi92myVA+KYVTyqPJGvvOq2aYf844zLTXQ7owMErYpkGdVOlKTQ/lIB
	 th5WmDJJXVRWtu1jhqHh5ecMx4gkMCVrNpNRG/2t0X3syOfoy20wkqRcpqKlsYDrVU
	 9FIZUZlHXx+CdFwXNXg1ojXtbAWuDPgwTxDsh7g8ZZyE3WazX/M5k+M1E3hddT6bth
	 5MX8hI8/vjPbPL4Ju2fnKJNAI0LbW8zm8+ItKZ4ekhroNzRjpt3kp1YrrpglYW6xTX
	 hESPGyLeVwwYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92663D3CC84
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843243359.17092.13361756797226094188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa8e1929225b32d5b0cf26432e8855cc60cdadfdfbbd8a44bf65d058d6d6ef2
Date: Wed, 14 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768432433
