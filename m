Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A22C11EE
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792344634; cv=none; b=Ma28CaImpuk+y6OZ3xwOChPrYmUx9u2+yjwYZLVioxXVjSwkWbfi8uLHVBMHEr82T2O01Y8B7BRdS0KEMWgSO37CP1opRMYcunOhko9e6ny3IcRq1PQsm1TXG1bEsvzmoBY5pyVirDfBBEFiZm8goXp1oSXCJe78z2YIW7XY9SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792344634; c=relaxed/simple;
	bh=nE8wHP1z/JLPg+yPJsIHQCYfBqsyi3WjAiB933P/+XU=;
	h=To:Subject:From:Message-Id:Date; b=XmKXlEUYusvl6VTsIqDdTifuWbO9eM3yvssBHmrvohlt4REB/FjC5pWO2ksqjSiuPgLxcVQtcZP/eI6l/FgMvecA6QQRkLKXxzDKO58x18xKVTmpu7trbap1uNhAJf3+HYoFz0bHPtFmW9v6xgKjsisYaj4UCZsZ854QOCXC5AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrE0rRfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrE0rRfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37D8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792344633;
	bh=nE8wHP1z/JLPg+yPJsIHQCYfBqsyi3WjAiB933P/+XU=;
	h=To:Subject:From:Date:From;
	b=qrE0rRfTI7yeyTT5jwfuwwILSH0Rj+qcRuemPIkmH1Sj273MZ4z8L5qUZyuMm/jg2
	 wAtK6eV75KoMzEXBtFGGYJQrzOZu8Z7v/RbXj0Ct9flCL72R2QmFtuG63CUVBby+SE
	 rBOKX2Z6xZtoD94+GLDwm48nA1DUINB4ufSDo5TOXEJqhwhNI/aZOGV32+MbyREO1i
	 7eU2Ye75+hiBH1cGHDrjViwAa6UJ8bJaPtlwM+WSsupih75s0ZqZkWK9be/Fe6kJha
	 fVdQNxr1+pRE2IVU4Wg1IJC/2IocIsK25dXBPhy2KC17XRV5hAjtATEWHP3LtnIIbR
	 1u2sbg87Hcraw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B082FCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234463368.30792.15609097276072153618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6162b294208b7a1802287caa92fbb678fc2f821cc3ae1458c32abe3a7e4e523
Date: Sun, 18 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792344633
