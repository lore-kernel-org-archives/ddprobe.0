Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF93374A0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781033134; cv=none; b=r3OLuFafZu3jVCYbHTRlFrAls4PoDJklj29dOhyCgh/mTvpKfkiYpt0mY/eEdCvVx0XTEI+zXOtF6pDBbhYaD1fOoFHBtHjnsVsIYqTnnlZLPlAAas9BFGc0kUEpYLSySyQduEgf0Ca+y8sK7mobGcLzenc7wg7Jf3wKU3gCuSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781033134; c=relaxed/simple;
	bh=2vP2ZiicFUAwMZqGLZ66/ulxIyRyqe/BwdBllhSgiCg=;
	h=To:Subject:From:Message-Id:Date; b=cySJ1iwXnlMO1XLB/075KYoSZqpynM9GAPtKtGjIF19KpIMjjkFb8MWMUY+s/JL+r7JqvmRpER+iWv0JmoqRnsqYaJurjPIMU9j2c+kQiP/M8hA47aegBoSyt8n+MEiptPscG8sXxAvq+xXzIKdwCFj3l0WPM4Cg/ZPOG6gSDjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgLxftik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgLxftik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C703FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781033133;
	bh=2vP2ZiicFUAwMZqGLZ66/ulxIyRyqe/BwdBllhSgiCg=;
	h=To:Subject:From:Date:From;
	b=dgLxftiklDJT8iwGNeah7lrP3Vd9ipQ3GkJedeZQABMlbhfsZvxnx8LhnpouGST58
	 /hyMMlwEaQBKq1fOOkrZBYR/ldpRSilbGruWl0M6aL7ae4+ftnQtlSl1wdtPZSqidT
	 1n6tCHySyNjgOdBi+Y0n+hRrUOeQzPHeGKYR5M9dHFoCte05ZzMl/xAhU9sw4BYkMQ
	 XZUu+yqTrXBeEe3MBqJpcNPh5MbNjXfJSX/76xtzrSWBWKGTyjkdD7BXjrxShR8Y14
	 Oy5+LXV7ONpqqsRbq0ks/l+Y06cbOA0LzCUEDhq6jV8LtGcV9wIn1FIqtuKG8ty6Rw
	 cF2j3mDjW9Zuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA88DCD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103313368.27929.5489608263757911059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e187c9badb5cc30749f9aa2a739666dfc0aefa773199643ce1fbac7298cb2472
Date: Tue, 09 Jun 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781033133
