Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C044D2D5940
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769177633; cv=none; b=IGjQ+SMnz7+nxCQUaBtcu7pwJIDdSo1c1TPFJ+tJlLrLAbTfuLZzBbTmYzWp7L/bywh7lGK9QIueknmKubxldbWzfn4EA+bzI9wv6iaZeg2pzEW0Xp3i2Jd/5IRQOB+Lx7doKhDEvEqQrxCd/3hvyF34Cb0qgolra8DQ/jR1XZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769177633; c=relaxed/simple;
	bh=RAGG5/G/cq5PXsdbL3DR2D1iAjFier3PBBCttiGwj48=;
	h=To:Subject:From:Message-Id:Date; b=TZXPuqOL+IPXlcxX4TBQp7HzTpuWR/kIf7SsWIh2wu5xwHKEMtQxX2EBLXgbCgQlONwyb5DLcAwL71WVDSi2feaiODUy3UlZ4xR7usMhovIYwhVwm1fpPw2Zpf2seDVKsH7TGRJ5u2Aarv7Cxhfo7chPPVmWR8OR+tiFdkIRNTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+swTVUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+swTVUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A212AC19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769177633;
	bh=RAGG5/G/cq5PXsdbL3DR2D1iAjFier3PBBCttiGwj48=;
	h=To:Subject:From:Date:From;
	b=n+swTVUvBr7GFZxxXvMoR6JkN+xriPXa2HCz5VhuwyGwh9X9/mopjMCpXQjYafBp+
	 ysHl0LWF3cDI7fCFwE0Spn89KOBVvVKIFTTGPP6HeMHBk0zk+I+/6Kg05bDhFR5s1q
	 UV0gK3YPS1VHMa+eVu7QcWxDSNB1qlZAyeLmRfFuJfEzBTnA3P7JfuKhMADk7V25bf
	 6H0Dr8kOVEYafotZvOsAN8gGF1s41Eddag7+I/SQ0XHa7WTDa0kFvXyXD1XTMNyP65
	 xt0H1G6mQyca9+jRQBCsg5AWEhdtWSQncSxq50jYxtTpNFBdDf9jM3kk49V78zj3HM
	 xc9JhsQFwXyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F787D74ED9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917763358.3874.11439468361015527195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff568777f0de8ee4bb73bfc84c1683e43d8631f7b47bdadb78671b3c164a6e6
Date: Fri, 23 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769177633
