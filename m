Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB4154764
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758179394; cv=none; b=pOgW3zJk3vIz7meuqUllSvovKirQ2IqtVrW2f2VXgq+GrPHT3aMfya95Jj/6BDRbkM7ZW4bzR0fAx+C6ybx4OE1CRqUWG7bifkuY9ChLItpBh2uF+4euwJ2KCTEBrBga0uk2nGn5GERX2dRSKh+PBF++GVbqFChBugOUC74YV0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758179394; c=relaxed/simple;
	bh=pOW+6Fqil2xA9tPt0+Zok9sbg77HrfArQsNKB2Swm64=;
	h=To:Subject:From:Message-Id:Date; b=ozCcm83jnwkTy2CX1wsRM8IYnT4MePKNL1V/55UeyBTL3IE7wsBQI4ZX89Cr8i4ExOCeogZeONiX9LdObCohkQ+bDxI8k46wKhr6DKE7NcnDI0kIUROCeAY9+i34cC9GivxjtOE/BUgVZnvQ6crvfMGH4OcQw6KT7z4qD1o/K9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls/8cTGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls/8cTGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8466C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758179393;
	bh=pOW+6Fqil2xA9tPt0+Zok9sbg77HrfArQsNKB2Swm64=;
	h=To:Subject:From:Date:From;
	b=Ls/8cTGHjEvPIhFeTxk/Czp9puTaO/dhM4stmRoBqSGUBciXZipMmhubec6Wd9Al2
	 A+LR9kgg7znFJhTCxGqOjHvha0xk9u9qmWHMc97JvrKM6jU5bFxUXQ0zj0gE1gz0h1
	 6LN/VCpay8ae0310iMuAWiw7PJ8tZonG4jMoU5p40iQSoL/7ukWKJCvv/0/4D+Dwnf
	 NVa5sCmi83X8gR0iLdc1H6FyPju6RhbjJ/NqJw74/CEyVG/j7JBUPHYGhP13eumOuX
	 KSKgCOaehVp/kz3dvtCd/GKOFGmfCqny4Nkb3f+cSDxIsvhq0uW1AAYBnIEIwhLOzM
	 jP5GPOVtvBReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F8CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817939358.5314.11191862897194241049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4877282e384b4a45a0a371e1c6551aeeb64a23234f6929ff740cf6ff38962fad
Date: Thu, 18 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758179393
