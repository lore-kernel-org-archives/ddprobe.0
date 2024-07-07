Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B33B29CE8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720364783; cv=none; b=mz+Hn2Dy2mAKOD88kfN1IyhBe1ZFtieU5ne6msLsz54Ai6dQFBgz5SfKAx81r6RvZek+oZczQeEbEkD34LLfTYqg26HEAIUzMEZXroqrZ/6PEMHLwUl09dUrOeZ8fb7CPyz+5gB6GxIpaefcpSgs3MobzXCFkVBGUbNN6G7gBy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720364783; c=relaxed/simple;
	bh=Lozq8lUNW5ilhV/ibtGx4GP8Z36bkcVxTVVm3xdTB+Y=;
	h=To:Subject:From:Message-Id:Date; b=T1k2Gp58DUm6zTkOtOr4rop6D+tubUjcIKKvpN1fRaVaGyYLfUuT8vqcug5QV1m5VER6/fcUtb7CUYe5T8prRiF4oTW/o8q/17gxdfNwqGfkPY9UpRFQ2V2ff9uZdIBTt+guIFqDXViwhtkQ2WzorCpeGt4mjQZf5/VB4UyWfU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1/T3z4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1/T3z4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30C7C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720364782;
	bh=Lozq8lUNW5ilhV/ibtGx4GP8Z36bkcVxTVVm3xdTB+Y=;
	h=To:Subject:From:Date:From;
	b=C1/T3z4kVF4QlfMSN/2WIrBegFc8y7d8t+xusO5B18tbt2OMnbsoTI0L8YRBYyZx1
	 Xv3cxEdm+YDF08/IrGej5MYZsJCgtgJWu6LsaUcK7XvByKOkEVk/TKloii5Up770yU
	 rB181g+LDde9KKR2z6k8ePFevSOxzgY5Wy/VWqW0SelnPCacbQdJ3OuvRSkH7Pv6yh
	 N6s24QajgAXCC+aD6z/nKMnj/CjEUs0sgkPfrGrh9PN7HphBlxuOvXloFQaDj2iuDr
	 cp1Dc6EwcA742MAHig+SUzbixwXCC9ysYAS5hrYb5KZvkaiavpB3DS/sbOdsJMHqp3
	 aPXLtA8ztnUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29BCC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036478284.24466.7199077944559002065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d263f6d7718561c805061690f5cfd2459efebfc6663ebd23f935d1027e12886
Date: Sun, 07 Jul 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720364782
