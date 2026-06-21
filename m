Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37452224FA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782084994; cv=none; b=LDbZk/x0Y7a1tw2UcP3Gg4MJGpGZVkrcrX6x6xFYJg8RI176cvSrw+77Qw19HBXuI86uj1E5Ct2xxhOjfwSsdMsfpJ8Rb0HElDk3rubto0/GytPE0M0tmX7CGJkwsKuiFQvmYQ4B24vnSI4dgUMiylxIF3DE9LhSYlhzFamxMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782084994; c=relaxed/simple;
	bh=C3SjOWcJp8QtoyHpF45USWhQY+AlYI7tTU9nKk/Vm78=;
	h=To:Subject:From:Message-Id:Date; b=RwvKuWvFBs7+CH9n3TPpxViLpslhzlII7oQTMTTNSEW1d2fcgxCE56/alEV+FYigDgerhTeBaITdkg/4Fda8+zMlrZlaBEnACcsyVbiyEyBKmknRD3f1jt6uCNAgaJJzlwqq9Oh+fBgBnqBTmZ0nAwtV/sUt9ct8FvqnryiK7Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg8Rd6mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg8Rd6mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD081C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782084993;
	bh=C3SjOWcJp8QtoyHpF45USWhQY+AlYI7tTU9nKk/Vm78=;
	h=To:Subject:From:Date:From;
	b=Cg8Rd6mj7b1AOBN7EKJByyXhmXSeEmbJZ+WYDmzVrXg7oDH6VFqTvuk9FVMVCKL/X
	 L0fOkdHwLRp4x/Xl4MFkzrwASD/xgemGrwvQQFjhXc0YqL8tw5tSHVROINT2CdJkrb
	 haoEaYDS9dafy/q7BDyX7oshqeA2WxceiGu5gI5OlXZGKzxRdi7M780802AhPKa31/
	 GkaccMiCX74YppT3dGY8kmWyp6/B+XD+QDlXqH0XEerU6GagrCPnjnzwJRj9iDmM1Q
	 8KsF2FBGAgwWYQits+/q3bFNCJQ6NOBUFUpOaKWeURrN9q0B44sHZCWif4zNCZyWni
	 Vn82MNGOfIi2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B059FCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208499371.14787.11358897593180261624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e85625bdc13a464b6be86d3427250011166ec841a662612be4d3d845c1defa1
Date: Sun, 21 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782084993
