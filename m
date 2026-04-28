Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C4E29B79B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777363053; cv=none; b=moDuJqV4QzVVj+X29fiuqpocl9oWhQxVK14/HFBUkeHc2p8z4ATp0yBrOJABUCI3xXcwMZfSf9GJTPnzdXN3e5ND4NNZZnXeNmYetlWmsr+US07AYXF+8YLIeQ4ZOILCaQx7WSAuzmLds2cGYBW3KVfWUqwxOBIXUlR3bHC/PBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777363053; c=relaxed/simple;
	bh=cCSGvd7+UpqzTa+4zCOsfGpzD43bqVg26f36MmFsOSY=;
	h=To:Subject:From:Message-Id:Date; b=XWX+1ajrSPAxAHYfn/0qlDPjQgNTaaOWYaT1UfGkJ8xgac7XWkKCih+BZ7gL3Y15QUGbJR5zH4HR2ZKM91oIaOwdRJJYrd78o1KvgBN/LbxWucfUhsPFY4nU7LnoMU7XVT9DYrHFVmmOehbyC4rvIUQfAk5vn6PFlP7ML5No1Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmJ7lCuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmJ7lCuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8292C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777363053;
	bh=cCSGvd7+UpqzTa+4zCOsfGpzD43bqVg26f36MmFsOSY=;
	h=To:Subject:From:Date:From;
	b=bmJ7lCuFCwp1Qxxs6IRiSPYB3MJMdcgKg6D7qX3aT/pW4XmtqwSwxIGtKuiQM6LLm
	 SnM76sIdNNtcqau1sRBBtgKoMaARsltNWWXt4u37wa2EqQmLvt+4wsQNXnaQHDFC4i
	 aHcsUW11uRsXKFikrywZJVJFFC5BinLaqhfzjepSwFV6Buh9hNXD9DwwHsKOph8lPq
	 wf0uWR8CVBVtXfox7dLlqFOp6qOE+ELqxfHeJSt/bEXobyFWHErt/7XNzx3iZ2YC/H
	 oHmyUhLe5GiM4FsGINsBnfiS8ukvJZz1csO6R0SlSI4pGK+l0XjJvfdZOYoVPkn+me
	 6VDzKFc6dq1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9149FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736305368.32369.10133555760053618121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad4a4abada3e34e96fb305addf030609219d7435a5c3b237220805d93771094
Date: Tue, 28 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777363053
