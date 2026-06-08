Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BE933E34B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780924474; cv=none; b=AV0G57qsv7hMq/nwm9bxRyGqFnVvAZc5YxC6tgCV8WAVdG6ZlZDcLCQsz8iuxnFJ6b93TcX0Bopg0nxRtBuhCBOvBNTnGXhNMBjvasryAVKLoFx4JvJPqfnHgImiHDUaviN/mbQyeQMhwbBYAsoPB9oL3lqMKTPvkpL4X/L1s/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780924474; c=relaxed/simple;
	bh=nz2CO5Qznmmqi+LncKLQxVyCQBca1Fc/JcpVAlHwQLA=;
	h=To:Subject:From:Message-Id:Date; b=WNYgkJifCQnNu1RKqV8IoUmddgZCwiD1FZgRjSMkiFltllHi44NGX0zhUWMHLA4bJN6UbLdHAlc49V3FouB/xqCO0PSMqyT50yAg2jrANH4yBWK8GqoiIFUpd2HKC8XLcnN2ETahXG+4n8te6XA5PsqISVo1zAAr51x4gZGMfG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMTDyf0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMTDyf0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1330C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780924473;
	bh=nz2CO5Qznmmqi+LncKLQxVyCQBca1Fc/JcpVAlHwQLA=;
	h=To:Subject:From:Date:From;
	b=RMTDyf0merkElzJsr6mJ307Qol32KXysP7wPcrhIMRKVq+INQqNY6MfRxShW6ffnu
	 QjWKDpuQ6oK6TZTABXZdcZK5x9t5Tk0LikPocN6W6DPw4WeIDJUjZLRFCGdYuYMBfF
	 TjYbBX/KmHOUlsi7C8zGp/UjYmOBpnF0GUB5c6VoljwghkxWW6JhDYGqlNTqczTf9T
	 80LcXSNX8Qy3zJsgweRN34KqCp3jU6f3SNtBCB+64+KnxvckeDXpSRbbuP1jxc0Zaz
	 ZfF2+XEI6N/hRcO7RKvv5eOaKwbTDRkP5GE795l6ODIqVK/mVLl1ntawK3Ot5ZM6rr
	 yT6Srwss1xvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D8CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092447368.23524.17055821964665609500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963bbe1c6f17ab869ecf507cf47cc3224d8dcdc399bd2d311e6fd535f92dd3ec
Date: Mon, 08 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780924473
