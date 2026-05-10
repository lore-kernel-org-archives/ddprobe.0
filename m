Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AC134CDD
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778386234; cv=none; b=I82/XrVQYItYQhmpu5s08K3yL9dSsNYRiNdjk7ioRLB3gK/7iqJlJs7LsVWXWE9R4013+YBXYmTsNcSjpqqNfk5QOdEQiHi2iDGwM3ZNSOiRWJMmfay7/9krqG90Ytr1CabJPTN6RK7zBvVlotUCWJh6zQSIIolwbvFkEKeX66Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778386234; c=relaxed/simple;
	bh=zZ3qHsZbz0GF4Jhf+3YXWjpjj64tfCgWduDUExBIl/M=;
	h=To:Subject:From:Message-Id:Date; b=ObLNyyqdnUP4RLJxb9mpjRYwrAQiDLay+DyD+GfXFnZ/xJEJAkPfDNyJtbji8jagNLxmDeNCvEy/duHUir8Z20anyiOWMO7/w+/L1LaWDG1sUBjlvPkk42IhDexesX+N3NCQXqTHr3ochR+PuDBYAGq1NqKOgmgUJVeqmzzfiVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHZKgEvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHZKgEvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16C3CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778386234;
	bh=zZ3qHsZbz0GF4Jhf+3YXWjpjj64tfCgWduDUExBIl/M=;
	h=To:Subject:From:Date:From;
	b=BHZKgEvHm0tD31gj71ReewXtD/BBN8izPFor2SdFG7p5TQtOsGFwIacskQucr+LnH
	 1CADJyNvLplqYZWDTOhyWzvyehFH2U7Fb2sUdn5VUBNGS2I1GxLQAksGtzp5DRhQ8X
	 cLfs6Ujike+dtltUOn8oiGMxVNL65OJ00NDnTtLrzjs0b/9B3/ime9YPb6LLwAfTmH
	 N9XfU5xoeajZgqFc1qtnPu3Ty1LHHUdoVm4NZNXHlNDFzlbtRAu1Ebs2aqkQGkgLfN
	 6j+gTku6csvO7nZpbVBovGIm4a+DbXbi6KYnxjyMoZEIFw4qDHoe1ue/pTYKzGHT1O
	 uV5mg3juH1Ggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CBECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838623386.20964.18202606597446338942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941f7867ca13a74ae33f8b7d6de342dd1b1b1aae03df6ed469b5b0d1c8d596fa
Date: Sun, 10 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778386233
