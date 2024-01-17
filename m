Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0414367C7E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705462097; cv=none; b=Z4HKczAFKM8C+pt07VchVLt2TUC5Qh6lbSIcMPc6lwg8G71NgaUud/PqDxNKd3O0DEAAFbiWmUKUnUyNd1Ta7Y8L+2Yz9VX7wh6w2+soEhlbQQDkQ4ewxE31RWsBLqlL6C5waMscorhLaZeH87344xAQz3zVM0hFpbVjDIZLkKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705462097; c=relaxed/simple;
	bh=qA3DRl8FnN8Nz3Qy5epfH09YvFB/9GeKbPPZigqeoq4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=XhZsk1jHQAEuKKwd3zaHiY79dTbXid4fWUYeFu0QidzNQ31cKZqAojoP30PEd2n6d0lHNtTZX91Y7eIVAhyunyvQYoCL4RUNDT3Y82b99EtnjRE7NN8DuSy2gJ3m5zjGSD9/F4bfn9lZqwk6diAyum/2UhYVsV4FIRuFNe2K1dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HntlQWn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HntlQWn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7BFC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705462096;
	bh=qA3DRl8FnN8Nz3Qy5epfH09YvFB/9GeKbPPZigqeoq4=;
	h=To:Subject:From:Date:From;
	b=HntlQWn5H/69RyT5EbTJ0rxEde/TXwPKBtepBhjoQ57vjCy1O5Hxw7LiyitePbMBa
	 4rM4AOzuwLhMFzX1qgI0H7vcucL84hQJwyeD6krp/oQxLzGa33iER8d3QfjcjPUnVN
	 vGc9QQDSbywKzLpuH2sVeMAmtIDrxEL74sDp+0MjObRGHv9pxjZzBZtqguXooHE/t2
	 wJtUN9JWmV2mhefUnN9oZLRoqjEq9C1+iLsbNJoiGowediNnIVnfet9oUgccA6N49W
	 bdzUpW++EIFPhsU8kqprNlZfXBNS82FYLSuhbcKm/eN550Qf7me7KQl6eqGLw/bRku
	 9ipb+/pvyWYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A05C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546209638.28601.10405344805940591957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356d50b5ee8ce851f2b4643efb22f960c8bed739b1eecd0ed7c42c197cb96aa1
Date: Wed, 17 Jan 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705462096
