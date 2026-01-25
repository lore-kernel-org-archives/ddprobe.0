Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102471ADC7E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769333034; cv=none; b=qonuYvTG6nAol5T5wPslaxiOnQxrFhsj3I60l0wg26w8D5DNEuhu1nJ8oU94VEaZqJN8YkOkEjl0MlRV9Cxdq9Ynm5ogK9zrkmBJsGeVdazTmclmL+I3YytjjPrQK/+4C50HHR0Y+yPFl54AmxRhflZgJsqk9+WULux9OP9jNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769333034; c=relaxed/simple;
	bh=TVGltJ3wz2kHMC04C7JllTukZVhvnit3WVq5J3YaH4w=;
	h=To:Subject:From:Message-Id:Date; b=RK9UQwnzDB59UV20Qy+xorN9jLOIxFE5IdCgSEQCoW5OcZZZcFT5uQkzVQcnSQOWxD8OdibPbgj6JxXeeVgFwUMbnYcDxyo3IlXhNQhd7a5yNTMZHQikHyuQ3KS7+mP+xE/yR09B4FhJWYvufu/29ZNMNVpWURYq09TnDvN81ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9DqQQW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9DqQQW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769333033;
	bh=TVGltJ3wz2kHMC04C7JllTukZVhvnit3WVq5J3YaH4w=;
	h=To:Subject:From:Date:From;
	b=A9DqQQW24/D5Pwic4FHAORdaJYKCM5l+xE/CrxMwFdlI5/UtVlH6qWr2mQNo5vJPx
	 LirSccVEjXL3yioTsu3i8xDMMQXqg0D/GpIoMHWicEm4DCw+CpN6tNbaQMHmpGCR1r
	 2q/cToCIjqiQ5UnYKe1ve6Zax+PJSi0/WLzotKvuM+gAaoiYZKWrNfEFWZYg8h56T5
	 L5rgKPm1dT+kpmd98AEGcQQjW0q7PwuQUsIiOlD52VX8xHpQObQSr/ihQ2AkuqKKiL
	 DscBll8NgqCGdoces12x1BtlZP08D9cf3YM9REMO6U2fXoyF2GQn6cnVFH/4NLtX/B
	 1iJ3mUXdprQGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94067E63C96
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933303357.19785.6873344839735469719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479ca6f98e5bd55e4ef1d61366ee17845413faf7adae548485fb0680acf0f07e
Date: Sun, 25 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769333033
