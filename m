Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D49229B16
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759906794; cv=none; b=V40INLVUx6BY2TdTHI8BW1ZHZdpsqDQUeQ4tZM3TZNbrnbEJSfZ3QaTKEQ6crVz0sp3kEN+0iNZRXWj6s/J696Mq2SWCBvhq4/hBwYkhrry/XJr/7yjelqU3IyJH9q1a2VvvvIdW9uQRGaJkZx0sPEDIp9rKpEM3S7NNZoBm1zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759906794; c=relaxed/simple;
	bh=6eTZNlglyvkwba120V819+aLW275waheq2kUHOhDXLE=;
	h=To:Subject:From:Message-Id:Date; b=NgmXEPnwEk7zhFHWukv9ptTNFHMCqz9BrV3GQJ40CBnAJ6PKbON8OSxYlb+rcTf2agvsuhmh07O6mhi/GTUASaVMAHWLzQoFJzuEh+tUC8oF9JvZtYUQJ2WjpFVUIYbq2rn01FPbRZCxA2RBgZc0eKDcl4OQu4u/jNBgOgLEmX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h74xMHhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h74xMHhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB5BC4CEFF
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759906793;
	bh=6eTZNlglyvkwba120V819+aLW275waheq2kUHOhDXLE=;
	h=To:Subject:From:Date:From;
	b=h74xMHhN7xbxbBphmTxeiDXX74vG3z0f7Q7E3QOXYJ29yK6tlEnzDCiUiXAhHpymr
	 IVJiCAB/Wbhg8JfSsTJe4nMGPBnx12GCODc94cF2GC2F59TtZTsRueVz8eg1w6EpOj
	 otvo+Q7wJxGqowg8o0HECBc9deCUU3uTYKurpkLDxvvYkvx63QAL8XSVCVP1YAhUr1
	 tRcPVcjqse+SjuurDgT3VTOS44KhI1OPg9ab88VJbE8EOH5uGJbqafOacHCsBWx+uj
	 9kGQXqS0WBrcBTMwzPvI0+UZ8cnXVj/EqsiVAtC1/tI/+ltv+mObtOqbH//XrZXLWq
	 tTXCZ6X5Pb6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990679357.7912.7461824672604072213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa24d8a5f7d241461b7617ee7ed4804cd9f591b6c1a11acc20dd22bcfd057731
Date: Wed, 08 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759906793
