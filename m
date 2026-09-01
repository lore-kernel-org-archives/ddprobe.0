Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A299378D87
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788237634; cv=none; b=BFGf4Njq52l+Qy0CKsVzH7t1QeUL90u23rK4EeWXGecpBQWAfkRZk+8boV5c2ip2+gDXolY+Z85zP+2TGThMXjChNpqgffQ58VvXlhBfpeOHYWvBzS9R0E9EmwasEH4JTl34mCLAxldFW/pTiForG1KTuF0sOx7n3LpciQOqi0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788237634; c=relaxed/simple;
	bh=/ZOR4oAX4E9Pl2obAHA3JS1UrEcbv6Gc5t558N1sGps=;
	h=To:Subject:From:Message-Id:Date; b=Bhn//E/XeFRMuwINMthnjdCc40wpH1T0JPZr4P7lzeZ7YCIe9dB/Cgk5JmPw9fTsFKqFWYZj9iQZ2Mtlvbx9Ps+O17j6ZgB1+T7tkpPPKTWiVXaNJqKCgkQ/rN2yhBGv2H4LjQSvxlZ4k/1YoWIV8F43Gbdyh79qSLy1RKQzD30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5umnQoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5umnQoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4758C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788237633;
	bh=/ZOR4oAX4E9Pl2obAHA3JS1UrEcbv6Gc5t558N1sGps=;
	h=To:Subject:From:Date:From;
	b=i5umnQoI/BR28rmFGZGUZyFqTyrPPgjYG85ByH+OmKdBb83SeOCf66qczlnXGHwWw
	 KF6mVtkImE/b+jkbr5hXHGx+ltk/2s25I7KSdfsjRxoXkD39Jrh6+i/7JJC4C5ovDq
	 a04VSrJnmcGLfMsrGMeMak2ih0+9GowPOmrvp/ys7b0yR3SE8FBEVt1qwVqSDUmhDR
	 PLW7ZfNwp39Q6zylaQeEeKQHw61ClsHkK7lz43+ucAUfUDGwqW6E709pF2hn39PLkJ
	 RxSt/g+fS6wTGz10vH16tQGWq2G97tYsdRhsdyjYPVNhKX5v4fRgNFhsrNH0Qk3Sgi
	 FJ3F/sOlWvUIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD341C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823763368.21896.17061962973064754819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007d727e98d07ce917b8ea49bacd78c68bba5d9b9f8f8dfe9ec05656ab42a438
Date: Tue, 01 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788237633
