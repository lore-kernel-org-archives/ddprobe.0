Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328912D46B6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178794; cv=none; b=D7vz4c1H/Rj20CtdBch2m9oSUUsP7kU4Dh62TI9kjYb/bHIAe0I03Zf4KgZaNDnICWb1XpLT8/1sZ4uLP9LgWbO1pYYCdqO9D9WM9q8X8unSYPef3H9Kc5NsrgJskHODpp5zxVnyj5L/GLCYzW2X52fTypgk0OLWFDap8ZG3d0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178794; c=relaxed/simple;
	bh=acEKnEOZrzntEWOBq4YsCKQB6mwjXo85QcopDXCn1sE=;
	h=To:Subject:From:Message-Id:Date; b=XeLQoCRQt/DwspXZkSGO38uEdRqr5p2QYzIaCY3xeuJzQ1AXniFa1S7gaFdQ4iw9zkIzzpvAlfh05QOi28i78C1eITDocbOBwU1wZuKZGZUbxdI0QO/Jea+Sm7oH3nM10c55oj1ftQmlsZXI2rKLO0BsuUu0nQga2OXg/FC10P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUZWFlQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUZWFlQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A011EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755178793;
	bh=acEKnEOZrzntEWOBq4YsCKQB6mwjXo85QcopDXCn1sE=;
	h=To:Subject:From:Date:From;
	b=FUZWFlQpueF/MAKGUGHb6LvvED1r5J6hIPglhiCU1Wg9zkYhZVL6Nu3QzLrcoU7m2
	 BQFqM5PekvnREJvuGkdjA3MGUVzoGTo4FxCnnIALJPdyUakxvMx3nsiqqT2Vs5/Yv/
	 EfQSY0JNvXUO7MS3jxhwW3oqeAib0t3KiEUCh4h2VgQYM390ltBfQvGzEQkkA459J2
	 qx+WuBiT7EczRpdErz2nnyWgq5Ac2JRE/DuTM05VydOLYfef9Gw8di4/k3BVitlyH7
	 P0VQ8x4T2Qy7MTUzWJ/xCrzpAjK5+YqwZh3FqGwm4n2il6BMCgcCl2dPbyi3y0V9SY
	 +xrv8yPym5HFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57ACA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517879357.9327.13625650627125194470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7832391521b0c375b87cfe4bdba4b904808083430b051d68609b46d2a721112
Date: Thu, 14 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755178793
