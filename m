Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6638564A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714266743; cv=none; b=XSKpUHoCL2Pp7c1xwyoWf74ngxciCfYT6TD+wsVn1JIw1jgWvDRsqX+JOjcPUSPrg/FmHDQp045XMkF/GowKdth5GTshIOvQM8KrrbY0f7AJvcH4jisWz3WHbDKiW0D3ebeTiGnu6E0j8TnA46SSFMBC2SPEeQ7NsroPVFPnSCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714266743; c=relaxed/simple;
	bh=4BUT3m48UTkrGOWoTiFTckFQhyoV1X3QrjLeH0s/7AY=;
	h=To:Subject:From:Message-Id:Date; b=IGxJLj7N1g9s4gGFNbgDq7XXqHDjx0z+Au+BzBJesmQ9tF1M2Ud0/2pWpjAWUgpWg/PSslfN7/FNPg+8q0+DGjq9AWR5sdLkfl15bIW+mV9jKjS/4GkOcZDqw1qZJF1/DEFi6O6Ov0esCKTC8uJCNgVLraRck+uOQGSoHUhWXXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8zEjuba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8zEjuba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5AEC113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714266742;
	bh=4BUT3m48UTkrGOWoTiFTckFQhyoV1X3QrjLeH0s/7AY=;
	h=To:Subject:From:Date:From;
	b=a8zEjubaXxQBJpcCCCKEhKkxLkd1kxqwxFFwhrutvz/agOko7dDhcc+Vlj/A8rBqh
	 0PqrIci1WlQE2ZHW/G0To5OJ0M3kAbd+2dPHDAfPPoQw4I+yZTXbaOhuGa0e52QZRN
	 T2gPw9ZmwTIklSQR2i8WHAeugzQmGWfHNB6er8uneCkn2dp94ff8kiX40I0wjr42n6
	 mgErQBe8Sxcy2EWDmUVm12yK1TQVvvCCi7O56pRwnRSaiaqHkhHXlK1+/0nPuxOK6S
	 XXiNlyMWHZWQnf/qAsZSHpljsykOYmhVYxro0MpwHz+HFgj+EqMzl0ESwuymkZ4GqD
	 HpNRSooDrUXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE77C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426674275.29771.13633339188528267541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf209caa0d2ddee4fc5f9870532b6bb35a22915bfc9a343913b3ed3df93637
Date: Sun, 28 Apr 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714266742
