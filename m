Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBB32628C
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744513794; cv=none; b=fS0tjYDbX/9VtEKZq5JYlFQ6zGTP7X2Rwmf/OPtXK/w/SIl5rAicFUuGTSEsSMWpvMtw1xX3yJyOpyYuZmPRCir7wb5lQ5CUNMH0hpEhDjl2GVvIQrcVvWrGmoTzXOW3YRqLJyRNFWzvZRE3dDu6dE2MHJ01fdzMIjItF30A9GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744513794; c=relaxed/simple;
	bh=vPg/6Vt6UgVKIT7iSn/DEoIUWFPSbbkuWTV0YhOt0Uk=;
	h=To:Subject:From:Message-Id:Date; b=MO2lZiIuaSdNbGzK5GIUUPRgwcnUPumHI0FJkJu+ZrLgG3TQP4DGBi6A4a5CP20VJpRiU4z7H5vk4mQXiJSlgsg33k0a1YxW8EmR0tfbESmOGJ9Ht64ycU8j48sPR1zJe3+KZD6aYkxfzGYrATDLDiGtwl47BBHs3qlP6p3RfIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tza0zPFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tza0zPFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E00C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744513793;
	bh=vPg/6Vt6UgVKIT7iSn/DEoIUWFPSbbkuWTV0YhOt0Uk=;
	h=To:Subject:From:Date:From;
	b=Tza0zPFc050RCCdjdAuqsK3+duEgpx3hHsap/htJhVl9PnULUr8rvdNYUYN4MM33c
	 ZxH+2WECsQEMXreVGN3aOiXRH9N18rAaKZZ/aTjxXvIVybZ1/sdMhXsN6Zq99NZm31
	 /Kz99DzLkSmmTwj9CHYRzgfmSuvvoEIHzkuYG9OHo7aHWse9Wv592SUEObb1SVveSR
	 aKrqxob+Ko5XG+NnNeleo/FJDdYjGVENWVfTLZmWcBEp+/p3tFRC1xy3CwRxwq6XE3
	 l7VPs0pAurLOYrAqayfCDr0dRv6x43g8JzjLArb5PLRdmXMU9cUw8xG2Pk9eE+t4bG
	 Ep4tXmpnC5GMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DAC369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451379358.8477.3636223005810149655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168dc1ac924b874aa322c5ec78fe37905ab44b336ba9786ad0714401c6658541
Date: Sun, 13 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744513793
