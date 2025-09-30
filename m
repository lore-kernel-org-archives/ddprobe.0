Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12F12F49E9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759225193; cv=none; b=tg9EWjHjVF0zyKnFvDK72nE60GKOpnGirkT6by4ZHqs0ceGND0NRguvZm1fT0IwI/yZZdkkjeiBwcxwFgPvE/K25qk2Eo5AoVNlpAbQSbt4YrkS1IuPwJq6ZFvUkiX1Otu0bErj3Z7XfwQBM0scW7L8tDZRntxwzi8szcpsSnzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759225193; c=relaxed/simple;
	bh=9T+J+/6R75eiDpTqe6Ga8dIaZ9xY8H/U14Znrh/aHFo=;
	h=To:Subject:From:Message-Id:Date; b=MVDxRECNX0rPbeWHY1J1xiS52w2goEGGLmykBczSXPEQwtpHU2en7H3TDFid83PrVXttrUECkFy/5ejFWqUqp6tANtdS6EmmTIu83uhwH/MCgW4xIXrPhBD6HsnGoiNuS4qzjJr4tNrWq46YnKsw2v6bGlHzD1jLfEq/PNwZbvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liw6Jgb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liw6Jgb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759225193;
	bh=9T+J+/6R75eiDpTqe6Ga8dIaZ9xY8H/U14Znrh/aHFo=;
	h=To:Subject:From:Date:From;
	b=liw6Jgb1AN3Wo+ghbzW+X+xUUsiZndJk8Cshj0j6Vx053QNp6srIsBG5IQPBBcCPS
	 B2PpvR1hGGXrxa00PIeXgosy5kGCB/o5gqDyk5d3JnHIxkYg5fy5vxtGaBExWpdDMJ
	 FsemlOqJ1DyKkqfS2rCO1zZiUXDWyBqi/g7u0TA+kg8N0IXBK4AyQ6tUOhYS01t5Ga
	 Qu+tKFQOv/9O5xbU7ZCe91oJfESrb8JOj4C2MZfJn4hGTQfKKuA0LpeyjRHZ5sm7vS
	 mzZ3C5FRk/miClHC+0gAUP726+w6StBualkfO6EblqmMoojlXmVo5c9RhMPmJPXH/L
	 +EwFOOVxHCLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92883CCA471
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922519358.24618.13552155501010709925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6235a4f14c813873ad1371af7d6a243f04d846a98a3268983a77b684d9c65b66
Date: Tue, 30 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759225193
