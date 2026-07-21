Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F974353A63
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784606915; cv=none; b=b3J3Je3nCs9PBHFymeAZOWO+QDRHEZSyWfDJWa6T2J3yXZVckPfEP2AUdQpQy1WyBKMGpfxn7FUTh83ZYA4jWs/c9tbMlYfPqf5pGkA1GpPeLD6hqDpypO6AH00rl1lKSQoCvzEK6ISrBU8ttbqo8LMkJbn8XyQlG0zMqvH6t4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784606915; c=relaxed/simple;
	bh=dn2om+/J/Nk9XzffDdFRqSj0CMC7G2i9ya3nOmZXd4I=;
	h=To:Subject:From:Message-Id:Date; b=i5310ALH24jTa9wTpVYQVzb6xZAYEbGzxDMYLzzZxvtP3J+kBxk1WPZa0Lr8qpHqeJUlnVmM0WL9LjVM7fU3YN42KBIgchoqbwKFwtjCUZPMo8SKYbeCANewhHvzQ7Sq2RnuxDt5faxdeBcVaR2kRPcLxm5NFXoCGwkQC1iE6A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hViOcjRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hViOcjRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF783C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784606913;
	bh=dn2om+/J/Nk9XzffDdFRqSj0CMC7G2i9ya3nOmZXd4I=;
	h=To:Subject:From:Date:From;
	b=hViOcjRHocKS2zil0Lyy6dQUwqGimQ98McylS2o10cHQ5HhCMAg+wGhdneAi6ljX+
	 Cma+T+pp5nT1Z+QkhiYMtd6luJa+uNTwz03lHZfIm10NfSsYdPHrQFtlEDI7TXhR9M
	 LD03FrqUq8/+OaipuOpcm0Y+73wZJ2Um9FCHI7ibrdFvC0ALdWrSLGHi1dFJqDuxD6
	 ytrB2Zm42I+aVXiOdPqmsncn7DgEA+aPJPmj90QJkRrFVMJEllPjWYyIxFhW4+4QBi
	 hFV8kIQQ678Iusp79qGzwJQbB2BV2Mm1fCuwogSTzTHp2J0gwXOVZq4PXO5bZUWjte
	 8BAESWSBrPD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC752C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460691369.15774.1925303318961559919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f31c5f00dd4294c91aa58017c415416750c612ce7510300fa19e4ee3e1101e5
Date: Tue, 21 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784606913
