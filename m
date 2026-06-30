Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467323EAAD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782848314; cv=none; b=K5TVkOalP2eNvMZx3H2k4lWnqe2L35rpKAoMe+ECt9cD8WQN6yZQfYaSz5OFKiyVey1UFwRukIu4jZxBKk3OvzmSAMZYZDoXavGXH6HSuzNV7VzE4nbjuEevN34pZqAB/NXKjkK2FYboBxzRUS+Ssz/fzE71Dr35o1mvN00mwkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782848314; c=relaxed/simple;
	bh=W+6tVnATod4n/qfHPAgnDZBuFtQbXwiZ6NvzISH+1MU=;
	h=To:Subject:From:Message-Id:Date; b=Ci3fnaV7ZpQt5l5h5jCuuRHkH5v1a9tr7JndcUWRYQ1NpS8iXcA/1FRKqGjFmS+q/Afzp3BC5lzw/tTjQZyi3C63SU4nZO54VVUNncMO6kT7yhRryul6Ij3OFZ5ASoJJxViR926yHRj0KkYI5rQlkoG1niJG6z1VMvZr+xJ14aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtOTY2dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtOTY2dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DF7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782848313;
	bh=W+6tVnATod4n/qfHPAgnDZBuFtQbXwiZ6NvzISH+1MU=;
	h=To:Subject:From:Date:From;
	b=HtOTY2dEN8+Fhxsf0zclRMZ9/hJ4UTOTyYtBRxK1T+MrjIVdoq3opYIvHC6CbEsi7
	 V/vp8m6Y0sWemklOdmIhFZ/fuoMTA2/o1mB3cObKOSYjqCf3nMEh4/Js25qFnfKYt7
	 WxQ2BiOfqBPC0D+AmqfQ+FIbgoQenGa8AqbmgjvloVdhTkvlXJCVR8VSDKjMn6VFbZ
	 ty36gxiUrzEb6JaPOaLZJf7DcPkba2qMVSRHB6q44MpA8DZNVZVlKRKC4UP5B0kndo
	 nHTwA9WmbskJHvDqdA5y0wcIhG5upjLwDYF3tiGucU9cKKCHY362MomuCQf+Ugq8AK
	 vbzwERe16rt3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC082C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284831369.9853.10564572261151432286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df5e5fdd58e77d133517aa2f8abae50e92dc687238c7aa5f5fd13fb48d67576
Date: Tue, 30 Jun 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782848313
