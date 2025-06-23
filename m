Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C4021C9F5
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750682394; cv=none; b=dmdMJN4ksYm4Hv8GnywvWbylcWRpBmgdvHvV3rqC3bOX+e8lwmhvMhdXA2RDDsC2iG3XJwBu+n9hLgMeA/QSAKP/47Mara/R6YdOn4mQO/eNFBHotfPmDCsOnilE/sZrP3jn9g7BdjTlGdIhj8u51p/P9bhEAgHTINjX0CtnMbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750682394; c=relaxed/simple;
	bh=wtCHJJbGOfDewr9+KgQFtr+fpyV3Afd8W0j35R5ChPc=;
	h=To:Subject:From:Message-Id:Date; b=Iv99HbsDqX0KC9Ytsnf2b9e8FQkngRLlJc/zvalmN5G9dSfr56Smngbjuqg80Nq2SMzrsiUo7g1LOOMt3kqAcPa+mCQ6YaensR7cQdMnY+clEyqlF1dkeyFez65+XfSze4aNZrZ0CLKUVuDpKEHgWIij+45SBk/q79SrYKLFHzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHVEoJ0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHVEoJ0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0093C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750682393;
	bh=wtCHJJbGOfDewr9+KgQFtr+fpyV3Afd8W0j35R5ChPc=;
	h=To:Subject:From:Date:From;
	b=ZHVEoJ0ZulEuJeOLWWPIkh37/F7s2kjVDHl2VJorBJMjMDuAHfIAjCw6wF5dsdwTF
	 NOD9AIt0EyaI/2Leh949wt6zWY3FM5WvcbD6wMA+YdFDyvK2zbynkxy/h884guerPv
	 dEtCgevlF5yRgi/gZMMgHYt9L0m1K6RSSre/oPh7nhjBQ880KjCuxd4qWKgQ39iPwB
	 A9YjV/FStJdBLMxmTmU6tnnRDmE1eiTYcXhr0Xd8n5YFKM+lxckhG2yJrB5HMWD4Ik
	 q9IFnUGgwc5lbnXxVmUr1K5MCSjxbFWtabIfKlV8cIX65CbLBxFahoClhPUFYxsfNO
	 pyZX/tkioUObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91097C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068239357.30457.2912511947347863366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3dfbb775524955fbd7076efc1ef3b717fdf61980a1d2d7c4d95beafec21498
Date: Mon, 23 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750682393
