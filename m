Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2E32779D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790181034; cv=none; b=A69fG/VqpdTPIjPgX8FXJOoU+A6EzbyowbfoxS4CTN9p2/eCwTNu7tqf7FXN2SzR0PORUZdYxDOibiWcOqJs66Geh37nBUE7u5roI5XLaJ73m+G6sdS7y0vSXdPL2c1zLpxncPvLsDOVWzk1FX0+hgk7+Ok6691+/rIeo/d6LuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790181034; c=relaxed/simple;
	bh=oE6zQq6gkUUtmA5vTbvnvwLWoXHh6FsmjtaIkqsmAao=;
	h=To:Subject:From:Message-Id:Date; b=QKZAOUSEJrWv5vJH9bpoHEi6VJgoZJJu9HxRp4I5fhHeSJQPEFcKf3NKhZzzr7apkqw5OlEq/x6XAe6L9hrXZiQ7yaA2AfIMB7xQC4MNpHtW7e6awWPmVKi9273JCjqdhgYtdNZ908CqSFKdKZ6KHTfTStMppbLm9TRBEx5WCH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdZtRaXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdZtRaXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D492AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790181033;
	bh=oE6zQq6gkUUtmA5vTbvnvwLWoXHh6FsmjtaIkqsmAao=;
	h=To:Subject:From:Date:From;
	b=bdZtRaXF76YIzXz0qZwCNfBA7O3lZKxnoARs/R2qUKWKF4ZAfaab5482hwU/vblma
	 DDdD4Nr3CupI2LvCZ2X4awpdAdgEq/hxOvFk1Rp7zjKuI6nLCs1M1Uaf5sQBH1P/TT
	 KYtbnNw0gjt26uPg82WwniGCnlLcmtqiDKMzC11st51foyunpkCxxu8T7jCJjaHI7y
	 iq5DP6kFEjUEO3P7ZnjEK6QHbGDoQMcWBRgJvg50FuAcWzvwTPxiZ9nPugrm5NTjWy
	 TeHA8T1SQzBpj8+0Tcg7YQXJ6UutVF851yKLsxcwhAE+3S7dHiQhaiQEKy+yL6Z38a
	 oFMkSovaOL1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ECAC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018103371.20336.10440605241392582910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43e9fc6beb7d5a0f7da4a213da086aecca3fc0960ed4cd160589eb4f6dcf3a5
Date: Wed, 23 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790181033
