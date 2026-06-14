Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4C563B9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781405194; cv=none; b=EmFpjJe7CAoiwS+kPUIQYSevt6DPAN3YKBjIribtlD3CjZbh2Pcei3qKH0YPcgKEx22VUjzs26PHalIP1dpH7YNs8/S6rPuNpcLhjXY+qbXxlp9MhkbHjNeSpGMpG0ER/csiFLiDT6wHwIR5ajcmKMChBdPLsNQL+GBSrsxfXKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781405194; c=relaxed/simple;
	bh=WZPXQVJll5YMtBkcXRAluTW6zUpT15/XPvQJCtTf8K4=;
	h=To:Subject:From:Message-Id:Date; b=IkMTEGcsrRoIFvLmtIB2u/Z9GJV4v0EjhPF1pjI6s/pWGVgLwpfaF3CPDo6RZRUcmSBUHwmv5v/Jtk277DHnld59Z2eQXJkAP8CqVylpM1MeBfDA8wNd4R0/h5ys2++MoVUrYR7pheJ5w4IhlntoUSYdzze5ZBPXhlsMpo+YeuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fov+GBA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fov+GBA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD784C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781405193;
	bh=WZPXQVJll5YMtBkcXRAluTW6zUpT15/XPvQJCtTf8K4=;
	h=To:Subject:From:Date:From;
	b=Fov+GBA1HJ7zq0IXyH7JXBYurfjD0EHyJmZ5x5f20bFgSPxkZxQZM5YP+d4cxt2Pl
	 hfqrjHD9rEdN/nEqbaL44x3+zKJ+Xd5wpFV3WLm8VPuhSLJqj/t0gAK76b8XZFf9A3
	 90+t8DM/Ytb4uNf/R8LNua+Ed0IQWMEFCgelleoycciR5ukDq9UBwzrCbrVUcUmIVg
	 Q6o5PchLXeaWTxCLnCU3Ne4zIZlZviPgdb3Rt+sUAnI5cXdyS131e4EeH8G/DXTg4U
	 zwDnJNF4J2BIVg6gbF1yqpGjWx3LlOikVaXVKoUU/QN0YRSknCtp9KeSmBVEtI4Qgb
	 Nu5K2vOWS9ArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43ACD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140519367.15266.4439978852310040329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3107867506f69fd04c39bc855daea0f0717a6db12442dd7e43066b6e0f8d4bab
Date: Sun, 14 Jun 2026 02:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781405193
