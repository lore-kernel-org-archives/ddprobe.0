Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AD323ABBF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789533634; cv=none; b=AoSUy/SEX234VR1pkxQ7GEmk2GHKj43p+eSIdIbkYRUibpXdMo/S90n/wfh49lD6k18lfqoeTTWq0pn1zMljXAv44Jlz3gahq4zqspcCleMueyBhmJHWYHbps7SBfN9ixj/ybmEqalT+vHtYnmFBLludB5bvES1L2vBHTeIGsqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789533634; c=relaxed/simple;
	bh=xE0OFoTHlglBgqCW/G14vj6ARGSajDDbq78t+dm3m7g=;
	h=To:Subject:From:Message-Id:Date; b=fuRsF5JBjitLgJ8F/DFPrQ9bXPVOZrViuJDqIGnAbdBnclpdzVYOv+R0G8k74Gqw+aUmkYWmxw11OvfZxcBPWmu46wyeCmqmcxb5tALrlkPWfveOqw8nvl5f90C1wFppISo2kN/b4GQ0OCjV6ijuEJrIduOZgOkcM1GC+qq4A+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8oS1amM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8oS1amM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB07CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789533633;
	bh=xE0OFoTHlglBgqCW/G14vj6ARGSajDDbq78t+dm3m7g=;
	h=To:Subject:From:Date:From;
	b=R8oS1amMxO+ncZbUPcfcfEHBnfD281IpamWsaxXUX/a9gzLDd+xGKfsB5eVdgjadq
	 BW+w3t0mVOSlBuNzcxxjN6zcgBRLgJ/l/7SC4n47kEBsRh8xK0nASuDgj/Xk1MGH/F
	 RBZLZppidkSQRyDAuQ9o7SQeo3kZ73W8aSRGQ4NWiI/fXI63JEAW/ayfInKIxUC/Dn
	 69dhrbQPvCL/Pdpqw7SoVr8ZaOeoQx94y7WWciXcQPx0W5kHWP5g/lmAOTS8hlBGfw
	 ptuDP9Ljghwk0FttrBJ048uH9fETHRHPWropJZ9FC+tPSE4/mwceb0beKfBUn/hWXS
	 E9Z9Ga8SbM67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF9C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953363369.28782.10583842596604275914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ea08f0a4e14d5b3b9202e23435ce1114ef5c7928e926888e71a23a9207eff8
Date: Wed, 16 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789533633
