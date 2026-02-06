Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AC2FF643
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770412434; cv=none; b=e+dsSftZ7XGqqIZYBKnozFw+wAD/dpay0J+ilq4dpPtFO5gRjDTuXspT+jRD1js95L2NR9CUefsCH64Fw5qX57uQXgAJ60znBNDOpRmW8Y2x5jCxcJkAXTpVfTBIReOei+yXS2374LFRgLm1mcc81gbLdnyiro1PlWoft590oHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770412434; c=relaxed/simple;
	bh=BBvDtRSrg1RA8kS2famwk6OTKd/jd/BzjhH2JayAo64=;
	h=To:Subject:From:Message-Id:Date; b=PJ8ODE0JNGB+UHIucuCSU/+8+E5sxYtItkjAtGjm3K2sbzXqumqndO4UQODe7TNe/WF1JnJRd/CuHYM5M94Xw4tqv/dYn6bGyLe1Y67j7fl45QnKbr8JJNsEKn6HnfsqCzHn7UIxrIrQLArY7jad4kzW8uPoN0/37blkGiOYRaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeBIHC5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeBIHC5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA2BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770412433;
	bh=BBvDtRSrg1RA8kS2famwk6OTKd/jd/BzjhH2JayAo64=;
	h=To:Subject:From:Date:From;
	b=FeBIHC5iUYqtbR1UJUFzFEoaqSsNRjt/Tqa+ybrfKVvhxDfwNdFDaq8j8iE2aodVU
	 d2wglK5pbb8nJMGAV0hGez3anhaUAoTxeK4oNBCgcQ2rSLYw9ttDJP137iKovB2U0M
	 YS9pFk1Pg4ro4qDoEFtiwUpob2bwgohN+FzuCG0kzCrzNAfk2HAGNsKi65BnpA0q28
	 iDtwJnSnht5x5LucK/3B98JAo+NsgaZqFjopCxzYvhxpEaNZfWV2/WCXy4pyGK3Vw0
	 O7D9+R8mSKp7UeNp/3Zb5/bGvHmxGC43Hlo8hxl9pVdibozlzF526znTdHrAiCdCin
	 OvK1ooqqK1qpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E5FEE6B60
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041243359.6717.16939683993049958008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6d896dc5c50075a9a7db945bbb0ee35e821f34402dfa709aaee4d056cbddcb
Date: Fri, 06 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770412433
