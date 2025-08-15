Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203D92264AA
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268194; cv=none; b=fTFThCXlb8tIb+dq5zehdnimYd5ZZpb7Yk1/1lgkKmAyGUMjSArGpuEkkPypLPhyUi0Lc7IeNot2q7VniWfb092wvZSi3CS/XXfGTy4DMhNO4QCVJH/6+m3KIESMfnYeZEbZ2kP1F5vfC7IBmI4MDcAeaG1GkuSTF+aX7h0y1e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268194; c=relaxed/simple;
	bh=L+WDi7ToV5ZggsueM343+8Lie56JJwImtl+LXrwoo0c=;
	h=To:Subject:From:Message-Id:Date; b=cziOVfKzSJQXydYZDwQA9epwEs9iOblSKB5YHRrS/tqCRUjiw0MUkDe8f/lLckB+MfEBXorjV7EfUr041N1LkeDVZ329L+uYIISuaje5i1DQNboLRHjZkfuc0SUbpyRIBVYATKrbTeO2VS3REJhGjUuqfXA1mh1V0TkY+YEKGFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPsZzW+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPsZzW+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755268193;
	bh=L+WDi7ToV5ZggsueM343+8Lie56JJwImtl+LXrwoo0c=;
	h=To:Subject:From:Date:From;
	b=hPsZzW+J2jObLDsa+6tIBkla3QebJkqlqMFNtrTk0TvIckMyKGrXeAYhlXbKOO/9U
	 pDd3bvDvaOeDl9qd98oSDZ7OrGGL2R2/ltTLUhQmseNHfq87USK/ZcNAOr9Bw5JME4
	 nH+FzYlRV6nrt57W8/gCHhxSBM+6IZyriRMT7zIaGH492i9/lAwE7dguE4vQLMJGM1
	 aVvIQoyC98UAXZ5DS1lkrNE0v/ae7pmvzGs6FMe+7j9+1So0+JeU6jlhUOMMstwv4V
	 YJd+Xte046eF+i+tv5cHALKJRggXsdA+5osFsYsSg5auwAEbvI3sYOTBBaoL8GZfY6
	 Qe2mlSfTSqlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB2CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526819358.9938.16994150309161480505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b97ecb9327b68a96890a12f57753dbe8b6797f6f0b0d6f2237dcbe9c1df5f3
Date: Fri, 15 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755268193
