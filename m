Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E720322
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767483834; cv=none; b=NMDJROxNS7pOBi401PIFhs/fwvI7rpRw0hdy0rYNE4ztXOC0SQ7BaJNzmZaV2SN2ofVju4W71QNnkOfTnnT4oJqa7G/yodfSobijEsuJtrn1gT4FUtvAx2IdY2ywywNl4ZAubUIBwzMwHyivyZF+6LKA+BBplgHau53BPrxeU80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767483834; c=relaxed/simple;
	bh=OjBa39EepsAffdeIhT+4g2AzHJ7ct3BizmR9ujNuxyk=;
	h=To:Subject:From:Message-Id:Date; b=dGGMLqRLDWCS3vePEIVeRSW1QnRyupnLgfXxvbZ71/6l3RbZ82oYvSZxKdCV4QLXPqv1Yc02461dSYNg6eCBPlb/igqi0gjejORQFPyAar/iivO5rGq1G3YCg8qhLH86toS/GlXdyHrrHnqbyM56X2YeHtQjSHDiNhLUQI24YNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYa8UDvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYa8UDvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5525C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767483833;
	bh=OjBa39EepsAffdeIhT+4g2AzHJ7ct3BizmR9ujNuxyk=;
	h=To:Subject:From:Date:From;
	b=PYa8UDvv39G4jBx56zf9EohmF7jmguJb9/A5+Q9jSZfGvUOllYeyYu2XjAgnZ/fth
	 gEUG10tlVoM6KC0orFTuWyddm9udH/3mAIeGCQluMkISFR7PYc1Kvp5nrS5RXGpt+A
	 Zjeb4/ZaKmI5Y1eEIpdCkngjQ8k5wSwrdDEQZ+aP2CykaItuYhtTkRtAAjD1S/I0uK
	 sf5xS/kITdCLp740F7zvt4C7oKqCZmC0xmd8Ol3FkW2YNlgAXkE/Wt5Xk6Fg1aMHxZ
	 lUGXosFEzQ1a77V44FLwg8qafOk92HEEzf7IXTsFf9pZEf7comXvOUN5E+Gz/npwnF
	 aZ9JaA0DVs8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922ECC2A060
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748383357.1250.371119937555537971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcd64ed74680a268adee3ad8b708656381e8e92628e6c7713d4deed362647ce
Date: Sat, 03 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767483833
