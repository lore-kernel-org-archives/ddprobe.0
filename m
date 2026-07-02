Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E1C35AC20
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782971914; cv=none; b=qiqPRl1It9iTlKIIHdy3l/nRQF48tI1qd9q7FZWLWWL67N8tcchsRYQjT886Vb8bk4kGYyy6qYVPg8aKTKhapsRQQnUzdxydMUS/LynHCgeOEc9jNr22rd/RlnlN/XPO/4Pcgaf9USNK/+b3OrfZZV9M9WzPLQk5D0dB2Vih7vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782971914; c=relaxed/simple;
	bh=8ggjUb7/8plaNKptV9o1VqXe1Jjn/wGC6T8B/H3wQGM=;
	h=To:Subject:From:Message-Id:Date; b=mwiIiSq72lRhLzUxPCJWp3+Wq24QU9xb6vMqBV6+PfKV0n8HxUAolS81NeDbCAdK2n72TqfswHLfUu+KF40V+CfM4NuiKBen1TePdPSec6OmX6d46rJsSFvYVGC7+1Z2PjwIlEucnvj0oE+OmFP/gD7FS2YdguDkfGzG9eUCYMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jel5vA7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jel5vA7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC27BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782971913;
	bh=8ggjUb7/8plaNKptV9o1VqXe1Jjn/wGC6T8B/H3wQGM=;
	h=To:Subject:From:Date:From;
	b=jel5vA7GFjSQpQTb4X3OtHkNDzmocGV9WBRm6tF37wwSZM1ohWOwFTcB7sVqmDG1S
	 uHX0AGlElz62kJmlFaTrc6eRFRJom0JSlsKO3RjYLAuS6dRsHIAzBF3jJp9NUgw6+U
	 SGM80r4ZytDRrxUpabqNQ8v1gmZ+dlD19CSXzrBc60h8IAM0F9mW01ka+uNNfRsecO
	 FClS56Todx91QcTvx/DEy/ur77oXnX5MQ1WU0QwVuLk0ubXOB0E7YPIp/0mF6Tu/rf
	 qMrZ9Gn60SsM2Ooeos6FQygHvCIiQhDahvcRY6x25hhKP6L8aT8Eex8M07hzn4aq65
	 QmBNdDfLz/low==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F2C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297191368.25901.11424220556910482645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad51556582c6aa0825e606a8b6232c75f2210cf0bc68f324e6dc650f7f7b451
Date: Thu, 02 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782971913
