Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE3E571
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744600194; cv=none; b=VAzwI5FJ12h4S+JRb4m6VIIe/SoFp0xY+7zJg5W6QsDQJv3JnO3vDfQON6X3mKxZ+TK7obQTkQojevgh2vcezcVN5NOaMZyfCMLZ7TxsjHToXyCjajFY3N7Sf3WU5ZFIhF6CRwNHG6eqNAdvUOkJ2s4H4rNx4Plw5z/6UkxvEb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744600194; c=relaxed/simple;
	bh=PFZ1VJItL+wZi6mTlofac1IdcdeoQamk00I83R6XjLU=;
	h=To:Subject:From:Message-Id:Date; b=rX0FhW/v22R0YBaSUut2TO3wUCe37p4+0S1EMJbd7sbmxIDjh+RBNmJeJa8AmlIQLqGYB3NB1tnrsfdyx1U/wL3iOLNdaQqZUvm+KcXFP77IiLcxEag4Y0fK3zpT/XekhGiKYHI2w1hbgRPTSCjHvt0kUo0h5nNqnOOnexu/g8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK3TJFid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK3TJFid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744600193;
	bh=PFZ1VJItL+wZi6mTlofac1IdcdeoQamk00I83R6XjLU=;
	h=To:Subject:From:Date:From;
	b=aK3TJFidUH6X+yBb0pQxtEbKc3EwbLgvDG/llJPSQjWlY0BjxCX4iIEQVWmfOuYdb
	 rT8fWNmRr2WhRilFkrUf0j//tMa0nQggjnDRItcuoKeuptolN49/do1Xs17W+6gsYE
	 rFnH2ZtrSwE3KXMKbMFQ7cc0ssbTxYGh9C1iBl12+6wDQVVtxiJ9D80lt526eZx0R9
	 HZi4s2Xk90rDwX0LyuzjYdhPuMNUga2W/u9QYMSPPiGmB+z/qglZldb90pNdC1ttNk
	 7haajOART+TYNzDMMclOHE4fA4g9lqJvXXDTk5jFe4T0XhsWR84wOXbmCf8GqCgFq5
	 wQXUXX7G9AiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F557C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460019357.14656.2738838181537358318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350ded1e75fdd30ce417c8712fe0e9a6502e84fa73cbf09d11d1368f10c11706
Date: Mon, 14 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744600193
