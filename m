Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235611FAEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729013154; cv=none; b=HZyfJxA/MGl3/FvbAE9UboVzdUUxlf4EghrICEYk2IPU1tqzqHG5tepzuNV45uJr6P/MsMHmiefuu0YsulqeuA4lcEWyVRUWlEzcS6OJP2yu70VC49xKCa5w7br4CkISQvEM0dc4ozk5mseMeMU89ze6U2eI01tM+DLq/Uqo7uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729013154; c=relaxed/simple;
	bh=L0HKEgZ0TIsV5Y+Kt+hoSO8Z/wVVFimd1i3dX/7Ld0Q=;
	h=To:Subject:From:Message-Id:Date; b=EhLNe6XldHRJ6JjKHTmhCO0bKprQ/QmdTicS8QhL2prPiBaCLKKHNTqf+j/8nwExvJ11+0qUZksazyqnby2H5yaHpuLLJ7LO9+8R+dcaFxoR68WwUxhAZbzKuDLnMe4+oJjgNiADCarluihkx1RbuRg40+rk/LZ1YNon++RlU30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvrve5N2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvrve5N2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2AEC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729013153;
	bh=L0HKEgZ0TIsV5Y+Kt+hoSO8Z/wVVFimd1i3dX/7Ld0Q=;
	h=To:Subject:From:Date:From;
	b=pvrve5N2tdxascmXBcU6aZUNyi4HT9mMV6+VowI1d10EAgxW3Nn72MtY8J1oj9I58
	 tDZ0rNHkzVAzEEKe9zGGrZeswO9gbyge31jU7my4o/wGrKaV2Z70zRIld17xfDplrn
	 kQVoOwLWWQmsnth5B2K0Bj0Ok3cYlu6vRWtdbju4Ws5S06jFJfjSEy/kOfjj0NM1Vo
	 w8a1FWqQJ8G22tGY6T7PuWkpmGP6Nb8rJjC4MMr56EptLP8Fk+F/F8FCRo/LlO25fC
	 1OjY4E6MNb/cwoBX8jr3dlXBSanpfxtNxbQNc3yb4LEtEf9L83dpzuIFT2x0/7hHIf
	 3r91H5njjMDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9751ED1D88B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901315360.32590.10222613416956329888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a72926b5ea4b73aecdad53b14678a0ff71d8afa54c99b82fd75dabda315801
Date: Tue, 15 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729013153
