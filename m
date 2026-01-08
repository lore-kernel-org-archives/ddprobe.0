Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EEC1B4223
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767900834; cv=none; b=XAusrdy7F4n2rnF4WMskAYkmXVoUJGz7UoDUhXQKpJwdNIiQppgL/grv/pWAMray+eNUq659FWlwovGa8ozvx4dvt6XziWTbXijrMxFvlzK86hHOKtZxAHuiOV4XEsqrkTisnlajOkefDilfDLgRLqIZi07qEx6TYgKpR2A2BjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767900834; c=relaxed/simple;
	bh=RkdVHkE7Wyu0VFj/wmVqLS9pjU3Q4/RMXQ2NDs8Qs0c=;
	h=To:Subject:From:Message-Id:Date; b=bARgioLNB8z7/4mm0Cg02onILV38W56cx1yZYeZywC0i5n/8uUfLbDUu7fNvFhRgwGBkXXMGmEnnhqJkApMaXhq9L3qUNKGSYs4TtpBMsMFOY7iOHUsxSRwckLvuahDSuU9l2scDu0RucjMVEjZJVV1pgIwPoPUPXesJGC4SsRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ3hi1Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ3hi1Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767900833;
	bh=RkdVHkE7Wyu0VFj/wmVqLS9pjU3Q4/RMXQ2NDs8Qs0c=;
	h=To:Subject:From:Date:From;
	b=NJ3hi1SsDExrWjrx8qv4La9AiA1hBG49avNB/E07d4eIoI+PuaQeJ1DUv0LsUOY7C
	 ywVlL5y56xA+5My2G8WniXSv19LKulVHXnK43XkwixTuh2gTeuwlMdxIltlv6Hultz
	 XKKG0OCJU9wHKVb8cq+VAN44KDAlbugQ1jPhwrG1AcZyGIlWkUypcFPbSvX8TZ0rnu
	 FApmydGnnZtZ+ujR+1+jdkyO9czezPuNVXFJxh7++6CfsUDAp4wr/ar6fQ5L2YxrZS
	 x6yvsPtc7Np7G2DjuyT9dW5BCikH/TWGbiPG9NH5OlwnuUnnMC6emPUcmhCrvNb48n
	 tousmaOg+JL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25FD1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790083357.25946.2872631237346482794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268e8d2e6a7cacf4345eedc2be14a669809c31c203805a8d0988db317edc00f3
Date: Thu, 08 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767900833
