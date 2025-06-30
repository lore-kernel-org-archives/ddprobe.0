Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED358479
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751245794; cv=none; b=JVSZW1vX50guTVpadmPMqhJnJGxCa3afeqaJB0YQAwNsn238CFxGHa73GOdDnl9f8gGdNKQAu4zsLJHdX7WuBLwbz2FTZNXnSZXqiKrcEOpyV1EBKuxOPtS2XfY3XPQXNKoE2FACZmLM6U0tOfmzxFozcguIkN3QRpLCnBC9oKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751245794; c=relaxed/simple;
	bh=8IrlBg/bOj6IvSlzb2/zXdiSvhRr0WPm8itkeMsGRAE=;
	h=To:Subject:From:Message-Id:Date; b=m5PPm8ne7U61nIAVwt6jGbP/AgCWCvtnE/zFkSHE/vy3p2nqTMyDDv/YeNBPjprE4JEnng53cbAgNLifNBpnJCnI9mpVejnRNbCsgNKTNDZtKfwLH46vT4wkU/RT5gt1he5TvNnez3UMne+Sd4GlBAqiH3MgrqR6viCSYRo3oJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urTtqb10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urTtqb10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C4EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751245793;
	bh=8IrlBg/bOj6IvSlzb2/zXdiSvhRr0WPm8itkeMsGRAE=;
	h=To:Subject:From:Date:From;
	b=urTtqb10I5HXiyL/iXwYbLe4J5IW7td8brYiaPWDKVbeCmVXY3goshYvc8ur0vYIj
	 MZHY+d81iVvq5O8UDa+bf5m9N3xM6W0R146w6Po8AUj6OtDMz6EjUMg5VzGqHEGYO7
	 ZH8GKysw33+GyeKQq2z2v4VWka9o/DS8EIYQdlObcsi19W2euH7WpdwimJTIn74zCN
	 zokR7SQvpV6TkY0ZhMu2Z20BNXidL359iVlR0ByikUXu5ljLoPty/qh7lWqVMV1P3F
	 oWJGXGmbanke6ajg4rq3lIAGGB1V5lHwfRNUKvGMCB06sml2nZEz/BpIssnjoU5I0M
	 boiOVLTjK3igA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A1C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124579357.5512.5920162329858146991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7561de823a7bcb41552289a505de294ed9569442fce3f39d7be7a695be50dc4
Date: Mon, 30 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751245793
