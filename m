Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF082BCFB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753729794; cv=none; b=YfUnhz/+0q7E8QKL/ghq4aKmMQlMvCkVd9+Q3K9kW+hFFoW1DDiBqFOq8CpzMZVcII1VsjNM3RCU3OftH+D849F70GJlc3joy7JrIOAHFgYVRFqmAU3dGu3GvSf6mXWl5jtwQaqowtcRhxuXdDqCpJn+9iEfkEf7muR60hE3wgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753729794; c=relaxed/simple;
	bh=57Q4dsN1E+7xJWCgiF+TMrzBZIQTDqgRhK8WugsM3y4=;
	h=To:Subject:From:Message-Id:Date; b=lxXbnK/DE1rekDlw2EeC9+yZ9j6YyULKpV7mvW6sKm3ejqI0NibjrP6ma4dloPN64lQrvuCOgfYiMn1UWtMECQ9eZ7MhV8Xmbmyip0aXniyb3pQ38O+39hDmbQByfR+IQZtPJQ+LeY8s+V1T1OnuYAbe9B23QEw+sYJaUPloatU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYiI97tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYiI97tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB42C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753729793;
	bh=57Q4dsN1E+7xJWCgiF+TMrzBZIQTDqgRhK8WugsM3y4=;
	h=To:Subject:From:Date:From;
	b=fYiI97tldeyzXi70f/pCW2Y/36Xyjdh9h+1TPywWWBdEWp3wiXYFhZeP19rrzJtej
	 lTVu/McZhv4tRfaaxrKdVFChUNnBnZNxsrKIy6XY1lN08IX1kA6nkItlswl8/DDFUr
	 LllwtESpz8tIH/i7VvrPC0+Tvb1BljrLdpj9rrD0i4qdPRdixCg9IwfMY6k1u4/f3s
	 mY6GdyNzSoxEjqKS5R/e7mSiSd56kmFkD73vRKI7KcnoBxUB19Y1PBnrSCj8xeZIHW
	 du2N0CJJ0kHzS24VASb9IbP7/j23g97J3ijDJEU9lB/z3Q+E7ZYHMzx7x8C+TjYOdY
	 K3d393mw7VxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F47C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372979358.27905.15699572467051983679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe1f1e0818293bc29f86c6904f58832e7912c7a78b0ecb706b3c630fbc082b5
Date: Mon, 28 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753729793
