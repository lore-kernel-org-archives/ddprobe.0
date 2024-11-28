Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2993513BC35
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732817754; cv=none; b=OCwJAi0K/FZJr2kehdHE3FiUIY8deHlNIvxR18s9f4MyPnqaY4LF5k6hL1sWSQUNuexP3vSbHI8fA6qITLm/+HccpaCY/4ymQuYRhSV6aOXCSnDzukxfwdPnE0EQCT0fNrosZpa9r8gWzF/4EBQIgT2oAXkK8gOtPUfUSNK4YAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732817754; c=relaxed/simple;
	bh=YPcAhzp1tIQd3XoCVby2IhohQMJt0k1UlonFngwC7B0=;
	h=To:Subject:From:Message-Id:Date; b=p8sflXo25JgWCMwowpiPStjyGZntMwEUA2f61hWJIbcqWIuJB5MkkWJmb5is/qgQsngOLxbgJ/tYd5w9JUGvHXnYyz+NL7uTUXcaM7Pq2eO8XCYPNyfe3EkUsegPnnqZBGopxrfsRjkMt+QmktLk/g5m+1FGF+I+H9XJATJn7A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syHe+8xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syHe+8xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E86C4CED8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732817753;
	bh=YPcAhzp1tIQd3XoCVby2IhohQMJt0k1UlonFngwC7B0=;
	h=To:Subject:From:Date:From;
	b=syHe+8xIUzpmzWPp8YmoLI+wuyh5/L2e8yXn+DjTqHGgqi+39wRlPOhCENQBuuNNM
	 WsEXL+P647/ngU4IWRRsEZW69CwInjfqpvoRMAs2ugc5b6xpyGiUDMJieuZXmJsMEJ
	 xNzJ8SVmUE4gtrTXOBT/Dc5OArqRnzImtyVyyvPkd2BHtJX++gOUydafwF/CPdANNI
	 /V2Bhr759YzTDq/5cq9yokYnW5mmkr3g4AD8DHGPrGWsd9Mn0zE4+PlJ2ojvycn6bC
	 QQG+2Pz+jFPb7ptaaIULi2UaQvqHTocyHYma7HdsdKXrzudcTJQDFM2Qt7ogJaY2y9
	 SSL5PhLGoj8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DED70DE8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281775359.13147.18059265458766571039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426b20457848a5a54ce2aae2758775a6d524b28178a28dfdc256e835f91d533c
Date: Thu, 28 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732817753
