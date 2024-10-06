Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3956A4C91
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728212754; cv=none; b=LUQqTdHd1OjWH2h+Wh3Eboi98vj6eFaD9nGaNQyQ3IJs3GMyD4NV+7mpLXGXVOi6H0dfWmuRLoQMpDUd6JupOCAkmS8/awWyX3sjgKSJZTykfwxf72qy81IGkAtZkGsSF36U9xdFYBi4Ft2xh4oZ/Oab71qlucxLpsFUL9Shvpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728212754; c=relaxed/simple;
	bh=+G/zp64b4FTBUMGrnR++WkHvmt2S1V+PrwoNNm0lYSM=;
	h=To:Subject:From:Message-Id:Date; b=ASKWzAkRCF1Ga/YoMxoqCxttums9DMaVKlbZ1+uBAO/fVY1vBahebcVpW/ztRdgypeO9ELHJCvrdp1S2cvrzijtRScx2RKhUcmESlMwF/K9U7o6uUoDCKBMu571orheq2daf3YC929CkK9hOxw7Sx7htauoY99bIy1fBDHcUpnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXdY9lyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXdY9lyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728212753;
	bh=+G/zp64b4FTBUMGrnR++WkHvmt2S1V+PrwoNNm0lYSM=;
	h=To:Subject:From:Date:From;
	b=SXdY9lyPL/dW/Ynz+8yFfUOJwozGKYyuQArkoatAJA8UhgpT3sXkYAIzpERMLFSjy
	 WQnrHFjDlh8l4ws4ErkuufoEyqi2i7mH2ME9v55QlJlQQiHYnFuSj1QeLocSXDP1fL
	 tuck8S+k3TFlG61QvkJFjubnvJKxLi7v3aLI2KNrJcPA1TESp12JPxcqZNcHbV5ss+
	 9YTNJxTvUFh8LP4jwh8cXoHQ7PJeGn+LGUagLKfuX46/ecXOBdWHS6xRogFUNqEzpU
	 boySxjGrxrtJi/yBDHUP3EnQaQUEVEDBxqEbvJ+XYiJYCjkdIub0rkz/x3ZdsUZo+d
	 zAMO9MC9bYnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B53CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821275358.28633.9595070121956757507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697f320d57588a32c7de14005fffacc836c8d79be2dae6cf15d6590c49469a63
Date: Sun, 06 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728212753
