Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F592701D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770390834; cv=none; b=gRnjYWmcqKvIxfmcbZNp6RnOdMMSa0P5PeO/wI6nQBqb60fsU3DCel/ck8oEyXFARzueiqVspl/Cv8rPUOEBuB2cGopkZxa0ZEaA8VoKFamDdCzWcPWb835FMm5gMgqCIigd6pI9fRNekzffroTxetp/hdMWVZX3ipnPuWejV6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770390834; c=relaxed/simple;
	bh=CObQR2Krb4pMPONCaOsJrVBLyTWfKdYpAJXHncDh/m0=;
	h=To:Subject:From:Message-Id:Date; b=LWmi1tCD0ThFTl0CfR3ktGV1f8Yhdn0wAPmdsP+HKYnT/pSjn3X/sfdBOHbS8RPWjki9HJ8dSXVvHea243WM/5tjOwk5GTgQIKkSthz02QnuNvQxb6OKn3oUv63J8Gf0++7YXZKIcEj4dtbLsGodTDXhQQWB0dpIbW8F7cZslLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN13klxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN13klxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D5C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770390833;
	bh=CObQR2Krb4pMPONCaOsJrVBLyTWfKdYpAJXHncDh/m0=;
	h=To:Subject:From:Date:From;
	b=QN13klxQg0UjQhpUL8vTaarJlot3MwiUXUhvGLwLcyOSMudaQZM0gi0x/IGglcbRG
	 cMS/4TmEUfRN95vBeQwnf24b9NKdxU0Mt6n98sb6tgSGwrjnfixHZD5Tj7fyTL/1Um
	 jnEwyLrQ2Rjblzn/vZSt3npXKJf6ZUjhhwTBFGNKX59PcBUeSZm5YJMImWAbwW5lyR
	 YRrSpmCwo9sd0OjpMLfjevkAg9YoFwAGuUWaGkxOSKz7IprEmdB2OsdAcH4fB2kxjb
	 mUub/RuLqmVyY7hAo5KFnvUDyPwpmECmm6xAzPTFMLjT+2TwITa3kHZjECMuN78Vdc
	 ij4NyOJKFRXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F79AEE20A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039083363.3541.2103583671602872243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832aabee4757dae56ab2976d963f3d6ae95b6b412a896c535c72c959b78e3f38
Date: Fri, 06 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770390833
