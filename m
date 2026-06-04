Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2BE41C308
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780573474; cv=none; b=B+wncVMECNgVQekuMWSReujNvjR039UX6iQDtoW/CU1j+mssgPbmT/XbWg0lo+ydKpUqC1ljjuPDPjdy6WmuJPSBwcmz2EI24owmzrFWHNvvjAIzR/AejGVwAfDhe3z3lVhAnfHJLpOvG2M2+q0MQUmC7jswvSFCvVOvESHWkX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780573474; c=relaxed/simple;
	bh=i29Wb29jkIBP9vLMJsYtbTX3LxapXziZ6V8W82YWdJY=;
	h=To:Subject:From:Message-Id:Date; b=AMLynlcShgSMgif1wddApmFBAxzbw4AcRD9jpUh60weM0H3jqvP3z6UzsvCZjUU5qEO15yJlLIzuPQECsRx0NaMoFZYa3lGVDeqXZNAg/s/LsWkBOpXAdAAGOEw6ndubrz1CQ3N1lkYF7nOCIvzzoiqufQgee5qNXC6BHAAGOpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMdGqrW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMdGqrW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5932C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780573473;
	bh=i29Wb29jkIBP9vLMJsYtbTX3LxapXziZ6V8W82YWdJY=;
	h=To:Subject:From:Date:From;
	b=pMdGqrW3xUwpozfFR46YUucFH+WVTPKyZtAqaw7GnzwRtFZklShk0KsZDi2z3lIV3
	 m4HO1eVTi9KoN1xzfevTL+IF0eYrpwBDz+0CUDAEtlLnXdxWKJA8m6N5DhqvBxJn7q
	 yvFaSAq45cHWHbmgQpmK9p3YC2qIpU45TNECFBsk9mJ9A+rtjPq5bIZFJpRreTUkYx
	 GkJCOq4kxqMRB9RzHMQ2SpsI88qvFV4xJV16NPbj/3ogBqLFg2+Vd7jUmOffaxruia
	 1POB6OQHjKY9AWqS6SHoudstJwcRnlD5k5gIt9XUrtbsd0u1v5zvAyajVLSsMOLnav
	 Q9XhedugKbDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF503CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057347368.29127.4197181495165817526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4707da4e61ee347f47ff48e1d4df5f619fa78ada81a0cfcfe7cd555ef36a5042
Date: Thu, 04 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780573473
