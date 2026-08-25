Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5E13AA182
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787649634; cv=none; b=sOlXzGWBHhJFyTvN0WiK13qICybqmXeUZEQAhYVgjza2OJMQBhDpF59poWFE3wJZiM0NaaY6pWmVS9wmBUiPrUQGsApvbXumQfZxNzv1a2ZmJOnZO/b8C0v0k3DTsS84/W0sH1qbP0D6q/B9fGZKFMhxqiokbBa8LRNFIS+MH/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787649634; c=relaxed/simple;
	bh=08kXwHtzefwOK10jpbcEJDE06AaAhPaxl8VlLGjBwjI=;
	h=To:Subject:From:Message-Id:Date; b=BPTFZr75maK5R0VYkhwjzM3WhgvIPBBKdspqYCCK+ujCwYhWvB+cE2jQ/5tK1QoFazBwLZLfOKEDTdemTEHBtVjuDzPjCcCZKy1jg4HVCNTij3JRPAB/yMSFEtSOhoyzA6IA6damRs9jwi+iahD4H9zmSN1+G6Cu3cQOl0zSc6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzHXBI6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzHXBI6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF483C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787649633;
	bh=08kXwHtzefwOK10jpbcEJDE06AaAhPaxl8VlLGjBwjI=;
	h=To:Subject:From:Date:From;
	b=QzHXBI6FMIFbvjBx1tjT+agIes3mEpy3ZGPEJQLAp8ebuoywZISbTNvZkClpp5xkJ
	 oAOjofFlLou6HG/Kwx9oLbezIl+mcwLNkmAEs+vWNbFBZJwOFsZC60rqD7YZP2nDRW
	 Btz3Pa1Xq3BmUwq9glw+vTFTH5swUkRfwlzrqybVePW+dUZoyJXgP68hoo5fqPFMwQ
	 Kqssjs6qZTMUPPC3Vl1WiqDa9eXL4RE4tDZ3ckcI383lZnwLK8XKVXnPNlwJZJhwJ5
	 YaTQjcBpGF24/Gnn17xX/MnlWxh9o8jPHeb52QU6h1LfcB5P7XYBU2Nm7UukceodIG
	 W6W8SJ9sUrkdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC55C61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764963369.12631.3525725281056959438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aba768c104e1a89dfa9cc02ae2fd9c30fbf68c53444d2232a89ef244d50069f
Date: Tue, 25 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787649633
