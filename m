Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E0717BA0
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714678943; cv=none; b=KIHrC99WH9vGeiFiC/XOF3IwgMQppx8meNWqgV36W8jfpGt6RMed8fIqVhuYW/r9HYmaJ8//irL2ATw49iF08beUxN3sXIHiBCT+29WjVI+SZJajuTmFfHkYq+Lihlp0UQ70Ir1iwPDzs4ETDyI88zA/f09zWb9UG9ak1GLLnLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714678943; c=relaxed/simple;
	bh=tjweMkQ3OPLZEL2WvbjS9sblpuhy97NfcwslclmPoug=;
	h=To:Subject:From:Message-Id:Date; b=eZvwNwxZgC+61nzkaRD4Y0Bos+pFjuWRewGCdXW+nN9x1GBk+Q7ZRcOEowZYftJ/tgTtxBEbBuhK0dfJL22YukbIehlwrLd2PpFLxX2iPSUIYBUApvCWmIpoHIUphZJoOFtjIGo4dMNylG3fQKyRlLymew8m3aToHaeHNUU+tVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7ZmGrSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7ZmGrSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD8CC4AF14
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714678942;
	bh=tjweMkQ3OPLZEL2WvbjS9sblpuhy97NfcwslclmPoug=;
	h=To:Subject:From:Date:From;
	b=s7ZmGrSWSinIj9yWejwl2HoPYR034845CdNZy+WJKoVzqYesiCM8NHar2yN/hJEbC
	 wDUeKCQuZAvp8HcjLotYNP7Qe6MVRn6f//F3ekDi4ThXclna1rJP0q7N3ei/203gWN
	 OVj6fXueAOP600J6Hr3HmOGNcqouoHhTletCQYHjvc3J30RJeAPsX9kikQwvvUktnI
	 6lImNXRy+DHIfRLtQk4p/EUtdI47kiuIhLqCDnf0lrpTU/m1B+GDapFoiaXzs7Lfu4
	 8p2Ege3KGlzooF5rEdDI9jM0xs48uUl+wm5krnU4eAA2IsyZDLy01T8MtOhHTtjeKy
	 Fk+vKpplZPClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C336EC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467894277.3751.3481257163667133468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fd89c0e3a67ab5d0e60c2a5619769aff47faa1f789ed60096e329b1e2b60aa
Date: Thu, 02 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714678942
