Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B229A5
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746341994; cv=none; b=FrrqKmBrIThQqbNUGh3/1tqTEe22Ma1kzcmwV+ywkz5cU9x24MR9sWZcf1USK/26HxX7CCm2Xiq6wUhtv2s3SJzPh3XrDialeOYmzXW81N67NG6BQD+QfkqQYzVMpIiLwGV5mZxNsyt9BFede3LDjyxPeQhTj2cTUFXb7FhsCs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746341994; c=relaxed/simple;
	bh=Mbv06gajfrCeVbjVz7xHTwc43Z9oqlRa+gXxLDxIs0Q=;
	h=To:Subject:From:Message-Id:Date; b=mSDckpZQ+PwUy4Q3YzRvcs9hoofyDMQuXkDQaTxUT/ebo+Nuyi++MfESJSxUmpvH2DQ5GUVrMTCDmkkotzLCc4q6TUPwN8HWDbFbHV+RKw5A3/ZSW0ETLpa+U/ZOvltKURbRZs5NYVY+Rk8xAtWPYL+1tqJzahkP/lUAJKetHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czJv+Pmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czJv+Pmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA86DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746341993;
	bh=Mbv06gajfrCeVbjVz7xHTwc43Z9oqlRa+gXxLDxIs0Q=;
	h=To:Subject:From:Date:From;
	b=czJv+PmxucsQ2nmw/FPzFN6hj65IPXVrgQSNBY4UtI1Z5I8TxKFyyhJvTir9klUA/
	 GXS0p0s/hjWsA/LE2n3Ce/Tm3asgsuQ9ZGud62oNapSMjzJDBccJMMYxE1MPgCrrfO
	 GX2hSifYI+7FBMRSMXzcYnzeUnt3Pxi36KGUZeah6YcfCzAMO+qPAG7tw4erfo5EXy
	 FjorH+HxV1aCJdcHPPqJDrYiTKFx2XemEM4xPOCjEWiAzT9AZgtkXLjnKE1FcuKHue
	 ZsrGWWChJvtInfoZkhdVgnewOabPNkb3eweYHDJkf89Nf90Regn6Ri+CgDgEp9cW7e
	 FPVAhnqaMAxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA8C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634199357.22500.5364188072872458560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdef7e83c452b1efdcb02cde378b2a601f77c0317c551f1d919c82fcf438f564
Date: Sun, 04 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746341993
