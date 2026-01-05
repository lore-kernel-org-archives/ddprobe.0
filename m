Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237072773D9
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767611634; cv=none; b=DITpKh//dRqbgIj5zrrdKi/+aAznla4v3eeDNrX8+wC1F22CZCqyZWFXCSTP7zvcQWHFglt2I9954HRq6rnkc5VgRDRTeC4SRrx3QuKRqXULS+lTGEzNaeMPiV6yRnIEhCmc2GHn2to6w5Z44CRK4Zz3BtYVuTylpT5mh1KyMcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767611634; c=relaxed/simple;
	bh=gcAPBhQ3tbkO+cLEGfiSK/elMzVbmVXWmFnlFz8U3DM=;
	h=To:Subject:From:Message-Id:Date; b=bQpBKUCN6FkukGU7urQ+1TPEmP7jsjAJqAof+7HvF+9YFe7eNLDyxiROm0XlXVa8xlrWL9XdpxVvHAZZrU2EWMfSGZ8qf76d2GtkXG3Ybd6iqofVRPUxsGk8UFORZWAqitYvR8xsFQ/bl9TgsDzc2+rw1C34ZrpjZsKuck80V8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR99BFuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR99BFuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90E4C19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767611633;
	bh=gcAPBhQ3tbkO+cLEGfiSK/elMzVbmVXWmFnlFz8U3DM=;
	h=To:Subject:From:Date:From;
	b=tR99BFuJ6rc0C+Ngold0a45opShUTUJlAuhCPE5pGlRxxW5O0Xw73BUTpVp4pR3rL
	 h5dMPWqBavklFi64MawGUus7cUA//MTanSjrgeySAF01PFjJnJH+wyIc7/C3uUW7n4
	 CzHm2Dv5E1exdIgZdQKuwJ3iJFLFhfhJgC7BRLYzfBEXY90cVeLqhu2lIg02xHhZCj
	 GT48CjSmBLlJ9DHdQpZRBMkrMKtATn9kd4vAElVhYDjrZ3dpnJ00JHTWbokQc4cRTM
	 i9i7LHZHbJggZHLuWC+/R5KHBRCsaqrUv6mCHKchyh8i6bqU6M4psblCtjdAD8ntsy
	 dhne/rtjatiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B265C2A099
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761163362.494.10164227970970971603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44136631d9cf391f227fdb634b2b58fefac86fbc155bfd8597c47e1ea30168ff
Date: Mon, 05 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767611633
