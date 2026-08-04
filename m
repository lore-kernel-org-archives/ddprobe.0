Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395BE404BF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785877834; cv=none; b=lmYgzVv39MDc32k07t0CVlR5RF9UbvX8hc+hMhAZuygSGKqtyjRVcTj38LPRI3ZsNWZE3jIZaD/G1+rEbMrH7O8OVCsqFBFXblT9co6ltQVx9OKqQvl7PqNUjqOrjv3TyeNysf0lENskvIzWEJrktQmlmx7qcxddvhZoa1xNMtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785877834; c=relaxed/simple;
	bh=g0K+WE87P67PN0Z83r+ld+kAfvkbKGr5Lgg258RonyE=;
	h=To:Subject:From:Message-Id:Date; b=AkDIg8pbLgHFiuPDYX3gCnOlZferUivJkCgHO/EUn4JEb7X2jJs2hemkSMAVwVCRbkbnt6f0hMz7Df9qb7j1rU884l69BIj+LAPS4lllI2EOqfvTEcUJUWg26Jm60Cj4ts6HYtcFKiJcb1+VhLeFtNflx9zOhqpS8PNJGB8bOKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZPyKyqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZPyKyqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2870C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785877833;
	bh=g0K+WE87P67PN0Z83r+ld+kAfvkbKGr5Lgg258RonyE=;
	h=To:Subject:From:Date:From;
	b=rZPyKyqBXBcsC7fUknuaMA1fQsEQhEWZ06ZsvnFjHc7uPeLjU6Q66tzq2bAdfs7k1
	 sjAh0CH+lxngDi0Wm9tKzxcObxlAXKiLT/yLmweL9E/eJGViiJRoxzTDCu/JNv+Tfe
	 7iGGOWxmnMhOHC3RKsQi+jen6I0VrR3ukUKMo0KmyAqaDhmpLFBoPVXl4G9Bd+dmzS
	 a6MpgK66JNBoCMFsRcOVnTE+2MAw8wRd+6+AQkg/5eryYW4K/Z8tajlzMW+wgDNEkd
	 a1I65eDdWc3WherruUCQZWBGYIy1Qrley0gTKVU5daycattRxgIWW+pnr7PB7MZz97
	 2kDj+YThLZuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A7C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587783370.12316.836018788115087702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8522a386aa9b929cf31b4566b80b9dda99e8c46ae8e79201b6cfebae55e096b
Date: Tue, 04 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785877833
