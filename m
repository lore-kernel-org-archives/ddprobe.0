Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6114B41C76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717402523; cv=none; b=NIP0ZJIXITd76RtcSbLbdvbLMA+PqN63zs1WGvGfyNoYAYCaPvz0HJ8XDumG58WBT3akZx04daQMi2aIzAD5VU3UbiAdpcqY5rAOehdVvQN4IuYHf0onUPOcEwIU2tPJpa0072KkoPK3CNY/kreSne9YfMiz+z/fNWjawVhN3ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717402523; c=relaxed/simple;
	bh=OZHnafCjbahvbB/8guCgogDYqyrGHtsHffJ22fiAwXc=;
	h=To:Subject:From:Message-Id:Date; b=Pbf+dSzdhbI+NkPGe0NoTnAqbzsdw5UHKuL/M97Zoott94AkZ2PX9BhlSP7SeUu2cFAhpJFcK+/CdMpDdT8vA5H3PHfRDHvFoiwQBdp3HWfgDRBACCC2Okg10MUsUYnox7s351o1tJIqOsZE3FjSra2BvC1QI2ifKPo+EcZX+gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8/NPZTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8/NPZTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D48C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717402522;
	bh=OZHnafCjbahvbB/8guCgogDYqyrGHtsHffJ22fiAwXc=;
	h=To:Subject:From:Date:From;
	b=R8/NPZTdv0MBjrMsI4/mEI4UWu3HQNzEML8LmqT4MACjtMQ3h1hOoNVl/7Jl3Pj8H
	 2d8IQpWdCA5fExm6rk4XuvCa7ZmoEZrIAaeVwvxytJJWxj7irRhmJLYUMz69f2Wmt1
	 vtQ2uZAv42YgymBW12R91Mc8KbYNa2ao5/6M/X1kDjlhyeVlHY7BaE6+sbw2xPm2Yu
	 8U69WSQc5uCgz0u2lbEpHbAOoR/XL5cfK7C+5Ul0Qi9U6j/Yn/s1KHW4TWGUpvef87
	 vzbAzsT+xcoBgss29k+ssk+OYAnkWfoFw9Yml3A7Eb5byNqhXJnejbG/lPFouojA8j
	 lD/0c/JyKIh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5A8C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740252277.15408.11348638885610178096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c349e652342395780e4b439b154b95eb9e8ecb9a925560c6dec6c28b1a3cd97f
Date: Mon, 03 Jun 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717402522
