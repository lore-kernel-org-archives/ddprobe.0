Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A22F7F07
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787541634; cv=none; b=E9uBYLuLlWOUVaD3hYuDdkmwEYdYX3gdnaJAWtQF4QWPyWHgtTnkHnq2i/4JafbxY2I0Tjti+naIV3F1zA4nlTovzLHyyE7wEVxxQPaagBWrxXQFAGMrZFjhLtBmG2p/kqBpqjFfFhHhkvtVIglAP+4hNKhVFwUY4eWgPrhjuEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787541634; c=relaxed/simple;
	bh=MhpvvsBMH27vWXx34eBJoho4fhDjUkj2CyplaVisqsk=;
	h=To:Subject:From:Message-Id:Date; b=gA5Oc6Fe99o6MtcAC/zyve1xXN9kGUh6ldIjUaI4chtgwbMa60EhqvgU0G0aSGxsLXuqaZDBbOwk7SfRkpye903KqRDJwR/bBPk+kGj+mxybJE2SpGyoEIRIcGMMMX42q07DTOGa/a+teY1MujNHWJOKxIUAsZtL22omvouhS8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tia0U+Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tia0U+Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09B7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787541633;
	bh=MhpvvsBMH27vWXx34eBJoho4fhDjUkj2CyplaVisqsk=;
	h=To:Subject:From:Date:From;
	b=tia0U+Q+ZnBLxR6O1+Ad4clTmiNsXkdhKA0r1uv9V7bAZW0EvlXIdqcAQZdonPDX+
	 dvNRF+1jTTLGNwDOvN5+JHea8QoASlXjiJCdujl9zrT8yhLLWOMvQmhE2Kd5/I+iKm
	 ldX+5cF6QYEYtAl/E03JMx8RCg59XrN8gzIcRCJqYRtfD8D2g6wJM3Sq7U6/Wt9R6D
	 TvKIi9+qC92gl75U3FrhbJVuialc/gph6SVDr0EuFtLkIITlx0UVr1uRITL7NTAD/X
	 rgVjrHjYEQ1Q7SGMhvhqo674ij0lV3wz1HcX85p/XeqXVF6P+O4wFb2fDryA98VrP7
	 2+y9cvvV3o5Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0EC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754163369.16827.6258102979149507482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51200155a879053fb5e22358d31f20ca8a3354d400e1aacc34509a7e215bbd22
Date: Mon, 24 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787541633
