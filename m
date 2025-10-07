Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8361A5B8B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759804194; cv=none; b=QU0MGXXLQWVTcG/HUTScgY3SfHPtkmAVDgvIiZxiQKwnW4VPTkSptgZRs34cv9y9ZVV3RI6/8tAyia9Qub2yGmatJmgEhPZIeqOHSLZOiXuH8/KibVmSOo+AtPJa8nY0glkwXzWmGZ4Un/2Mnzso9L8k27hDpT+A9TiqsIJhFdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759804194; c=relaxed/simple;
	bh=p5P/d/D1Oq4HFbkGutURNloKPxg94CKBRFNhqlVFTBA=;
	h=To:Subject:From:Message-Id:Date; b=T+rO9d2D3uX1LlIRsM5W53PFxh1mrxDoYHjjuet9SDCiVVkkd150DE55/3vDqTsrpLFetzUCUzj7gEJ844aDzlCodIpgRCntDkIoG85O3Ei65jb5yPpXR/T0U4Dk2bCs1WQayXAmFC3SJ9hQy9Q1yWGDVjw4mB80ehRZPi0mkoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gItX3YAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gItX3YAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6173C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759804193;
	bh=p5P/d/D1Oq4HFbkGutURNloKPxg94CKBRFNhqlVFTBA=;
	h=To:Subject:From:Date:From;
	b=gItX3YAVfTHdYdS5bHv9P26hx0IJbY+RGlXPRWTCbI+C3ZaWXN3l43ozqRDkoELWV
	 7TlliP8DsnbZ/sSD1bUQJ6gOgfekHXu4bnLqoT7xC9Czqo0Uh+sl8lwzSTO3jCVN7n
	 sEHZDfs/0a+5xs0rAyQbe81uWTohiAF/hPSTYvD9l+do9s7ZxKgEMC+XpYYLdAsubv
	 h2Uge9wDSuKSa4MlvWdFB9XWKHZ4PT7ODPtNfg6QL6o+UpfCWxrxMllF9dOIRhGT1H
	 BnRJ8pwqKQy9a4W66jkVrHcvQIbqItirMz6IYlp57jvgl3FfyJZeEAfOsC4LHJjWVv
	 FMzwEfrsVT7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E2CCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980419357.10898.6227367863404689121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f261e86dcf5056f2f60cffbd5e70087ee069e8ff7c4d7286bb7cb76c4e2f6515
Date: Tue, 07 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759804193
