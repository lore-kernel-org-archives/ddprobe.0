Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E0D34BA42
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758253194; cv=none; b=Rz6Qt4/eusUZ90RhBtwE5eBja838Ir9mmqD1iq+f9aHlaWOXquMBNUgVVFGis/dDzO3xM4D6S6s2284QJNlp61C8Kg1iCSdIuI/1ZE3pT+7CPl+kg5zvghB6caF+gXrQL1w75e/jtGuCXkwYFLdLDHOqca82c7Uc0KsmjmBQ40Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758253194; c=relaxed/simple;
	bh=+3y7ESfItCb1dcVKzxMW6X1NR60V/ANqT9qYLa9yEf8=;
	h=To:Subject:From:Message-Id:Date; b=S2UZSzqzqgQtycd57Qrsg1n6k1I9D+8IDaidwtJq11EEiGn+t/UYaC9+Og70jxiyRXRIf/0UsT/8c0dWTteFMYkKIIz7/J83eFAJq+/6gUcjg2e9vx/J7+CwKY6Z2J6eRftXhzVIqQILKpyD57UKQwl2RMNJgxUMvJZGCliYjb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkhW8YpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkhW8YpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA465C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758253193;
	bh=+3y7ESfItCb1dcVKzxMW6X1NR60V/ANqT9qYLa9yEf8=;
	h=To:Subject:From:Date:From;
	b=YkhW8YpJSk93wytZVgqprOIa4Uqk3/6/3fo7RgCxj0YM9xcVremUQcYfPrk/x9EkS
	 EDgL60M1DvOjazil9QXHdI20B/yL5eSKAu+lzj8yc+dMN7jJjQbceGlyAyOvnKwDsO
	 JtG9TeHIzqGVC2fURzV8wAf+tpFZTMBT4vtZ8yBKwyAPDjfc3LcVQp931uY46ao5Xn
	 V9oSzVnTxmbVG1SNNRsQFjiUzh4D5JLNcCxj8IXLLzpz+Cr5bAFZDREdusAuYgnZCQ
	 dO4d9oOB8Ntsk0FM2N0qZgCfp5rAPFE0SxUqb9v11C6ZEUyAouYuQgKz4GscsUVTG9
	 +vrgnWBImzFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9673FCAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825319358.1450.17345604701288023192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88af88c60a4a14ec33da3254f37f07b8260533190718e187bbd7c4a8417086f4
Date: Fri, 19 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758253193
