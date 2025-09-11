Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A212E0936
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757626794; cv=none; b=lgOdFuDFRiZCqC3hCvPCDdSwn5R0uOsBHU9VU64VnpHq4IL+vgNoHZSVQ60G6rNmexriToKYW4BKwTHG1c26yfEH7kAUqGINLIFSqU1IlWHo7gH8p+o4esxoWPzNolwrLS4MofaC1ehQZRJAzjHw0vcqRs6TlCN3RU7jVd4JYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757626794; c=relaxed/simple;
	bh=VBIGXrzCfQkw35TwfRSMjTHbcK+wp1pmA8Rm1v650Jo=;
	h=To:Subject:From:Message-Id:Date; b=Q63N9G7DY5FJ0gTOWDP/ugfXEBeJMllXPDR/eWCBb9muCs/418axfJgpcwA4oz/4u1Js3jEpfPSBtL+GmAQ1vL51Z0W/tVuzOG/LhLx1j05Vc0I9nXv98Vv6by6Mz8SNCAOejiHFILS2J6+RMrKt5PRBe97eYBNvZ7S5cq9xu84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHNmLNfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHNmLNfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB2BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757626793;
	bh=VBIGXrzCfQkw35TwfRSMjTHbcK+wp1pmA8Rm1v650Jo=;
	h=To:Subject:From:Date:From;
	b=ZHNmLNfoWbCj7+bBp+PL2amyW20shS5Ss+44lMueh8xknz4wJ5IKeXFgU0+/O+jH1
	 fVAYIV0/wnjbXEsmF94wRCmPz6rdwGWUKRFjKV6D7XFYD+b6YsveSO2DPUHIY9I7QU
	 yPQe/ociQD/DgGPPuS0R9/QKQrawPu2h7Ln2QgsEhnAULWO43Q1GAdfN/8Z9zn73DM
	 H20cv3FFzEri+1QsU1aKLzcIXZ2CAcRS/cRAF3pk1QICcBR7U+zMGQ4g4x22mTIvH4
	 FV/SMPQZw+hMTqsPBgY0ZqQ8XT4vqWc+XDP4AEriPrWG8KtX7SYgjxoMZYQzGZR2c0
	 CoG5sfTIKgJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0DCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762679357.30270.8509530034253649285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf149120c71cfaeb7452dfe606d9d542e25132b487f392e4f13f27ca8f98f25a
Date: Thu, 11 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757626793
