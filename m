Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1144D1D69E
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723772754; cv=none; b=nagOEXtDYnHZCH1tO5Ft7C3T+Usiq/t5QtjgvhXmCQR8dDZhMUgovEuja1yHLLQ8mldXFxkxOXrhmm3Fcm+PVwUTXdStuDV7axVFMupqodMh0lonkNpRCvvPaCLNvhUOXFxv8sQS+PzTcncLLPWF4cWaAU73ug9RdTl4awoqMo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723772754; c=relaxed/simple;
	bh=32GConaqrpYI5sSFVu8B6xPswXxIHeP1jh1EjxF7u68=;
	h=To:Subject:From:Message-Id:Date; b=j+PvDXRo9BPBZEuqptQajxCPz5KHwKOpL7enIH86cxFVNspuDfAyvo2IYAGpZltiIIkQ0BQEzr4U2vHgOBoK0oQqvs6YSgNtJc++NvD917jsxcnFa1N9rpFDqrN+ab0182bSbEIz3RIweufzPqxSj1INPnnchdwfEw2mlnZPJIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyWgfPuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyWgfPuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A44C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723772753;
	bh=32GConaqrpYI5sSFVu8B6xPswXxIHeP1jh1EjxF7u68=;
	h=To:Subject:From:Date:From;
	b=AyWgfPuk3CG4O3o8xEXOkMrNXs4bHgVd3gbKhqoF1NFADCHmmkYxeGreqrLKupjvu
	 QSX4Zw0WIc5Wae1reVK5IgEzjVkIGvVQpjv/TFL8Nsj4iYMpaTD+Zp226x1m0ar1UH
	 iRwnf0H+NvJiS3gyRZ1ifJG1b8V2VzA3EApVJhxslijVLugAd8ICuSg2uqOvzpG2wA
	 PZBftLEODFlzd/70InsA5/pFWWq2OJwf/9nMreR3TewsACc9govcRWBUr55buFNxzh
	 pVfK95saksaOkmBR6GD5E1KRQ/AP1sKqOIelRUwnc6+TDAvjvNSTKmXVahheJSEm/f
	 pDVTo5qbbV1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D07C52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377275359.5251.16787831364432180744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cf17561d2e7ed9e324d8ee829358289745f8af27b293f02567d0b099a6ffa6
Date: Fri, 16 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723772753
