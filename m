Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3F347F3D1
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791137434; cv=none; b=uKM9Ts+UuanjdyIoCy+idxI8gwI0W0n5AM68apRK4WCeScO5cZS1Cv26cb64nWeXcRoix/mstObIT5kucYVaAW0RkTlXQ48ie1W7er2k2WMKEMeak4Nu/jAY27GYyOiXR/RIDXAWknnDhDJYQVsQNs+DHy1yIWKMfuPWAAfg3AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791137434; c=relaxed/simple;
	bh=EokPD6GY+Kkdv4+1RbCd86tb2GyT1EeUcTP4aVpikRU=;
	h=To:Subject:From:Message-Id:Date; b=FR+JGJ+H7b32T9kcvy39k3GRH4/DqQ5pms/+RT8qtYKTtVvlrXBT+wjnisL6X2e+r8+a4MeCRvLijGac85VRbal2Mhu/FyIABAGclofxn6vj3wjsf7sl6NG72TeOKz/L7E+GVSESwM86cuQIdFCW5opD+72jxyeXQe8yEOiluOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW+EJ9O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW+EJ9O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0699C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791137433;
	bh=EokPD6GY+Kkdv4+1RbCd86tb2GyT1EeUcTP4aVpikRU=;
	h=To:Subject:From:Date:From;
	b=rW+EJ9O190Ow0Mw7d4hu7qvMZ6b8sA7CGDahvyGrXbBP8xWRuwIoz9u9IM3yNClOi
	 DwW8nyhBaLgias6MqLm+fpKZiuedTeWNoM4CAmSh8DYu/V5joafVGL5Fnp5xIGcYzY
	 2LJsKnXAII3LfP+hUYhuw53AlezlwE0K0Fne0TqKA8hhESdFmtjg5DfLmdtnaw4j8R
	 spz+rylkhWSDBbE0yZa+QTaWWmx66Gd7ZdPZNdT6Jm7JoOvgu/JtixX5XIhvvPkWzH
	 VOgqbJgZzM3kpVSPz3Xr8OAoBE6hDRehEsASA8p0tzY2MXZfDrOpfJ2CrpBXcbfPud
	 lMfLhoh9TAOqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB438CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113743369.5116.6699478578884891904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dde65b4ec163a04fa9ac35415cb31a20404d10de83255385c2bee40c876b9a9
Date: Sun, 04 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791137433
