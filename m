Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC79F4756CC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790872834; cv=none; b=Dss+8Hzmm7l+Eqeg2B6NcpsoglASiZyZMxWtOQYbZ5/S9mLEomaxGbKdlvC+3mLF9euuEj1gW0dfLu9Gr2TjDNvcA4PXJrNod31HrIUIiBruYN/tkla3JqsALcl3I3RDmHzKVJgpkWsu8PLoLaXDwGwJvGynRhdzv76szFdOVkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790872834; c=relaxed/simple;
	bh=/68cgUagJmgtkDLK+SDDFvE07NRG1JB2C5coOnTFk0U=;
	h=To:Subject:From:Message-Id:Date; b=BRQ/lmyob2DDzLv6GJkf7J3VE38LCM4CtCCoBMovDU/nv6Pi7CCzVbnm3gertIp97ceNrSB+gmE8VaqVkArJnMejQB0hNttrSCmcChcM7hQKvs4w1WmppIpRYQaw87HRbY9ZE6PZS7dxiQ9Y6L0PtknR0JywLy+ajdHHChyItDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKBwaD7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKBwaD7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCE0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790872833;
	bh=/68cgUagJmgtkDLK+SDDFvE07NRG1JB2C5coOnTFk0U=;
	h=To:Subject:From:Date:From;
	b=oKBwaD7zj3E4hPa7JWMJDSjl4WtwIDVsU88XBhA0UfqCAWE+CvYRymLrxqbwjZouz
	 MM642cgyyPQEg7RJDGMhzRYlSINLfcpUWLGdnVJyokCzC5pnwBJ5Cen29gijfBCmRB
	 /4aErhzlVnmndj7R7KWd6wzzDF2dsyvdIYXf/q4AF5EIxTXK6ySTkzYxIZ/IFQgSwE
	 d+OMYFDO6xALTJIL/UeQ/GBVaP1rNUK16HVoG4BEKlbCVKs7GXeZ2sI9qqDeF69yaE
	 EK28Gtpxsmj7CUKFkCIPUJTLCeAnDCpQ+M99YCIu/R5u1n5n6Bvlwni4mMxMVCC8fH
	 2Ch2LcVOgYT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB46CCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087283369.26600.11284374160606381223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b861de6b1ed2f630bcb0c4c07536ba28e065e489c9f7f39d168c7f2960107350
Date: Thu, 01 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790872833
