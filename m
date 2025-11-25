Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345AF18D65C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764111174; cv=none; b=br1iicUwXb7bL7Tqhd7B0xKXVUIfToC1hG7MqofIS6WXsg4F+bJTtBURakrjMSPcDb0hFAiIhCk0kk8BAiqP5R2NZb+PaMdhq/1sPve9U+fV0r7OhbPE0A2KCvme2NHdNGe7R1X1w4dza2wls+jYGFjN1G7v6Q6qkkZegFH90Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764111174; c=relaxed/simple;
	bh=sEuCtHsOJKS6ynWGKtJBlFvCCwo0XaZ7j750JE9ss+0=;
	h=To:Subject:From:Message-Id:Date; b=lBh4ba9Ovx/xFZosJtgDqVR2vvn5gyXW13Vg6QbPkfbSB7OZArlQdvifGinjhVzG2c79vPg35GxRoWJPaFAOQNBcvpIdkF1XdwZAd/l4kS9hZle/mqG7Nb0STk8YC0lrNmmyz5GXUVRv6qjj09YhSB7wBeqUDo+Mf2mmVUMIm0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6gqf6c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6gqf6c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764111173;
	bh=sEuCtHsOJKS6ynWGKtJBlFvCCwo0XaZ7j750JE9ss+0=;
	h=To:Subject:From:Date:From;
	b=Q6gqf6c7/ZvdNmhW2hL5YtZUZP+Wp42PuxWhqP6xjDq98JgKNnF9yLvZzIZIbj9EB
	 mKsDqpzkYsRY7nQvfD3h9DMrzl1XslTya7VvD9a1Hx4gHScvwFvKZqRVOPTz/EHbWk
	 CnRvr0xqtg5IfQ2jO1LVote3ItXcRiu7mYCJ2Ser9uUc/+IwREGhr0Gbxxz/VvvGWg
	 ODkjG8T1nbNNTw2dpLphgjOHnE35PuDu4s9HZYBVrWXLQflUPdRfV2zCfDXOXBotg7
	 P1asy5jRY1rysTCHDRdbQa3TDf7WEie03Sg9tqokllJrlZnznd8AmAMrqV3j3Iypc5
	 ZgLmbDXWGmVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C41D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411117360.22514.13120230659820210364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a9fefd21a782900651952ffe8bf30fb89cb6f851a79045e5fa5a61cf6fa2fa
Date: Tue, 25 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764111173
