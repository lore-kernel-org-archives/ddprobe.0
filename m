Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC1A2A1D8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719987323; cv=none; b=Rmux0ee3YTwIH2CiD+oB2sxMkH7haZ/J0eQmFP9Z1UBl39srRRX7thr93GHhoo+w4TCzAsvmPzoAr5IPOCf86aWokdlbNhqHDlwbx7Q2mFLye5b1rCluQjf/RBFb/30Iz0BAFo6fK8JserapoYwwNTjFaMswUb1MN7aeQsPP48g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719987323; c=relaxed/simple;
	bh=o1b+LfVyqaMqGzOMmMh7URpHV+G/jGrGPPwWzmy/k20=;
	h=To:Subject:From:Message-Id:Date; b=b+bfry28v8tD4x+2h3yBQUm6imJ3lTfb0E3miW1XmwqLwxgETeoMOdtz5AjInv7PrmTyytpajPDDDBn3w6YO4RC4qXbNCdKRuxxwh8UtGUaAA0mRvfUEkiOYYJAQYk2CllpxZdh/GwQ3IfvufBe8oO0YbABRiAXWszSng/+1ggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS9kDohX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS9kDohX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31ADC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719987322;
	bh=o1b+LfVyqaMqGzOMmMh7URpHV+G/jGrGPPwWzmy/k20=;
	h=To:Subject:From:Date:From;
	b=kS9kDohXOSMmC6I/jQ5tz16PGH2uhV9weM1aAJ1zyRXKISIpEv3mKKzxM7/Z9BXA/
	 mvADpH4Ulc9hjexYt+cPFTJH1lN2j989Wot3v9uNVHcjyihVRyE4M78BaMuM7A7mNU
	 eXlJQRGeFajWgHCQLy/GDtACsRBW7jJ4XE33xJG+VD8LLvaC+cH9ImqZoxEdDnJ7J/
	 /hr767drZxlyhgrQWC65FRjtbssya//VLt5JLjpXQgJsNV3/HlKm1f/0o1C6P1CgCJ
	 +MNvtyAwtXVU66hO6OlqEDMXjG2YbiQrdAzzmMDG/sleoEZtjQje+L4hTg1YW2V2pe
	 l1lvuSMQMfjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD525C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998732276.1094.8429445312428326606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328e1afdb9e153c06bc3664b6714e1ec295adc431adecca8572a440b09791eca
Date: Wed, 03 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719987322
