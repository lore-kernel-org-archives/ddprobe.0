Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202E6DF5C
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728436554; cv=none; b=Q0vPqJf72p/h232i48AWjGbeq0PNJBwHKmDp6R5ltubNBxrNil38Gi6ZGx4g/yXzZ4T03e3LyVp6eTrA0lQTv4xi3h9xhWw2HtlYIUIicGvftQXNXAEUBXHqXQvpdVo5/d6GKuYyv5nqIUfXvELZn7xYUydC3XjAu8RBcLFT9rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728436554; c=relaxed/simple;
	bh=hMVteodywyVVajtIz/EaciZxeJbE09Aobvb6mTVGB/8=;
	h=To:Subject:From:Message-Id:Date; b=BwpNu5H+DY5cB4Jvf1vkVcTJc3jp+nDfw0H3Z1bPjEOeeTpum7r3FjkrW9VwsI8XxjOoLH5Su7dYHEOFS21HSHK/W9/lYAW/UoBT4Y1GSJuZKAfQ1YETGocX7upbTpsu8Mf2coUFEqGnffUxIRuj2Y56jdgkN1A32pzHetar4iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSzt4SDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSzt4SDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3367C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728436553;
	bh=hMVteodywyVVajtIz/EaciZxeJbE09Aobvb6mTVGB/8=;
	h=To:Subject:From:Date:From;
	b=jSzt4SDHkwm5KfETE9PYhOYEP+n7gqcX1psMWUf79YVrg0rapogObVaP8wRI/lXd3
	 uC5G4bf9LAX6ZAwfFArG0lmF+4Gglfdp0Ihq3JIZUWbYCmi20txNWtAxixH3A5kMdS
	 daCvQndxu8ZSqUmySsRasi3RlMS3xQmfZKq+UL1YV5lLpO7O+BQwIDcs/Lmm7/WIeo
	 PS+wwJQHxcg6b6I3z2MCuW57j9MnXqeIzbgLQY1EW80mLqn2hrwX0UodEEAWko9Olf
	 wM+MZfBdRhVCUVOOtUmWfg0vz8vKHkUjC2cWuARJMWK2ONqm/zeCrxS4hz5cPzFzoW
	 8LUWG4+cu5idg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E139CF042D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843655361.17678.10311008374611695494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dedc49423a40c568e99e23f0364bbd8aa415e25106b77136ce056615e02aa0
Date: Wed, 09 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728436553
