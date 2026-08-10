Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44127353A69
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786393234; cv=none; b=Y0SjAt4YpRSdfOL/QPQllIx0QtbXCRtv79lj0z2OZCc+V9McZrKJs+IH1x3D9j8JjIYb06gfp1q6T36SM+ZuoBODosNVhS8ZnbZZj2+JOBmIHg940FPXi3xjyYTE/3MrFHFpu1CzHbSc8Pz9qOT12LKv/wv5iet3B7d6jfnUe9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786393234; c=relaxed/simple;
	bh=kHU/aEhS/inpZeblKOZ4szvvxI6HQt4oVL3qfq0p1Jc=;
	h=To:Subject:From:Message-Id:Date; b=gjlUzhXxrI4uGUBU7fUS8C4CBhG5dwQmgLTaG2zrtwC80HsNO8M0qqkIP3OCvYEamm7JWem3zWZAyqEvglc0cnIPc+8sLzAv3jzPQSwwuNdulT+Xl5hMr/tgfeA7zRO6z/g7Zn5rX3sDZaWyyifA5bpw77e02P2fZDeFHUyZbS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBRyZbaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBRyZbaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6BAC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786393233;
	bh=kHU/aEhS/inpZeblKOZ4szvvxI6HQt4oVL3qfq0p1Jc=;
	h=To:Subject:From:Date:From;
	b=VBRyZbaUcxoqLaErSgpFwFjpj20gM1qzJkLrrOrzDsSpTc1RbIUuwUKtRGduOD3/L
	 Ltcqap9+K5FfTelUdTGtia6cPZG1iaFofoUtpVGUFXXlHa3VCSpUORVPUIQD17uo1m
	 EKov3I4yGCNDUbgRqGADOFXSAI3eOmylG+Nrxafh722B7458bK6KZk4S7RjGq/p+yY
	 Rt3kD1jwTwvm3194mQdiBfSCHpKKKzxPPJXXJKIqaqehgHHG2jazvrlPKLUtEb4T0d
	 j9WQCYsSI3hmamGVbCLOOfwtNUjDbfvve2Fuvt356X+CZPs1qSOn3N76AKyj2nKkoz
	 H9O5KSuN5ywUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A8C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639323368.7089.18097007392698096164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60aa243f61258d5e42070bf78adfd4c055f40998c7722bcd502c9b8bb71e8159
Date: Mon, 10 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786393233
