Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8C11B12F8
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725360954; cv=none; b=YQaNz935Yr2DR/c2hFCeJwEgDnrSLeZAFZxDu9NUVDvVX3KJoj/31zeAUxS4TV7YsgbIwNCDtdJyzGgkRL9IizNeWSjtxbuIB5Tpou1aBBtIPt0qWT7USH4kfk6fl1xn2zJjdjhOyB6CvTj2eZJIloy1Q7aQ99ALazyzRtgsnFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725360954; c=relaxed/simple;
	bh=HuE9+2V4wxs5qF3CK3sWgnqSVtGvJ29VnzwZ99k9UAs=;
	h=To:Subject:From:Message-Id:Date; b=Ysapp56/FPWUWn1xSNteIwZj0jLQcg88gv3s0TIZvtM369Z7+n9xlg0ILmNoDWbYR/lbdOPwhF3JkpzHOpVtvy+bhvQhhSz1xORBSiqviRfssBr8YbZiux2IHoyxmxBALMr6QVpNS2uzav722HJ93ItVz5TLmKDbfQvhGcluPek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZpo5Zzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZpo5Zzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD34C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725360953;
	bh=HuE9+2V4wxs5qF3CK3sWgnqSVtGvJ29VnzwZ99k9UAs=;
	h=To:Subject:From:Date:From;
	b=ZZpo5ZzvuXsaT6FbHgXn2RhHwjj0Y79k2AN3JbKamKa/30vKzseRajLcVMoKh5M2h
	 tLKbiY4w4f5wWeJ8VkkMpef7JsaeqALbUy/M6DF1Yx8SZ3vIWHsKSHcP4+n/BwyfC+
	 EUWo0+IVXg+nWyMxqVF5gbZZitqREWfquQBnjDrhA8u1oKrxGvx8xq7QGYBChPK5UH
	 AfMz8rzHU5YeWa/3hFvobIUuv2LEeDXWsIg8ezqIOWcC1+ZCAGhscGaAQRu5HXezDW
	 1Feb1CXzBRf7vi9vX86G2YNaEp8qCm0hkoKtS4NoTm9bvpHbTBOTGAuF35o93sgbV7
	 NFf0qzbUEaMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAC2CD3420
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172536095363.20406.12025169788965519976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f148da86f3a471ba65e86561d5cc22e2387fdbbe4f23d47c3b8874436f76d21
Date: Tue, 03 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725360953
