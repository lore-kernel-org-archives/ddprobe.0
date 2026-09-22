Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40272345CCE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790096434; cv=none; b=ZjX0dwGFZ7z2mU/GmLglafjqyqDm5oTnZr2CPKQxWmBbKiC+Jw4lhaWYxpeI0JOov7Xw8W3b8L7pJidqgqVx+2fPxySNgPHz204PQ6IZ3az+k+5Ce93W9MeE4KEUNIpgUEqeqYlzImo8TYiiEw+tp961J3cYl09fIst8Cjexg1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790096434; c=relaxed/simple;
	bh=fkPFiEIAzqAXiqRdEQ/xmOm4FY/QRG6KVp9t50LmkXA=;
	h=To:Subject:From:Message-Id:Date; b=rMhNHlDshlpIcie61AWewgSOl52o5UIs05aqpknByJEHH5FruyjIR8IZ5lFAGz7BGR0aLJKBLPM9JYGamJ+VWWxrJwdomk2BRJ6xlHoPc7Z/hFuKVe43GLfQ5SkB7FFwzZWIgDPLyRGDcplt9G1URSYhM2v6THMr2f5N0eo9HeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiFkRmDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiFkRmDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF0EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790096433;
	bh=fkPFiEIAzqAXiqRdEQ/xmOm4FY/QRG6KVp9t50LmkXA=;
	h=To:Subject:From:Date:From;
	b=iiFkRmDup1yd2zWUUxZN0knqKUJCmQepCJpD2GiEr+rp4YFRJRFp4ExtIVdWxuVmb
	 G+xtxKQsD+VGiJ4jDcHeoOZz+GrwtDVbmI8uHAIumBT4R8AO5Weu0x8v8qaA0076vv
	 NJUlxD0+/1A3PvW3wpM8NUZrSqWP1iJw79afOwNC82QdjiS1h/QM0WQAfGdo2xDFP3
	 J5nSGf4/gS8A5HI0e2p+evjlkjxkQ/SLgRda0N2/EjHh+8Gx2fLxRDL631U8WmSs5h
	 nY30XGtc1UFE0pmxV3cImmABs2phcj5Wbp50y6o+NDE+MtI+CVxX33xFnT+2LK7F9M
	 b/QxOOxcGukXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ADEC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009643372.18843.14118712654265565329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c4d06b36994bc6d9e29c74f7e2638b9440adf913da0c1a290d7c9236460222
Date: Tue, 22 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790096433
