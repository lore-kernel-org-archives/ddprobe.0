Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31381253938
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751541594; cv=none; b=eXTos58ukM9ovvcruSKWPBAM+9m9n4fm8aTmCqxrRktWaEZZy4puZsw80k5twbK2MNNFIvxDcSXFS8CN3D8mzhsqzYFtxWGSsebqlqlcG12oQpEruqaqBNubHFv3ihHW7sT1LatcO8cF8TbOdQSH/dHXpwXndIbWlpN1ocaVGCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751541594; c=relaxed/simple;
	bh=JJh4k1cKJSVjtA7T161vh25dzNCLkw4UpF6kmdx0pJg=;
	h=To:Subject:From:Message-Id:Date; b=cKgzLTWbFnZFKbLZ9kTf550VjWZPLMOX+LWcli6JEKdW70q4LC9Nw4VbCcyPobjDd98Mjx8/DPL/StgrDZ2vdadJANSh1EW8a1XIkK0QjnZddEjSNegFU/mFqPOg3RlBu5z6tnhszHejzWRRhofxfUpU8lNSE0MO+tbak98Qaf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjNcVU6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjNcVU6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4D7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751541593;
	bh=JJh4k1cKJSVjtA7T161vh25dzNCLkw4UpF6kmdx0pJg=;
	h=To:Subject:From:Date:From;
	b=CjNcVU6ZeqeEgM6X9fFiQt1hWnb9aTRkirY7NC73SaA8QjJtStYDyLeevxxGw26vT
	 k6uQlpAXM7gGiNJMOCDZui4NMSKIRFkdL21SPelGgKc0m+XJ47cz+6tdDhWCNTyHBf
	 mC90XoFkOZPndLy4XxTtCzNOqCvAtO8fPU11MIAc/RG8S6WP1i+9F/8GTB8ZDYHGHU
	 oRI+WFqpuy0RGEH0iGkyksQgj9S4ceizfceL5PlPpc4MQeWshF1Y8c/EoSaLn20vFQ
	 iestTt7DQol4aQiMMr22QZgQRA/GmSQuXJZK/swKArqj8u8AliBO99ShVqGmvdFmYO
	 p0BhYw6bMeNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED7C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154159358.9724.7540392881953021102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3ce49c14b9d19fdb973dee271d01b3f54a0cd4da5d0b268d9b7acc5d88602c
Date: Thu, 03 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751541593
