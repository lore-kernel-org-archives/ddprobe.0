Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459EB17E0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746754194; cv=none; b=FuMGOeJpV+567hmG19Y4cpfdAetcUdOh9wRAltkBhNzTeY4pjSRaYzfQrj849XjMGgp7rs2oAFkHgCWfmfxZ/BpuY/qpy2HK3xAekjV5+/wycnjOc7Uti4HRqOTPxpnfKPT5t4e7KNCstsHhittWwqB4rsudfJ07R12Kl6O0/gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746754194; c=relaxed/simple;
	bh=meZZlneCRkrSleAV09ju4rJOovydW3kXn+/sJL3qovg=;
	h=To:Subject:From:Message-Id:Date; b=H2VoGou6ensZHJVyNJZgdZCqZhXjcyTJ/hUrQsjugFr7+6+wKnahBzUd5+Q4bjIwY/dVy6KwV4dfMDyVciQ0pHpJF71wZSIgiTDbVzReMaQODxPhD8TdMMTEbCszDTvE3kmPjfcUfMjEsxNEgEalVERkvF992I9exKBuvoTxbBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPBoH+U3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPBoH+U3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B797DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746754193;
	bh=meZZlneCRkrSleAV09ju4rJOovydW3kXn+/sJL3qovg=;
	h=To:Subject:From:Date:From;
	b=FPBoH+U3cTHCrlbwdX9hhigubQBjTBuESPKHV8+37dexWSvyzS94S8W4B1JeL6UWo
	 OQzLPMi/rqzEweZ6g+875f/VPetpvRsLdZ7hk82l1b1lA9IhPwdkKYyLV8tCtgyWbp
	 zfInCKjFPp3VD2X6nwksFHoe7lPiUA0cEjJNvkhQPONC9vnBtjbhBSlGi4BTCWAjcx
	 jH222dDgr2gOFIWhE5W5+MWJ7bxF/1DxD1WDe4nuRxRb33obPZNkjK6WyqjYMRH3i4
	 6NuOCluGd96LkXA0Aoy/OfnnsKp74myDD2BIVbuTCvVGUWnN0EU/klqQ5oIST/AQEY
	 MSDKTprhHUI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13D8C3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675419363.22434.3119319175965393423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e355439baa1c8e21b044e32a5e92db0bc0d451492b58ef48bb3fd1736723e7c4
Date: Fri, 09 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746754193
