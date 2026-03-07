Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286962288D5
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772924694; cv=none; b=WMHZe2BkxNoB+6uUYFJKU++rEf5SF83DXSG83o7UQA0JIGG01+SoJpkz93enTSZDqPebm7JmCfU/wYCXfJeMoJoLR8df29AV0oWzq+cMhijnukCCNj1BJPygMrpFz5LE2h+JJEA1fEYC9aQaOTj24LDGCBfM06LtUJ5+Jkw0U/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772924694; c=relaxed/simple;
	bh=F/ZlEjtP02LnHL1GWZ5MbrtyJlOKPI6ncHPdINId6LA=;
	h=To:Subject:From:Message-Id:Date; b=ooRUYVKF18OvDh7Zph+0oJzuteZhbvgcGwyyJ4BEIJpuwrhHFzuYPY1XPklhC+lRrE3bsU5Pbw2tadfmE2fWE5KYOOo8ojpY4XAPMd3Usry4NE4hINPpy+qdYBP/qqNhA7GxWrByXnhttbtZ0mMf9q2l4ArbvpwGnNu2irnnC1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbGfChGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbGfChGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7484C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772924693;
	bh=F/ZlEjtP02LnHL1GWZ5MbrtyJlOKPI6ncHPdINId6LA=;
	h=To:Subject:From:Date:From;
	b=GbGfChGfYIVcLBbpQLp7XPS/ivE0FxL/STHCN4XPFyuPXCoHRovEf6aE5p06AnhdT
	 NZrIIkSyr5LYI2sEw7daU4c+XmhKR7ao9DpkHuKjubRRnvcu8Hh6W0YsmVOQNm1vUb
	 Db3g9NHnIhfbuDaldKE/aUZzs6quDdM5OON+6fcfAOHUzcfBO5ZCsNSKTyoOWx/+fp
	 xvy3XxWAMqbJIRo0MMGaHadQt13ZpMXdCCE7UbOXDg7VakUq/mRJaEOV4VL4ZoVJwd
	 SAOKIXjXekptcTYPJ0mebqR4sW774asoMLNIdqBwUAXEUrDEtCjJpXALHWUr59JQB8
	 FGW8ZcZgVbPPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96112F55113
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292469358.29556.1835051623953710109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abad7f737b2e253c0b1b0daf3983f897a529c595b0f66631244226df3b6b2e02
Date: Sat, 07 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772924693
