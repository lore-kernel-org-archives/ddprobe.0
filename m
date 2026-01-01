Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235282C1580
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767267234; cv=none; b=AhA4bqLf2r6A0gOtIzSkRmVaPfbhDwkh5X8lVNMqbEgMck7YfM3Ws0TixGuDmTj953uQfmp3vu6kLo1BJFytEBclWd4faLdDUn0BLKih0EfKbxeQmvXN3uxyRAOIdT0SA33Rjy0sqQlMQRkx9yY6LYsuKTbLX+sohO1hSHz+n1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767267234; c=relaxed/simple;
	bh=JNcVRHcwxmYWeLj86Li0pqm22ECPGLuCLlvYGm57c2s=;
	h=To:Subject:From:Message-Id:Date; b=o22qek0ocXVJ4BIQO5vuXVK6v4HV817PI4jS4LzF+35GZNMZX/Sii0zDfZtlvHGnly/0a/cMaGuDYTsPQvxtvMi7RhSjJm2+rUNLvDaTjrvrXrXPYzOtRVnEo0XRVghnP1ErhasDQDCtYnXaH7ia0szvMR4xa/mQZKH9lkoOWRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP/smQzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP/smQzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6750C116D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767267233;
	bh=JNcVRHcwxmYWeLj86Li0pqm22ECPGLuCLlvYGm57c2s=;
	h=To:Subject:From:Date:From;
	b=SP/smQzY4VGTf1k7s1ANVLJp0ZxZA3H7NPnowthLUhIAj7lm2mXhtHQ3+9Y0Zka/R
	 EqIfqLakibgUOiDpG6d/CnR6LF7tnCaAjMthUt6YCRJ+BqOi92UGWkcEECTi/rPyyG
	 4/d1adCCMEsTMtUNDPxcMP388AhovbyTw2iH2vhuYA2f8E6eUjASYyvmHkE1i2x2af
	 3TOBZqar2O25wsn5yc0K7poVvnn9+3N/khU8UKtCLUagvoR1zi5jOaFY60U54Foydh
	 hujSmXUXp/txiH8ZG+a3bZPEypTslbGN3lY0JMkU1kJQjNlAqVecNKY0Ijif8kowXS
	 X+6rpcJISjvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96060EE57C5
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726723358.21140.2504499150623522763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e894a34c415fb9d964820d55aa12cda72842eb3e6e22fc08ec10161ee78443
Date: Thu, 01 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767267233
