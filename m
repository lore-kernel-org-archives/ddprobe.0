Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5406936EAB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789428634; cv=none; b=l+0PPIiuISgy8+e1bpFlIzYLyIVmiCogj8hL3sP+lOZ1Wjw1aWYXeioKNKqiu8e60UTTDBRkyZuQfje78+NVQfjyHwP33wej0NcmG1dydQtbDfLhgcsX58T9nCZkkG/KO5YTZUuzRJxB/omSbpG6AS8qfr9Fhpa0cktznKqQCU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789428634; c=relaxed/simple;
	bh=DOv0MCqdWOBzR5zSBLVV6V17UFi0lizRwJmT5qx+MFY=;
	h=To:Subject:From:Message-Id:Date; b=iF68YwPj59yRQuxAIO8fFiJiJ7T6zO/QmTilRzvxcZweKi8GZaSFPbgCoescJgos7/SrZYzUiFaXjPaYCcy5cRhWnsAo4BKsy5lHQkh4J0gCJhlNR1+CoQEt7uj57mTgoPh/M6joEKv4MlPp2YF+dWLCTVak5tX7vKaxH2Dfu8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6VcOf0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6VcOf0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8993C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789428633;
	bh=DOv0MCqdWOBzR5zSBLVV6V17UFi0lizRwJmT5qx+MFY=;
	h=To:Subject:From:Date:From;
	b=Q6VcOf0beqirQBbmVLe2Wt9jimWBjIij7L6Qb8JEd1mH1Rw3hqdWLJ/K+BHqq9eOS
	 YnJWjtzcbchTqsntV6P6d6fxf37hCL0ydE2DW4oGqJYAGWYPY0m+YDHQj6wD+NIWdQ
	 fBFXN59JKyRcPaVxX38yxkDxtxf1SvttFx3+dl4aQlkYmqEOEr3wxmCmabZXthnrJn
	 Gi7KcverFvGqojypDBHbVzKNWtXPuwULaxO7udzFTxnR5F3rIvuqBW5R1/1u3eeH3B
	 tnoCf97LfADhQyx2joZWALJfYHnVhV+y+r5pPLWlohMf0KRVqUlGwUBamILCKDN35m
	 YstLhj1cPmjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29D1C88E75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942863369.29724.8472552065658927440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e8ef37499bffe969670c57e76663f93935265cbc481153cf7d1cba24092dae
Date: Mon, 14 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789428633
