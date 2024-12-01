Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8422AF12
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733066754; cv=none; b=etdKQhZu9/sWNsFHt8nECThxauHGDYYoj8PcT8/prZyPgHBG6ocC+4qVaVt2AB1vKz9EHeDMob4xhuqYhYa4qOI1IK+6C/Czsd5UZhScm3I2Bw3c4IlWn5gpRFYuRMqIyLqQDxVZWQm964jzrKjaqeF0vlVcxv0SJkqGuKwDIOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733066754; c=relaxed/simple;
	bh=2wBBxCHxwehX2tcOtctKD9CY9tVKAAxcna9Imcb+9LQ=;
	h=To:Subject:From:Message-Id:Date; b=IExXxDiiWO9LYDODnWTEd7v+s7+VvDKDht2OfOrC1Kv6rnrS87GxxZnCZBWxEOvUSQ+vq0KpVjEyyzQLIltuRCyLhgSJoYVbMHyBK5p+lcuPh+D950xRi10hucvtmLxIJcFnHymeG95/oHtpuAJnbCuney7Lz6mpHcv9yN5Qj8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1AyBcmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1AyBcmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D5C4CEDA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733066753;
	bh=2wBBxCHxwehX2tcOtctKD9CY9tVKAAxcna9Imcb+9LQ=;
	h=To:Subject:From:Date:From;
	b=s1AyBcmVKYKYODggyTUza690Z1eFn7D+C8wJXstVheNSQ/RIF5Bg9kxHBHTfnvt0g
	 wGTwpVngaSSu7w0dwuIB0eDE+xm3bkCAKnREVKFNNpDQfqPHRtkyzXkM5vPdD1yrwV
	 1MamRfOOyImUre3vhfB3IT9DbO0fhSBrv8VwFUdDdQ05tG+bpIFHIOZP6T7QC3jQoc
	 YnTbTqHgmBTwY+uC4QpkqDeCj9HQQbU+z4y74bwGnjCOh+WwtMqReaA94bdLdb8d94
	 2W69LlsJL9I6NRL+JFdffkMCn2ya9bDbCvkoJmD/cTxcO7sev4kQF/LdnEesiLEhJt
	 0d+nkPUOll+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1ED3D49776
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306675365.5461.15189761873900769669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424eef2a011e18ebac2d4a0ee94a47b63425c651ca5b3ea2e99ff6cc82b39607
Date: Sun, 01 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733066753
