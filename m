Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114D154907
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 23:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713483563; cv=none; b=QRU056hC4b7iKcn41PT6Y8zWDuM6H0NIz1/ai0DWB5skWAPpfOOwaC0dEBVC9Ddt7ZSELyIVM1CX9k6t7jsjUDg3EoXVfPzd7TriXyKJfQxi/NdlmL2lRvxtrZA1P29kmHmNMMKOgl5IEShM7xyGJiVwuY8lT/1AKZrYddVZMBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713483563; c=relaxed/simple;
	bh=gz1yy3am/BqmWVYNcb85bGnPKKNO5U3yYEU4W7O1E8U=;
	h=To:Subject:From:Message-Id:Date; b=H83arFkZINw6L3SBeYuu3XAoQzl9jbGK0fQ/h52qhic0kNbG2zGrZhDNNH9kW62NomUgwrVC8lowvkxvshIuMedMXn+/jaUCcRu+GJfkGXJImq7df6PrADYNnbJCey5wRyxxvWiSIFMF2Je+esvXXYNepVIiiOqAweRgx/8AnOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBHDKYWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBHDKYWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1620C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713483562;
	bh=gz1yy3am/BqmWVYNcb85bGnPKKNO5U3yYEU4W7O1E8U=;
	h=To:Subject:From:Date:From;
	b=IBHDKYWD0N1AfIuLzJMRQVWvKpF5PqIRzyLnJafOboHjL1iKRekdgEaVU8y0OS/2l
	 JuLQQY8CgiEttySgjXrkGpQ+wuHQs32SlnLB4i85wQZpAadZkpgjIoogINjSA2PaW9
	 EOTTyq7EL+ybNiVxLU3GPSRcI9U0yhY2txfiGGgwqhES7xJWy5ZpMK4qxfmqjcMOES
	 nlu1uE9BHF62GgYekBzCuwpYOLDQ5vdzmcjKrclI8FVhJbMTTp3ppvfq9thgrYj+kC
	 4fLyzcA0FPAdplv0h1sdUA/N47dBSE1CM/wjopZYeKMnzZQFd+sqMVfw19LKZHKlm1
	 r/2cd2ACH3RRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE644C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348356276.6789.2529802905909841052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd64e3d9e1cb7ac4c05b6791c42e6bda8e4085ea1c0c43a578c25fee2f092c5f
Date: Thu, 18 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713483562
