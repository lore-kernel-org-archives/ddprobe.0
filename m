Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354E22FDC20
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791304835; cv=none; b=HI6eELr0VMj7maWPPWgUEpCGbVjMAVxYfOmhBxwCwVNHAAhGZv8g3xRAdhdqZ9Ox38PtipA7k5+5nM3H5ouQm6gVQJ6Gsz61LCr5ICzO1eAfWw+Egm7w76AvUPBdMyuQaqApOi60OAaNzXM6lyakYRdgszUL5YREM02o99RNxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791304835; c=relaxed/simple;
	bh=zcI6MkyQfCmlOB6nBExy3O6D1ib2sV7tSTSPd8Er470=;
	h=To:Subject:From:Message-Id:Date; b=hhD4qgpXrDg3T7n9OznvJZ3gjPACP0SEuvJkHuFHqsEPaS8lFIXwD6KfkXo/EEtg6X1DPFs+hOFophWfqrGJD1KTOFqlcaPSHBcGeQkGil/RmB9wV1MTTwNE035AnhwzUsQZP+9mMk6GKaz/JwGuZj0nncr46RGcPX/nF3meWjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFDt5upY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFDt5upY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49BAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791304833;
	bh=zcI6MkyQfCmlOB6nBExy3O6D1ib2sV7tSTSPd8Er470=;
	h=To:Subject:From:Date:From;
	b=oFDt5upYOE400XQvIqGWmrZrXe/UneO8XRaWlkm74zuSMzX6T0vipANzY4JtetNbe
	 i+iM1Y10JKw+RxfxzTz3pSEmJEjMxC2dM/tLEE8Zk7rtTsP7U2EFVBpXrN3OXpfVXP
	 1pgGZHjUruQNxaUd6Yws3K2cuCP+r5YGJjLMUbBcUQiPL+oHEKgEJ4BAd/O3aXRLNT
	 eGkvB5oBOf1MCSgOSiJ0Fzxxo+YgoNkLNBvoHAPNXcPscP3v64CKUQj8SPuu8RqPAh
	 YzY9gD1yk5PbKascGZw524cAW6FzTv7mAFp+QKek961xLYf2+vDZji+UaL83ji5IEx
	 2wrwrOvxbSagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF02CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130483368.15127.16400564762121656888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e136bca0cebe33b98ffefedef4d4d496fdfcf0b706ff41c56ff6cd3bf73f67e
Date: Tue, 06 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791304833
