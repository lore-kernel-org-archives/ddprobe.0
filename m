Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380F2E06EF
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779937354; cv=none; b=YIod7IF/LtdHw2AjogG0fJrRo0+3kOOBpanvAeALypn9PeEC2Tb8THPLC6yqntZvJC1pctXFuf91/maDD26Z5tIs6nrWAxu6EBAR1wQmUU+R5OJcDD5WIiVLj8FTQDjr436mpIdRLwM1bjSLbpjaQ4YmOZdgab5J9vzWS/xHGbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779937354; c=relaxed/simple;
	bh=SSrTyV+dG8DnU9GRJTbAyQvswOPjkH666DlCvqHN5wg=;
	h=To:Subject:From:Message-Id:Date; b=gBheY4G/tWv2xp6LWbPLkWnhvNf2PTNBUShRzs+CFFYIg12/f5xjjFgkUL6RYILw7g9X3/ia3Jz+iWAN54mqgKX3miD5UqTMXqaQnC2+XNK6N2ZkhZWXyTFdXwk7sp4KbOlDqk1Agt2VADNH1+8Wn/zz1aa943bbocH0AsDl98c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHTdsxn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHTdsxn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77E6C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779937353;
	bh=SSrTyV+dG8DnU9GRJTbAyQvswOPjkH666DlCvqHN5wg=;
	h=To:Subject:From:Date:From;
	b=uHTdsxn6aBC1+iwCaalO7h5IfEBOJxAxQGBADF3ya1uA8fwgR3lTU8Hnyzca3ReFm
	 InptPI9HJBJkAirgOUeb+8MGYEKzzqWRHQO8i5Mj7S21AOdksEEp/yG7tpEtM629Hn
	 w4UD8Oh8/rATQ3JgJoicPpw08ldOVT2sswf+bVD1jYXtXvGDQNq1bW/Cgx/r7IVgDg
	 E8VOyIeTV5j00v7mCWeQQBBacn6BSpmDEGGdu/OczdGIKrR4HIRxxjlpxwfV/fLZBQ
	 fqlY0Fmo2D2uqc8dkoG9d/KXWARfe0AE65MaJ7ab5di/QepbQGAvhrf0Ye5qcCG8Pl
	 Hrc5zU+cQLrGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2EECD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993735369.3809.416197390063047371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0015cfdcb63cf9d24b2ca5bf5ea56d9480faf92ef35e06f66257f7270529f0
Date: Thu, 28 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779937353
