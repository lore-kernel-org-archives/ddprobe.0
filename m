Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558604C83
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755905394; cv=none; b=aThHyZRvviVmGxVfRmi++gRY7UbejndL4dHwtrpkNystK7DEunPfvbbUfM3B/Xv8nyJAFnajxxHDVqJlaar5xbxu2i2jiTy3JUvyVgTfbbNsB4Lf+pRsrcmutmZWd8//qBLTCtjNXn1KKbUiNZgbkXhNm67QZIAxRTduwl2RJtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755905394; c=relaxed/simple;
	bh=HXIwPYCZXxqAJC20qSN7xsonl3hwvXRxoeKxHTLmo9U=;
	h=To:Subject:From:Message-Id:Date; b=GhD/mJvzl7cC+8B8wrkGe5kiBklDzjMx2EwJEJIL4zjR1Ho8Tdaubt12feIDAsQpcbYYK+p4iPet2IQg9vSKoHKXIVNRCsx4PVwHoxC5j15UfWJqS09IgppL0RW+NWaWg7WswmABgyq+vqHHashUY7GjNMrmSuCKNwqspNIgR5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDQkf1qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDQkf1qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755905393;
	bh=HXIwPYCZXxqAJC20qSN7xsonl3hwvXRxoeKxHTLmo9U=;
	h=To:Subject:From:Date:From;
	b=FDQkf1qgGos5VPyvLXEtQG/jFeO2n7qx4/WA1Md14gNLj8wcpQ4dklpwcxK9bwp+R
	 w1U3q9MMH7d5rfCZpOMCpBe/errFI10kA0yAsQLSoP1U3ZVS3AMrtZ31rbMtB/CkMt
	 CueQ7MDTz+OYaYqkIWQ27vyoQYys5c3NURz8bX+VgESapHz2tcWrFLqUaDJ3UpmgF/
	 XpxQa/cUHcVDMyWpHRgonbfeo8HjFL9NQGxECOPLfFunlz9grtIP6HuP7xSCzzbKNd
	 oTaLPIOtXDQGiadUrxZX+Zn3YDvyosV8NULkOh7CnG1zuyXE2QRlrNQga6JFnSYdV3
	 NNhIajsAQPKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B71CA0EFF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590539359.10878.1779016586283569485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a55c252abd648c6edc1965c0e4658a2ba4a9d7f8486061552bd240ea92683
Date: Fri, 22 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755905393
