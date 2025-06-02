Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E47722539E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748874594; cv=none; b=YvfFwurpYvcrc0WUb1SlOme9QSp66jqqeRG6JNMrfl/bLXooWZ91LpT+Kr0hSkNWjXy3lcFihTP9+wVvGqUOQ96YRcHN5sKW4n+69gJBQgVDdzpvmyI79QByiNtcI215+kSqidVbGVh1Kx7VKKQ5mc/YQn6kX3igh4y9UYKS6Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748874594; c=relaxed/simple;
	bh=ZWcYY66ynP7NC5ejxIIDA7Yjn2w1NT5uaQN13XFIbc8=;
	h=To:Subject:From:Message-Id:Date; b=VVQ4NXhOVkJ9TbAHnbtfa95SHatZDiQ0feHLEsZVWp9ZDbKAddW/aWsobuQpmkreeFJmaySJ8cObfoVKURDYiUpWILNXzRGCGETm9QI3CmJ6MjO4zCHZAtk1SOM4WQZCkUjR2BCOM6AI8eQ/BgkznFD5u0KJV4+KBjlbqWpzUaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oliIBWZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oliIBWZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F0FC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748874593;
	bh=ZWcYY66ynP7NC5ejxIIDA7Yjn2w1NT5uaQN13XFIbc8=;
	h=To:Subject:From:Date:From;
	b=oliIBWZpRKxIKpGi5AwuWfUrNIPDyb5V5BNEeTMv/35FoguiEemU7PJVSvAYBvhaC
	 l1WjqGsnL/ynBoologJA60wRvouRoZin0QV3eigfW9f/qpdNqRY8mc2Vi94y04XHJ9
	 e+cZsm39iLSyKjPORtaE3JC7hmQnqxQJIf5EeoWJhKtvQ9GyQkyvMoJrOF5tQlBV4V
	 /ZE9JxWtQQJldSQIbaX1etBx6LaNFFbtk+0YwMt4c7yKOaq6M4dqjsOCIEgjWThrKK
	 6g/VJlD+yKOQRz9E96abJXK4b0Gg68Gy7HEWMd6a4JO+XagCieGVwvx0UROX7U2wKP
	 AEEt1bXso1tag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3DC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887459360.27934.15987071074998230902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecba874bddf14249957f57dc4a66ffa8c82447b75ad5efe1ab691d80963b0402
Date: Mon, 02 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748874593
