Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFC9B661
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759861794; cv=none; b=DSl1V+gpKpXLdGVa3/r12IZhthm2gxCQudZuU5pQQPJmEig//Cc5h8uV9dEWTSwq6/MjyculloF2Fsjy6tD734Y+WssmuUpkdoY86VhhSbdfB0yyHAiRseFnyNkCUW/by2pOiWB4DOrKXQW8jNpN68ZYLHYAr/E86SuoxexRIm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759861794; c=relaxed/simple;
	bh=0J2TRfXwXzeUKk+AB2oQ1j4HWrva/ASsKit4wIolUvI=;
	h=To:Subject:From:Message-Id:Date; b=jnkakuzfT+UcN/7SwxaWiynJhNvIVXZ7hquVD25ekNzKgp9mIE+BB8P3fC5kcrF0IJ/CJeS8/tRNpy5YL+3Jf7icKowU9l+yGst9xBD81wrX8rGT/gDRVZPxJ/9Anou2ZHUf2Pf76lMExmHSGL6Jz7MRBoN/Z6wJw7m1WTIdb9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC48FLor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC48FLor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759861793;
	bh=0J2TRfXwXzeUKk+AB2oQ1j4HWrva/ASsKit4wIolUvI=;
	h=To:Subject:From:Date:From;
	b=ZC48FLorXtbGm1dwLmER1h9KYH2I3NdxgwRelJPtKrm1nDIS4cOPDW7u38MBJX/cL
	 p1O88YUQXXQQptDLbuar0px73WUZ9D6KkkXSGKft+VQcbOAUrRoxQdRihJZdGW2yrR
	 729sgW1TmGKeSKCvZ+JIarLXgZCjM3tlq+QxIfJEmVaLMVXnL58X2TNepAJxmcf7oQ
	 +usErQNIzPYCGCaD3cYpSkrsaqKCc9y/wam3dmQ+AXz14JHXchar5CFD7PCiNzh67B
	 Os3/+WzmUGRoTSfNNM4xFevoxSo8Pxbs7iscEPhMq+mZLRpy0/HaIu+0d0xom8X8Xe
	 36bPGc+2kn7qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95090CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986179357.3303.222053508328010936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bf2ce17d2b242afa09631f62a90f801372e92bc58789ae000b2abd02a77c85
Date: Tue, 07 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759861793
