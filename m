Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4177235E930
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786674634; cv=none; b=ko8K10TaQifh4ZGzYGF33ALAivYq6Cjyh2z+jsagro893CT/0NqmFb7UncrvRmL2oHg5cCft1uLg3YPAf58e2dm87d4Dqdfj54LqLByD1PDjFCENSZZtG+o9+rmyqyRpsMv47TskJ3bSp+bVczYh9b2c5izcepj9HpXAS69rNEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786674634; c=relaxed/simple;
	bh=neTRh5Qw5sipsGDL0JGmFc4eViWT5A8KaFA6sXr/m94=;
	h=To:Subject:From:Message-Id:Date; b=SHWZkUMYGDZYPV+VuRmHa7nASu1aoKG2YLxJ9fMCU9q1RSSZGSSSE2YCVo7Bq9vfILWs5XB16qvqC5yQO+HVyrA11ODV8NaQlKbwhsec6/AriY92TQwzWk/nGDRHczXSWnQs6lfJMJRVD+Hu6Jry0ACSQ1cAWGgBHFcrBIuPc58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOeu6qNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOeu6qNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8C4C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786674633;
	bh=neTRh5Qw5sipsGDL0JGmFc4eViWT5A8KaFA6sXr/m94=;
	h=To:Subject:From:Date:From;
	b=VOeu6qNLQpoLwvVm7h4IJZbAhTJMPMm8Bqk6p+9UuHxcXU1TMlHkCeN9sZSsAIbIo
	 gRcIsesakQOOS6z5nc8ubmMQuCeDcaXacWY8zU7avDMqI+/18KOQEnaZcn4NBxrIMp
	 5tsZIHKKHCSCcqvdrFFf605BmImKn/8kTGhLXUe1L9w8sFplHosooJdVRND3W7/WD4
	 jRVq3ls88u5Nvp+gN1Ww8f2Din9OeNHsC3/eGbFOpjLLrRZnDhAv/dfbb4shMYNRrz
	 hzsWN7GyWcVYsDJ1FcV1/KOYJqLqd5MlAKTNB08udRgtDAi+HgYfSQHmQe8nMXAioj
	 Xpi4nFdAgmdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9611C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667463368.5266.16229213374191773363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9a07057ab9a3d60a2818d9257ae963d0d0806a13a4d9c24525a2921bcf725e
Date: Fri, 14 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786674633
