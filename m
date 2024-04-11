Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC4B149E10
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712840896; cv=none; b=lFmegL2CQheM5bO9Sde1UsLqxu2pk+UTRadB9Cql/18pj6Am/T0LHwhAPdA6fWCre/6P+5sT4bAesUShqhuQvfUSRPM8VdWoz25hKCDfGaaeT4zdmDjqITofzRObyNTuBqw1S/4fxmK7L7jZYhFQh38ulXwP1MMDR/uIXVq4tAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712840896; c=relaxed/simple;
	bh=MyGxwI0UL9BL6qTzCTPmE7FnqPR5XG0FP7Zoe7tXZ98=;
	h=To:Subject:From:Message-Id:Date; b=mBEMXGnWsyR0ytJPviecDzXSBrXGd/DWoIiCRMoBAAVSs2eHgz65g4N9GICGTAcGZIaAppLobZ+qXqLcIGOpi71w9ZH+uH6Ngev3WFFAmJR1+jrTHiXubw2RvRqKQqHhla/kO7q+l6Krn/f/W62ESe95rnrbTFokbyS//g1Sjfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzeqJfRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzeqJfRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA8BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840896;
	bh=MyGxwI0UL9BL6qTzCTPmE7FnqPR5XG0FP7Zoe7tXZ98=;
	h=To:Subject:From:Date:From;
	b=CzeqJfRMlZ2CUwp9pTZ9oKclH50oDF/s1dM5BmdHecYveWyO9YqEKSY0cLdI7tQAg
	 WqknAtnUL35p/tkqqFNSh93TSh6B8VBu4Qlopkur9kVHpFqA06BeVVOXaLk7rZzePE
	 D5or4NSzeY/ljl1C9T/lyUCdnpCJT1WZpJioO1cSlpraktWZc79ioFHQ0voMfnhwNA
	 IFihtQQr2kS05eMauncHOmPO7WVc00hzFZU2jC6qjcoe0aQPa6WPbp9gEj2Ig4fEDN
	 2GOTZqoyX8R3yvy7Bkj8/731RJ1om2Nq2HQK6zRjAIXXP5YJJOUoL6LpnJFxzgNP57
	 xiu2mjeisFFxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C87CD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171284089638.3125.15340468055433979444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce6fe26c5bd85da6c688c72421d5f15d14c487a6c1cbf88d8dd4567638fc73b
Date: Thu, 11 Apr 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712840896
