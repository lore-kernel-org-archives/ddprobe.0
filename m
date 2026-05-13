Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C2A3CAA50
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778715634; cv=none; b=pJuwd8GZKc+IpnzIKeEBKgN+kXA/IT9ukDG7n4TZeNMjezA5V4lirxCrCfvC7q7cuFgqtCQgLGA+nAW6lwp2s6Zoxw9Cvbc9cJKXlV/QELNNYeXHlkKpOoKUTLYz/Iy7LhQnip3QxxjpYS2tXVw+lNQ6ktjIRQT5WTViHo+BVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778715634; c=relaxed/simple;
	bh=QZ3624o8leSYFDHkek9tvyoy3hZuBJNLlzOLzneIPD4=;
	h=To:Subject:From:Message-Id:Date; b=ZlkQeCqy3BNwot+XBTVWQDDC1UmkESbWSh03MqoFWJmoVf2PmiQH6zCyk2nnFp2Rthom1xA84rFcBeP0pVCSv20KEcxbI1LNds/5nY/97fRLbPpretccjgKYajItuF64GoWnokdGDlzcO/W41SzPHFvlSYvtG1KCR/C1/gd3mQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNqMQXf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNqMQXf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A16C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778715633;
	bh=QZ3624o8leSYFDHkek9tvyoy3hZuBJNLlzOLzneIPD4=;
	h=To:Subject:From:Date:From;
	b=hNqMQXf7VRLoYx00HfIhfiUbNRLcI4k0ufMZBkMfGM/74IRedrsIZWFJtaQ/ok3X7
	 9484cbwzfndjhux3no3GF2XhoiHemtLwJ1+Pqun4VBaehrAiczewRD1QcPivnLkXP9
	 rQ3+mfUZwH8Miwz2v0mLYg8sEcwWZBb+tmcZdSNYO5uSG9eo7ibbCH5yG/AS+SAPhi
	 XCvWceszeFmEa0WKjcPZzGneGByvDakFu/yU9wIJXmnaqBKyVtgmY2WV2sEJD93EUT
	 56rzg/PoC4ryeubdHc8KZfvkUBiXWArDYXUWLxNHfamG94c/Q1kmBD4mCSKJcfhm7f
	 IAHeJc2LUs5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63E3CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871563371.32187.16479886131696163331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b3e70312f8856a3f3f859f9a209708860d221f2d1e8d124fe30e1daadfb82f
Date: Wed, 13 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778715633
