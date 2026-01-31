Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20423366053
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769890434; cv=none; b=TworWBkHrmKOtDwn3Htf0lbTsZO313fTiwiARpPl9XkaFbcZJrC99QcSyfDn8wsGbv8W/VAx5As/NDBo5PTtuvMCN97lnsYRWSqcUljQFej1d67hzxiPeqkVJUb8FVEsnTQY2KsDoGiEI3h/T93ltY2WT1sBEIo7rBsc/Slq+tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769890434; c=relaxed/simple;
	bh=PGXDLpkfUVe2EZqmjQJ3ZcIbqWivBDqwsTNrKc1IKUg=;
	h=To:Subject:From:Message-Id:Date; b=tDe1yHNaWV/IyyXzjGmux35Uqo2lC45KkOTOW4XZdM0LQZwuTBbVPlIbZMgOaGy3EqyWSSJ9P6XcmLZK7+APihY7WO6qEff+lUJhvWP2u/ggiafCXeuThqLbAiVQeSSdrQE1ywkc873LRCpGKQK6AWIqGViDCbDppgI5NJftRtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZb/8mxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZb/8mxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2188C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769890433;
	bh=PGXDLpkfUVe2EZqmjQJ3ZcIbqWivBDqwsTNrKc1IKUg=;
	h=To:Subject:From:Date:From;
	b=LZb/8mxg3v35uUg1ijeIB3mIAOBBU7hF4j6I7l0ksX+BFoqcHJtbzSpg7aBBne8J1
	 uonTRLhYkNYIxRANJ6rdm5PBAmvp209YtBBq5A5NhcxBvRz9AlEkfm/ulTO8pB4RTM
	 CNru9hx5PzKKl7xuH9Aj2+7007PuLkf8MBj42YLxUKZthdzwe5Z04obV8FXzCI75Sn
	 F0U1ZTViUmM3etEjQozqcG7PTVOQZuTyIiY2BmEWaBtwEKbLGOHW6udM68sD0h65jX
	 LZhV3qifjP7JH5Dbl4jDDfOvDk5/CxIorJ+yThuGR7X+dgH3CKbh8xGb7o9kxBGLtw
	 lOkNGU40ZDkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B92E7C6E5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989043358.16203.18343555219915586971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c1bf94baa9c71148119cfbdb8e1f6fa3ea2c4eac149034474831fe51d84892
Date: Sat, 31 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769890433
