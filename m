Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC082D77FE
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756879794; cv=none; b=bYO6ANxMRfMOviRe3rBvL7205UT8kWQ+KzJGTZiLvIfgPp6RfmAkJL4TwWPyq6HNEIy2ExnUa/JrAF0/l6ft31nl4nx8NtbdluvnKwz8tar8agglwipirxSU5gXV0VfKHVqmX7kiTqW0630fZcLmtE4/3Np12LKeMdywUrphxfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756879794; c=relaxed/simple;
	bh=usLyONb8iO6+ZxuoGtDaOEmdnbwYmz97gvcU6BR5vdw=;
	h=To:Subject:From:Message-Id:Date; b=RPob9jI/2ntlnkhCu7r7L6KUFXtKElwzX7g8dnBsGWrGeji6uGXAfQECgLQdHVjJFQvToFaeprxGUeDvOxAfC11ohnj/W44xEl138Md9uxYcyO661CWgCZDGbRNAQD2mZbJIlSbW9dvnwG7iHf5xOpJgQ7IcSs2abz7oUDGNjaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osi64Gfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osi64Gfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756879793;
	bh=usLyONb8iO6+ZxuoGtDaOEmdnbwYmz97gvcU6BR5vdw=;
	h=To:Subject:From:Date:From;
	b=osi64Gfyo5pR/sEqCTTbiSFUxf06SJZ+k/sTxt/dU9WHzrQWsyeraFs+WNnT1GUAX
	 mBLS++I4UEkmiBjMJ2igycMSBXNyapXFnYFlp6Ef4nHkkP33OMGVh0oIZjwSGv57xj
	 zTv3w9KcgyzWVqOKAmQ5MF/LPMLdrdqSOKBPpcGE3quR3nI4BXHi6wK+em9MyA+yyS
	 fEI6O/YZuYNXlAGtRJ9Vzk5tozrSHfQtDLmSV5Fy4alOepnrxQ0sx9a/jH16QNkqTe
	 lxiM5oHyV0l/JaDLF/j4dp5wp4DZiv4Su2wY2D8r8mJWM5VgjyiF8Q6zaLNM83J6LZ
	 kmjDZ2ruzdYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02ACA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687979357.734.10347527386104365380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbbe8273fb2637d4dc916ff0462297dd2f4c785211b1723b42b484fbd34f19b
Date: Wed, 03 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756879793
