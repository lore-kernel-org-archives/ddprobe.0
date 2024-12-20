Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359F18634E
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734678954; cv=none; b=RULMdyhZBqAvH+1w81Oj/TiJK7iNHYWRmnEf1kkRIZPaObtXsP3/fd9ZC1rlEWgOAuzHEzeegoLKGfek0itgxm3Y7Ro6ywfCHUD+cQvgMYjgWltrHIqS7mq9vo0f8+OiKgbMW4Eg9n96CHDC5/Teu6ZQghpZoDk0Fmlzxu1g1ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734678954; c=relaxed/simple;
	bh=jzQPLUq8eqzVggypfuY0Fxir4b9SflSMXc1zmGxBdhg=;
	h=To:Subject:From:Message-Id:Date; b=HeLhgTbCqaD+FuBPC68+PvOWj+zW2uKLEA5olcpPy4zpzukHpom6k7cixe1tfD1lnJKr2vPjweTzQ+chaxcyxQv4N84a2VcYoD3jPWfA8TNoqkhJkBn6q2tZ73FxGGJgeUJbpo0n4FnjdUwXp4MNHc12y/+us+t12GXlch5oTl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck7lKue7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck7lKue7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A9AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734678953;
	bh=jzQPLUq8eqzVggypfuY0Fxir4b9SflSMXc1zmGxBdhg=;
	h=To:Subject:From:Date:From;
	b=ck7lKue7kjQ9iGXNCebZvGaj/3siclb8Yp4xEK40XIa6n60L0UKkXoVOZ+4jIpBuK
	 skIQCpbFpYSeCoQ0ZavBC1GHZ+95w3edGan+kqMn8J09pkw66aRezbesyxeG+h2B/H
	 ++kmqRq8vfVGBn9A0dVo83kHEgiigh1WZsFArBWzxaSIG9B0l3aP9FN4g09bD1mjuR
	 thGcFVnWyfMtwLyCVsD4lXfZkKOxv+yXnoqVCNxQzEDAzWp3qvjIYZrZu+/gKpcdvJ
	 2lS663Zn+Dojo6X6sOei/IZY0rzHfs2OVWvS7Dc8UmUmkReQRuY0UdjtlnS+e2qkEt
	 DIxa/77bbU5GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB6EE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467895361.26501.17292206235800924805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5144671cf2314f733c159e6af75258389d2c6173d0d7ebdd45d94aa8e9ea2f77
Date: Fri, 20 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734678953
