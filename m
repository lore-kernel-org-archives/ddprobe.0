Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315B233ADA9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768595034; cv=none; b=S+N+TZThVtgZtM0bYiNpcWwfGK4gzrnSnsRKk4bza7Vlx4RfSQUobkMOZR7h6vTMNyfp8kYxRAkiQ7hkjZB0ynNaEDBeCGQOldPG2nfoD9Hm+rhp8UpuAkAOzWfe+ygOII2eswO3pBxkoelP4xnj9Vkr2hiye6SCjrDVXzF4twg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768595034; c=relaxed/simple;
	bh=pensEmdF+JW7TVyzQ6r/V7sOWn7cfgf4tNcI8Wp2Fdk=;
	h=To:Subject:From:Message-Id:Date; b=Ae5tuXw4WBQCBSzZg5iKat3LKGq1pDtmJY5Yd5hfprPUUvfRITb1u/oeTUGlC0IQNn3qfHDLdDdGNWzJCM+WQE2ehBl8vR3H6iadcylh4YtshXdxLDGfHBPH1+SA/bzbDtClcabNd7ES1DAY780NmTCjSkuqx99FfoOVcQ9p7xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhesgrXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhesgrXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8535C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768595033;
	bh=pensEmdF+JW7TVyzQ6r/V7sOWn7cfgf4tNcI8Wp2Fdk=;
	h=To:Subject:From:Date:From;
	b=qhesgrXjvBX/jvo3Z4nKUcfDxinHgDK6fLlAVFsrAI/q+Cf5ZrbFGTYAjy+YU3w2q
	 C06mw1hk20PBqKC2UoBhjuybrHiDnD1jUKCoQfpvbo6DhUZ3Vyx4J9WeIcBHzk5BPK
	 lpan/+RRXQhwL1/hbaRo1gUQDq6Mgb3i5z7FXQ9omVotml6zMPJ57XQkVzLzLhY7zk
	 nHbT1NZEXnxs9wMUBNMtsOijJ7TF8mULkT3fA5/EEn7qk2GVboCiRz6boXFPv9RTQd
	 lhdoYZN1BbY9o8RDyEGVZvt0E1h9Cw7aebGpFOP/Pa6zai9RHysex8XqgsFQWjPtDm
	 WrgdfZs53AvWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94358C982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859503358.20376.15412979508058742200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb2de8ff1c4bfc2db57589102c0af0e801081800048b4ea1ae14433a4a73d18
Date: Fri, 16 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768595033
