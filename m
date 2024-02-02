Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14265132467
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706900297; cv=none; b=N2OtfadX2e66ZtT2BefIeKxCwT9WkDh6Y71/fSSZEyTRSRP32ZStHCF3t48mEklmngmtNFbFVOHFpfScDpjGNzmMPaBYqjIMh3JFv2s2iYad/DaLfpCSYflH5rOhoxhjGnurUY1kI9e2xFJXRq95QrUv0iwMdE4wdPHhWwnIHTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706900297; c=relaxed/simple;
	bh=PSVZcJkNDsEcrI8COGXGyJQIapKWcr6QNdJyfnCT89Y=;
	h=To:Subject:From:Message-Id:Date; b=ggVgYiEEWrrkrCTwdL/rkYPFlRvfVJpJC4pRkXtr/iorNmPLCfdZ+TqSBogDb48/X2s3zXT/BhSxfFARalGGuGRJh0ku+HTEYaL8eHNx/8SsBoOkLHK7oH5jYDk5768E7sEImyDZji5G27TLzk+KHKY6WUkLdd0+f6ct+mCz9K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkPxdsTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkPxdsTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A0BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706900296;
	bh=PSVZcJkNDsEcrI8COGXGyJQIapKWcr6QNdJyfnCT89Y=;
	h=To:Subject:From:Date:From;
	b=IkPxdsTLz3NQB23ySdC6JaXK8Yx9S8rkXqMveawxNE1zfrAScwbyBJG/BW+WZ0fdF
	 1mZ1U5iRsAUisoQckOP5JrAihrQcl7xBfHIIrhUsxfkd196NN2gPM7+aqQ8Tmv7txX
	 7Ieyvqchsqg4EVUAukhlySPEs3JyZp/+fOYdVceL3pqWgoeOtm71DwHtTWgxNF+M5J
	 +lFWnQzuWR23l1BP8Uz8HvRG/Tzw96cbfRhvnW+ZsrCBDPVtFcRe1tnhMw4DNGXSYs
	 QYTRtKPyZw6GkViQTt8G9vvAN0VzBMyJHisd6SlcMm37Wek9zs5p5tSMcgZ7zkbgmz
	 LLJ99iIhgJcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BB8C4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170690029639.7754.10298608946083043020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfdf9366193b68f8c4efcdead394b3391a629b85402c482ee214807393b22a4
Date: Fri, 02 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706900296
