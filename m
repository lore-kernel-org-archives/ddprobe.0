Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02AEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750477194; cv=none; b=it2qCMDKBqG/zN0jHXLttldZFmWS6Ac0gDv6GMX01n2OW7tNowQaozQvHXulZ9ivVyhRhq+HRdR/24KFZJv39+HChdFNbPoBc4W2C5pIENnkgxj49jwEMFP3XmrEicYBhPgDcPOb+9z6hTsVS+xqHsgxafIM93wK5ddf6McqUgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750477194; c=relaxed/simple;
	bh=6bq9eJprNt8J06N6jEWCWYS+C3cRb50cuowa7czaV+Q=;
	h=To:Subject:From:Message-Id:Date; b=jLhkqLsl4gB+vRvdK+Sz69ViZfJbR/nuASK7GbALxmun0w6AXXgf/mtPDIsm0DxjuyIxGbFJXjG/5GG+piYEiSdXYxJXeM2hPfTTxxD5f3g0EOZ0M705AWOlkYOnRAku/x8IQ76kfer8tisagSyuFVhp8j6RysKFeSrWi7jJJQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvt1VAA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvt1VAA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A412EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750477193;
	bh=6bq9eJprNt8J06N6jEWCWYS+C3cRb50cuowa7czaV+Q=;
	h=To:Subject:From:Date:From;
	b=tvt1VAA1UlslLkPHThTTsVFY+cYcSFkP6+Pvy2mbjhyatIBeHl1j9/me7X/466wVO
	 6866pPK1XtbQiC9P422264tzsj8umhMZWnZL34lZqnn325d5F3Tmf2xmJM9idtDkSg
	 UhN/mUgOl/M7mPMdP0wWpsrExyemHXEFo+egj1/R82EF3ey4Y3jVywWlg4mgIcx4R/
	 +YKKluLE8lIgh+iexzydojhK/C1/33jy2bezAMj4mx2UDvXWordJvVUOfIC3q5KYWb
	 eAHUO1rHDjDzGXzWUQkcrtVwFFmPof7eOhwZ+jb7Bp4OOhfK+qWeQajNSL9/gaJtD9
	 Vg84ORTdY+6VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92674C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047719357.10075.12141398827796198465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a190ca4ed19d955ac9789c248cf9a28b38f1871c5e66329055e91cc453057652
Date: Sat, 21 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750477193
