Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2C635CBD0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763657514; cv=none; b=a99mepn+mOeyjsOoArwsPrJfJ5X7mLAnx1VCBKI8PPszjairXaPiL5/1+FzjZfF6qD5NIbh0d4wwq19HAuVFrSnZnbkdrLWnnEjmWFv2Q3N5m2vasVUmK1pn99TwWefZ7r+nYBB+Y7nS4aRQzuSQh28wrN56JgGwqg2pKfGXrK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763657514; c=relaxed/simple;
	bh=74Ei75JSlkPV/XDPdJDgUzFjhPfUoEolTeOXkhT1LgQ=;
	h=To:Subject:From:Message-Id:Date; b=iLDG9QIKTU+qrRJtzQ5GAwvD6qBXU1pNewLPwPHjT9q6XXCiyCELilbyFrTyBIyB68R2ZcMjXqN7Vq0mayN0AeHQxf8t+4a2HXXn13xPuGze1D+h7j8j/isDJWkfIclBEANQHq67oI+gB2nZtJpTvEihce0PwXvet2qCG0ZZ/zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/1Q5CKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/1Q5CKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17A7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763657513;
	bh=74Ei75JSlkPV/XDPdJDgUzFjhPfUoEolTeOXkhT1LgQ=;
	h=To:Subject:From:Date:From;
	b=m/1Q5CKxI89VTGMfv0/krKprCurPEnePiD3WqzWmnFw6GcitEsl9J3LsXWqloIeKq
	 lpUo842t0E4Z2ocb4v/rNNeFW4wOfsGRYSrPzeERG0Yt4GVU0FPB+rlBETwLC42vUu
	 S+BzvyrMJqcwf8bnyuWashoQdmZf0ls7cvDCh/QPKGnV6h613Nw1uKKO10zZN6yRVi
	 RPYec2ar8+cVZunwWsprkfpL5GSNcesArHD5O8dzVxErO3ER/ZYcdoCdrOTY85nmDP
	 9WhkJWyYKooYJR7mufKjZxfQzMhy/ddBSxpMFw9XNQm1wkNy9fGgR3QUqwrBAmTiS6
	 k0+EBSOtmdjnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949EACF9C4B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365751359.32116.2195036805328725204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad95d2cc29f3043f3cbe7f062981a972e0f734662cd6ba9a21b51ea81773e16
Date: Thu, 20 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763657513
