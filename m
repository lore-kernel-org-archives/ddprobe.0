Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3866313AF2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748441994; cv=none; b=nQXDKZV0QiVZDBWipyny8W630JLesdHy8XTx6snooxgELKUWWv8j4ChmRtasg9a6p6Mbn762RpePElkMlKmlz/p5vduKwsm8Fg14UeQ+5C7k9YCTGMGAzSJWLI7GM3VgAq2raAWXgXLrjr0yuZ5itGANCEYW9tmCuYcSotqL/9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748441994; c=relaxed/simple;
	bh=o99QpfnAIgNIXmiC++5SziLTK97Tw+CXS0u76qqAeN0=;
	h=To:Subject:From:Message-Id:Date; b=B00eoQn0GkNKPmhlfohoTPiCBsKiV4dy1q/6YY1wdd+rvVzfLqcXomXMZZEGAbrrMnU8ratMt+XbhCUoMQgB71STd3uCKvrPYtgwPcaWLVSinNr/iyQgOhT5ssnAUQXW7V3v2bkg6S7sf5IMQPhl+HZFqIRXOYCckyNnecTsO0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK+d2GgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK+d2GgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC28C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748441993;
	bh=o99QpfnAIgNIXmiC++5SziLTK97Tw+CXS0u76qqAeN0=;
	h=To:Subject:From:Date:From;
	b=fK+d2GgWiFfoXNmWur/BclpcphEN1ornzAv0h+eVksHkCSMBBGI+hptuW3GgDvpsh
	 iUxs3XdsEffN2x4oAN6LgZ0jpPKpkL0EOBDCR6fuAayZtFjysZZmiuzHRHcs2Tyky5
	 WulVkuVaMs3nVp3oFzgoHCZ+dVkQrtuwdSY4S/ohlWz2m3J6znNa9GeLDYH0hWgpFc
	 v0E//qj5p0EL0av645oXOWvfm6GDjeZ6A6whpvYsMkZrdpn4hafeJBsN0Gwx7AHs7z
	 ZsbqcNbQakHfiglDBLUCpfW1X2qcfLVf7oOH4TtFl86hjAQP/mpnb2qv+wtzaJhOQx
	 UY7gGITH+LsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90025C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844199358.8344.15635597889610926019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6390c0bd7bbe4e0da06465c83a94b5f71b3fea030e6d81bae099fcde9365ba55
Date: Wed, 28 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748441993
