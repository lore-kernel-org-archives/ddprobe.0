Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683725B305
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754501394; cv=none; b=k55k7dZRPrqDFSvXdFMEbHGWuWR1knTbp4eXV+dW+u4BknsKpS9R+uY8Kfz6TgRY8avCEPOIhbSz+tSqb87ZMj+RcbRpWMepbgxagPVFstduASJjnzj2uo9fK1Ss423XEKTnbPanmEQN0dd6C73KEEmM6DIa9U0fHHaj9XuUhmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754501394; c=relaxed/simple;
	bh=wAfhhyXJt2lefkANRxSJ5THRehra5VCLzZOoBxx7f6Y=;
	h=To:Subject:From:Message-Id:Date; b=ddoeFrIqCUx2NTCZot4akq8VVy5Ngg8ApHOak1IOd6gyOnyTZ2O3xbLWNeLTdev3wCC4rQnLRMSTJyLn9wCHRdilM5cSJXQ0eHGYEW1Mo5FCk0mF1ZzPAWRLC8/y7w9DWDH8K38ZUJKwgNjKFuqaZRH4CBcvgdFDwiIWrXQlfTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To9z7l01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To9z7l01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754501393;
	bh=wAfhhyXJt2lefkANRxSJ5THRehra5VCLzZOoBxx7f6Y=;
	h=To:Subject:From:Date:From;
	b=To9z7l01BNQHLNf/ntBbWEQMhrIgOqn4jCuqgV9HP6ISz67ERdFaQx/yi99daN2bd
	 moIlcTkQxEIfP1DB+PAcTRrASKv3c5/5HjPYGY14eVIOS+ivWdX+QXRkMExRJVMURH
	 17DC60soHcGYwunee483hC+9RRIIR8V9R+9hW+6943C+KRSYyYJflZrLb5abHfaaBm
	 DbJzrivJ/wwEBN0QdJqAhdUwLgMYl8dMAIDs0ik5b20Wpa8czThm+jQUXt4x8+0/+Y
	 2MZ5Ut5N29Rjth5ZU/AdaYpjSFpYXIn6LFmCMcRasM4JQ/oAU98JzxI/NEvFKntvo6
	 0U6nPl6UhvgTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98524C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450139360.4671.788498755118160748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c3c565bbd25b130cfc9e2d24b59d9d1621f397d2f60e4ee90bfc33df718b44
Date: Wed, 06 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754501393
