Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098F33262A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787686834; cv=none; b=H3yxYMmuiln+CN1Er4Jv0CL3ruxdoqVwibhXncE1FI8u7DRbnraUVy4Ee3uROZJPUa2JFYojLfDLiwwDv96Nppn8MtKNYaa1Q6bl3ssSMS3Yt/ujSjFnvmBsjSCNrJBMcy4xV7YXN8cWqwWhd1u13yqLOYbFipTQe8gWIxCH6yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787686834; c=relaxed/simple;
	bh=CjjnUlBSwNj06vQs4sUaN8CGcuXQo9feotlCDGTafZY=;
	h=To:Subject:From:Message-Id:Date; b=uADb5i1SiQJevo/ubCD4Wfb+xOxtA3yghUC421scKdascdJiUA43sZ2SrzlT5ArGjbQ74fENJ6LdriSz+QH7wsOhIC4jina5yfPuISU7T5k1geq+JMlC0AphZLyreWg82rXJUEvLjgcMS+N512tNxh/i/tGiwafEu2NXQNl7Dgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1W7jxhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1W7jxhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C5DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787686833;
	bh=CjjnUlBSwNj06vQs4sUaN8CGcuXQo9feotlCDGTafZY=;
	h=To:Subject:From:Date:From;
	b=c1W7jxhNjb3x/mHhd6ojM9YZOicVDf2+Z9NNGiaD1VhS8BxCK6xO06SVMLVu0BDgh
	 t9yuCnFvzUFYAM75p9uJvPxgLrzYun7Qb2H7hYynHdXUY8lzQJepb7EYPfIOxbggr/
	 JDcu0E8GvwzGPBHieWYK6TCq/Fv5NiewLhJTPqytgC0vmTf0/G8Zxyw+oe31r8IB9Z
	 9+CY6p60hgGBrOW+dR2akO0Tg8gp5RY8zWCippXygKUMpCZp0/f3UHjnrgMHF9Opmb
	 1aAsYxuZtcVrYyuxdr5FDNVr+t6UgZzLufMyE3P0UoXnDWMLlUmS3baLKPU9khA1VE
	 vTpwv3IGJkFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCF6C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768683369.17500.17848692441350745843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e5a6a7a5ef6e00bd4cff211bb44824efca91a3f979581d054b3eec6a332185
Date: Tue, 25 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787686833
