Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153AF17BA9
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723192554; cv=none; b=u7T4rjm0SocuuInJ1JULLGGcx8E1W+pTn7XTd7KaW9I4tXZk2OGrW9j/gXAbl4SQemwhq/po3773Its3yPQDrAcHy4xUGb+8H8aER/rHio1qzZ5NKgnHy4qVj0nVU/IIHyT2CS9r+FJsOwMP7fN0510zSSg/6lHfJN9LEd6/1OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723192554; c=relaxed/simple;
	bh=PD2Y1n5RZSjUyRs2FFkxCODC9fhPNhnahQQPSotlzM0=;
	h=To:Subject:From:Message-Id:Date; b=nqnjS5pyMIoIVayCb2A3BrpkmauxMZwhAKZ/QOuOEpWD55uVW6fe4HhFbrsZmi7qO0lbyY3gXGhZBNyAMemN4fuxG2IpG84RRcoe7EuhH9xoSxSolKUaGNEjkQmIaHaiDa1BlQkldf4PqzzE/rNt/0OLlcDxHo9u16LI7/wDAEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orcWKsME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orcWKsME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DACC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723192553;
	bh=PD2Y1n5RZSjUyRs2FFkxCODC9fhPNhnahQQPSotlzM0=;
	h=To:Subject:From:Date:From;
	b=orcWKsMEp/6ePt2InyLKEe9Jm0ehQmMEwZI3lFpTqZLZzyNXsHCllZwbh9tLGRyIn
	 7/gFq/sKQK7w6BOs1sZeeHd1GPxRlNnwlNrJIiKDoFFAhvGi+2yIm/oW04e04YaNc9
	 QNx6lbLd5+Nu/e3yid1RfHTCEE4e7L2bWpEF0fSlWwvRZ19PFaj26YJVr4stVd7uk5
	 vdYe4P8gyXcK6BfWc/WJLIphbrNRavZxu+Ah9n4cof4wGGi7h33aHNC6bPb3osiRBb
	 ZLF41dn3FnpaZSsvC8u0uB6YelIuzbk/fzxYmQVVHgEeSfGoRA0FrmG3xsljjI5SMK
	 UskKuhRXKTzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90171C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319255358.22437.11117394066372370598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b8e8317df78c3153baf98e261e064fb4c41f36e293f387b1e9045ae5eb5313
Date: Fri, 09 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723192553
