Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2604B1BC43
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721897754; cv=none; b=Q4+fiw7wmHcuLKJzJguNrxcrHqtO6PNtmVJ2VU5S/jLpqLbNK/6V31aifuoObfIMpck2g7UblS93zzyBQtPwjhG2MxDpFDye6bZkYus+cCM9WrR1r2nSuBx2gsXqoOKBS1wDRWhQIICQlB8ZNhxl27Z3TlaqNKt46fpKG4iUJFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721897754; c=relaxed/simple;
	bh=0Z2YUWh21AS0hy8MKrQdbga1pcJsPVRsk41e+5bkDtE=;
	h=To:Subject:From:Message-Id:Date; b=LbBHF++LQjaqA/KprR8Yb5oc3sCZs/RDdfFT7Qufp0VvACY0kHcCPECwlf/jZrIBZUJJZXuKnKKAmtq6gvxP79Y5yIerR/6jZP3HXypyvKJ81nJFwAmAPeL3nWEBwe8ExcqPDPlVYt3td7pHPxXcQsY14uCVuVQAO0TJ3zBEJlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfyqTKnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfyqTKnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBB8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721897753;
	bh=0Z2YUWh21AS0hy8MKrQdbga1pcJsPVRsk41e+5bkDtE=;
	h=To:Subject:From:Date:From;
	b=UfyqTKnwBiHUE8zY0M9E+g3yCI191DIQQMXvbC89TMMA2IY51kEXLVQXjSWJOIl+2
	 qGPtVAk2GxA67YL8NwvIR4QYoYxSsb+U+SrlbKdjh2s1jRLw6Ulj4rW353azyMYruS
	 6xrmeek1nIZtrvsjwbevR2MYTv8XDFt5dgXwCeb5uSegJ7ukTXET4yN3Tm5eo0RjiP
	 l4L4E+8vIeZzTJ1ezAaZJVLHVtfdTcbhNOnvSoQoeKjc3/btbJEtOH2aO2zSPSjvJB
	 QYpvTaqC8GoV09ZJdS47hYmcCIt3esvAeHx7rW5bN949xraTTkDrPBjnWDQsmcWwWW
	 P2AEYjN7TYa9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E05C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189775360.24949.1430467617448824508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1213572b52c6a63795e1b61e646f0acc597aa4ff539086ac4b4ef01573af54a
Date: Thu, 25 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721897753
