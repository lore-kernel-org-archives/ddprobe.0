Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A4647
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736060154; cv=none; b=IXt7Bb8RLCuLcnacxIiZRIupY3+8r0hzsxapJBW2qQezSt0n9tBPbqapzea5N8heU6MZBuPAM4912TITmBfM+23jJFyoKjIRpF54ExRE3uxCOx36R0PUWnVtSwYSkjEul2E3jloe0K8F5WOUEwc+KhThWDOY8vJlaRGsl2Ct/1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736060154; c=relaxed/simple;
	bh=2ixUmzDh+F3lk+jxa5j18aP6gg6TPsI85RFYELRex2A=;
	h=To:Subject:From:Message-Id:Date; b=safPFNEo3zsonVGrfyz3cYCZCxs3CaHTqO3auv5To6RvSpNVpwgehKjB8eGhlhNjU9CKKzYLvBcVzdZs/BJ0mgU1JhFxzPY9uY6itLtzwR8XejXMyXKnFIeGI/EZSHdIHDnGHDWGv06pwJMI7vYbKXJOjZyeU7r0CgxvQqTmYPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3jJiQ1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3jJiQ1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1395C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736060153;
	bh=2ixUmzDh+F3lk+jxa5j18aP6gg6TPsI85RFYELRex2A=;
	h=To:Subject:From:Date:From;
	b=d3jJiQ1g7Uo9zbNBRtPpf47UaAEP7/8b9uzRAf/+RQ2/u9RQQTpZ2/tjgYGYvHi2R
	 i/6V8YKBIFtmHKQAFqiLOXGMVD9kRzHcRCVdeG6tpntfzdAFG3lsO7hgd94CaDIqWO
	 FWlwFKyA1f5JeSSwg9hcURJnuxeAmUyoUmpX7nhxTey6Fzeo5GfNEa6kblw3tW0e6f
	 9+PExqu6GxO5kNOKCU6vNCMkDmwOt8Ovyze6Cfo10XzUyJEzSeQg5n6HZ8luFYmtqI
	 lYtvtnhyKtUDf8grvKcZV5e39lWtRzJM+0KPV1TAmcK+jkfLfR4quGM7xad8XZEEvS
	 CQAZX13JkENBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED28E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606015357.19235.9643369967209124688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512280a384b8a70e2287f6e618e40ea30e4ec2be4afbba202e11878f2a0c11d4
Date: Sun, 05 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736060153
