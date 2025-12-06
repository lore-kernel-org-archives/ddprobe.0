Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8B11CA0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765006374; cv=none; b=s4ihfmgZnJLQEGiY0Q0BEfAYzhFw84uBu6zD1JRmYKbfbwDTCNcW8xdNMLvlsKwEHm63p/Qyevt18lGcb6yr6oJGDuGaAPvjVGsN9N+8+FtSEkpNXr9Aif5fHaSFit3KnFCO/9gdA9d5TBWPSduZAOh/k1O3rC14iYAP6ShPCeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765006374; c=relaxed/simple;
	bh=60K3n6pu1UEibSkf0eGU5wsl3akgiISnPGGgPf7U6Oc=;
	h=To:Subject:From:Message-Id:Date; b=IsQld+v7a2uQOn4SAonlNpwfqxF8fSpcmFauk+w6Ap3jNMMTAplpHFmjseR+V0BgjHrHqStbunrKyAC2ZRfV9V8dZuuIwyELhBI41rtnsRmh8MitbUDt4+0DmypAuTKbsM5wn+tCrnzjQOPcsKGujnPkzSRZMnQhzRBFP5jfQ0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWghqwJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWghqwJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765006373;
	bh=60K3n6pu1UEibSkf0eGU5wsl3akgiISnPGGgPf7U6Oc=;
	h=To:Subject:From:Date:From;
	b=NWghqwJ5BkMBCXWUrKx0MzNYAjsY+Z0I2UaT3zLilBOPsd75zaz6fte52oC8NJiFL
	 DdH8QelRrYoXjOUhRJmXjn4zD5sIFB6hSShcavHJOzgV7L+zde5ti3P/nHcdqs86qE
	 sx9d5/Y68A4SiB8AhtHWcy8AiZP4OBJRJn0DOBs6yL/m9rSSDs/hhwi2xA/8DWET+s
	 42ypm2RuLk23H43h2E/JvBqAvRun34WORBADRkthYHSm8U0/kvPMxZzEwdOMZPr0TC
	 f/nu/bDOSY2eHcNVU5V8rbKInF/SJACNWxPhPcdK58mr7E46L+mLuPwdXuIfNplLKI
	 mSqWWGTu3BgIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F64D374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500637358.3567.11280586870924461504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77974630c677cae2680319e96808f871e206f980187e91763cf469d4a8e7d84
Date: Sat, 06 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765006373
