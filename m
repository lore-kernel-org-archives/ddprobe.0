Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1933B1442F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726851355; cv=none; b=rz9WFzqXW4XcDk6KjZVbv5IKwTbqqX5G8y10NeWlFNxuhX4xmouWjE3I+rqhegnhhU0ImWRoPjGlRwn8DBfRnm1IepTFFOAm70nOJd5Pi/4M1HC5tTYE9h3RjcvfPDz7/wtCzc5emw2ZWWZA48uTfyG5iZG3Iswx8bEGh4KaXZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726851355; c=relaxed/simple;
	bh=juD1vWGZbzosgeK6mBCKO3jERcbfMSM+RWv4u4L0fVM=;
	h=To:Subject:From:Message-Id:Date; b=f9q0E1ojhTQqbta2qwqEiMI7hKWSiwNktwOikNxrDt1Px8aZG7uk9PKHYpDGKdzoF7PYJWUx5yHqA3kcuJIf80zNvQcAleP9j58RVDYU592f8PJ6ZsLJ+iF16NNGVvCEd1RY3SrrPKCIqla9YP3ct7YEfcZbVfj/hYRohVVQ4kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCv0ce2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCv0ce2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C27C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726851354;
	bh=juD1vWGZbzosgeK6mBCKO3jERcbfMSM+RWv4u4L0fVM=;
	h=To:Subject:From:Date:From;
	b=YCv0ce2v3vEzz7BKXU/d2noU9+rDUlOdK1QcpXU/dwtGlHAxJk9gLLnu8XHXSd4pb
	 SW3JRozq28e0NwZBR2mpqOitqeXni7/7oU2eX5jTQpRDtgqkRb0MdNlqSClazsBIQM
	 KRuYj/Dd6pfLb9J42Dfw5uYoFTuXFt+SK212tCQmBhR0tYUTu+FGIcAYBysrJpiNRH
	 kiDC1eiZLPaBe+8+4dDImC85EiK5NWvxTxaYEcyWNtm16JQmeG2oSEj3qkYD45slBh
	 oOUgMNI+QDVcbsrMMaZLwSrelFwOgSACkOc2lmNq3aYEcC1VcIVvKze1AVFljBn8pS
	 zdf/kHj+CrzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94522CF9C5E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685135360.9696.8874486129091797912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46d09bd687fad6e13c80998f9f85ff9092adf7eed230d473072a87c9dd824e1
Date: Fri, 20 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726851353
