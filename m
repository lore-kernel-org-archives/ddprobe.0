Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE28281503
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790647834; cv=none; b=LICBJmON3nRheQJ+Ps5mvVmD+cBHir/5oMEfPRGvFADoTcY1H3xpjfs1WxzFsy8ZAaij95dio9ZQSWz1Ey71GEjgEeJt5W2JjO3b4nCXPk9qKJpKuQXnt88wnEFw1qKzMasV0Zg5uKNnRym9DohFwavH8xndJamxxJybn/z9caI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790647834; c=relaxed/simple;
	bh=awR4rKhjD2szxZiows08mLA6S7kCHLbiNm8OA11Iukc=;
	h=To:Subject:From:Message-Id:Date; b=QU2hY9XbV8j5f32b/bMNfJNo8SPXVuhpRkCdOPbyVB3evkpZrjemaWw4oxRujd3X63qIWpbV/kHiHjmt8aWms9cO+z7M5sZeBulNoKzWq2/n8yDoIhf5faEncXcEmDwrhZKC49znESnIrqCZ7tnuFuuDmUzaj0i0Ik9SeO5EXmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEqcwtKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEqcwtKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDADDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790647833;
	bh=awR4rKhjD2szxZiows08mLA6S7kCHLbiNm8OA11Iukc=;
	h=To:Subject:From:Date:From;
	b=ZEqcwtKFvG0WSQk2ECsnoI9KV6+8u1r1jIoscl/nwClaGELaSkhjV2VH29Zg7v9c/
	 TQdmS+1PD53CGUJaFCBykSm7YT9pxsZIZMA6BREYdIIJpYJLvY+mZbRSN1AaX7Ekkh
	 YI8Tn6kU6TYxXCGkw266EMDuACivyWhZkRDhTCDePjfjvuykymkbyZ5DXGSUSC79NV
	 vQjpE/n/lU47AftSvGcH2AaTGtOgLr0+GjGmvGK2JRdUh6N/2UFxLw3hUtzXSVPSog
	 ClkRwBPb7b8liPM7OpGFCIQozG7BCGItGEJDmIgjI8ZY+NI+wj0gPh6YFbftEbZ48B
	 JS3DPkrE8HqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB651CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064783369.4898.13480826588131416975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d127e057b3a44ecc4a73e90929592cd4e0972505bf05dfc06fc9d97360636e30
Date: Tue, 29 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790647833
