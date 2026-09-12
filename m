Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C9381AF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789213834; cv=none; b=qUqZpP3UD+aL/eH8Nd6/IiwPlIaTkmmJKTIUl9UXwnwcHr84u47BZ7blxZQ/+GxWogeUmKFvN88OwZq20Luas6wa0o701Evx1a02sMJ/aExwSm9URMur2cEKCr5FcEgfpo2Z4iiELjN8OpHYH6rkPKtjcJI00Y5GqNia85EcXaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789213834; c=relaxed/simple;
	bh=UUUR2tMN+itTq1kT3zkvVwatDgmL7dXB0MQZiO5K6rI=;
	h=To:Subject:From:Message-Id:Date; b=U9WUrpR2PtLoXBhz0sG7fLb83VQi3F+WqRqr2caFW0LSoKBGJUt0SqOKvIo2EzDF8GRkyngP4f7Rt2BuH11CDJtIFgYvL5YYFjhYHv/knQ/ebBZtqx5mBzoWxAOUBh8D8HTtki2bmmgM6ahBQ/rqjxqj/YtObZSFRQmGfZ22b9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amCokk+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amCokk+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA591C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789213833;
	bh=UUUR2tMN+itTq1kT3zkvVwatDgmL7dXB0MQZiO5K6rI=;
	h=To:Subject:From:Date:From;
	b=amCokk+4pXrXN5U0y7eSI3+3oLPlg/KZF/Plqp2VmhebepOmvMHc27sSx3a2WWeqT
	 TkF5/Xe+ir3ibwKGYRAVVMDami8RwEfT8ftyUYWcdtoKTE9Gn7JNszQw0sEhoYb/XK
	 PMoxsbplqqSjhTBtb81IsFgkqFLLmDhu4K9unjglwyrUzjUu9QMyS/qsbzb3JrK7e3
	 4M5iZb0d9WbV+WMeCkLevxDwN1dT7gPkXC8AHgustLQ4cOdjfIOAeSAlL+fF+NxjV3
	 L9oq3bUh8lUovPWolznIvTUH1zcEWZvXDCLWiwCMZnD6irbmtlDnSSah0QS1GNfIpK
	 pv4NchFaQSGfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91FEC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921383368.4456.7235197208137199988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9956f53a889058f389b3ccf86fc913f03a4f90beffc31e556a4af3069dd8b2
Date: Sat, 12 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789213833
