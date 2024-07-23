Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF0013B599
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721748954; cv=none; b=MpVKAKFg0bljfaVS3FugZtH9Flj8FM4E8lSo4Ej3VWmkuzfC3ZkdUMklS+G756o/9bd9ofM2pZ6G2cwhxVVtVYo8HtJFeSEDjD5pt08VzReF9YTmtOTeIxE7yr/XAQ0snnQy71JIvx3qqn9ONa8Fy7/ORtyqB7COkfOm4VQUE0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721748954; c=relaxed/simple;
	bh=daZsQZZZRbfrcEBiRQkBF6Dh+JFHi3XMy29EyNcFyIE=;
	h=To:Subject:From:Message-Id:Date; b=NsnNYL7i3n+fox8lDA1YGHB/CKhk/H1XMyUScja4vAUW4eKidA24LMNSHQdPcKqZdMbaEAEA0dU91e/wIgpsgvZ6/WMBjyVmE6nx44folpMd5564pjsagQSaAABZTpvkHERw7hoGYhHem9B/ABvI/Qx83b4U3Nsb5OGznFMIGBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOoCWtMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOoCWtMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AC7C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721748953;
	bh=daZsQZZZRbfrcEBiRQkBF6Dh+JFHi3XMy29EyNcFyIE=;
	h=To:Subject:From:Date:From;
	b=qOoCWtMftVtBACrlohrY36dDQoqcsmj0NWcF6f77ARJfPh2XLs8cnRz1t05U6WAIv
	 mgqZ0MW/BVGCKv2pOv1Hmtkqx8uNwHUvK4CJW7V87uaIYSvvQ+5mxhl4ETHqoJxYM4
	 kfHiab6c2UcC+mWrn+fJAxqZjZ3RI0KABO/hjHTccRidbbSblea3kqyVENdgoONnx9
	 49Msl7vuKsviSX+ekc4e5CML+7GvlUioGzzITdKYbfid4qyK24reEfzt/yqsxAKABI
	 g1K/tn76+VeKUlaodUem9JXtO/G6Sm3lVGQBaJJpU9fH24QiuCtsFkFdM2tafyUG31
	 Z5fECmdQQJG9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB8BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174895362.26163.12970963949356647230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c431702d48ffaefc56c0e784644c536a7e4cca5052aa7e53f5303435df9179ab
Date: Tue, 23 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721748953
