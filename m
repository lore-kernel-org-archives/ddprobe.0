Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE1437858
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787323235; cv=none; b=C5K7g0q0Duq3YCSJa+dXbQP865SYhuUuBta3QYsaAA85JybXqDPD5yL9l8GuTLP4/655CRqLVIOXX3VBXmRp5oKE1TVR+gNW0EoTtLnAr+969P76UB5StRWpSajQCrta+/0y7UFHpPa005hpfaYg+x9XHKrVN0NoAXnQl9U3SFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787323235; c=relaxed/simple;
	bh=FFTDVmV/x9UssHA+W0pqoJ4MEOxpO+YAYhPFMCw9lh8=;
	h=To:Subject:From:Message-Id:Date; b=Med5rhs+cXZvF/J+fKmYN++Q1+4o1UBdJEYetoivclS8SEtZnmXhQyA8Y6Cdg/2y5jcTT8tVHNnKlm4GnJjUUa0Ff3iItuHTU5CqtaX8f2qd0cUX/F7Ne2oMO5BbAVjfJhQhAI9RF9lm/rFAMKAgi0Ix5m38qPwvut9eGuJ+3bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9Xz+710; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9Xz+710"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7784C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787323233;
	bh=FFTDVmV/x9UssHA+W0pqoJ4MEOxpO+YAYhPFMCw9lh8=;
	h=To:Subject:From:Date:From;
	b=d9Xz+710iz/hI8xNJsV/tWgiUsLsZ1bJNVrbJ/4aZehbS7E1B4remtqP3JBdOhc6w
	 1dML16nlS5E0yurxrQWpWFgDBi8sllfspzjTWBlkmIeFM4McTqzZBYzZEf2rZna4Ug
	 j1DvsM/7diRSiwGF47Is4aHV5eLElyyy46/i2v4x6wM+VppvKJ9Z15bwjozmdbIHpZ
	 0ICAkZOBCdH5SC8o6jKOabrJNUD3CnsGQ2yyyL+Fifsff4nN0v+ymf8R3Z2mLI5RJh
	 2zTZXLwSYyKDj5nQZTkSAbWoGQMmA0cZXLmfuKMLIhR1zdDU8qAYbbbisc1m7NtvxY
	 nFrTZHbp52aWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9A3C5DF95
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732323376.13527.7015752965977978082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a1fdec6faa665768d4589b4546b8cdfbb277afd689ffb93e53c7d78fa91424
Date: Fri, 21 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787323233
