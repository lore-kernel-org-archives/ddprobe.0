Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BD721C17D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763034594; cv=none; b=qdZHI3LXPzZDT1gcJz/yf9aOBa2341YObY4yuZX4QD0IxRQuX/xCGItz4G2h1mvFzvByAqLpFuVRQsDVPXzRaDfQBSOzuPp8FMyuqDYt329LOum9JrrNVxG4P06D3a7WVpbq+H7Zg/nW99KlpMCcR4RBjK9V8WHgNZA0E5nLWSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763034594; c=relaxed/simple;
	bh=2/TOioVZKZoxquGJVC5Vr66RgS4KrqJCEj9rso0Tv8U=;
	h=To:Subject:From:Message-Id:Date; b=jIPsUoBbnowx4aDg9Ai/4mqP0Ie/gSisQR0vx6SnA1rnJ3dMjsX2TRPHlgg8YJcNw12+QZ6irsW2QHfgtokK+nwEKGSF7IrmmpNi4gUnSYqEw39+edITJDZ/2Q1qBw9MDuawHRb9tE3XHf4jwKQB6/3HhXbsS03ecGqI4VStvoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTByqd88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTByqd88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98EE7C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763034593;
	bh=2/TOioVZKZoxquGJVC5Vr66RgS4KrqJCEj9rso0Tv8U=;
	h=To:Subject:From:Date:From;
	b=BTByqd88qEjkmpLYWNSTBUSQjteApOJvMOjyhSGUiu2JsgpoaDdrTGrvi4qO6OQ7f
	 DruoIWjkRdi3cP+z11Ms4hfnhTi2NguB0qvbhhNml0bxZ+Kja8aIos8RlARmJXj80q
	 l+JQVEO7cgb7dJPKYl+3fflONPUeND0fg11pGBom+qOs1uDCVlMa5asR8a947dNbb4
	 qloHMOCw5CO0urqufaCUulKweKUpTdAlljk3IkY0Wfi+321MUUoYm8KhQwCII289G5
	 nyyEwnWB6qFk4oL+rLJT9RIL8PwHbFENNGyIVlLifPAAbvVxxyIzwiiK4rKE8J/WD5
	 PjxUp5tZF6Wsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECACD5BCE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303459357.5550.14226828117578208279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7990b0970c3a235c850fbdfc7b78381f07fa07dceaa494212a88c1872941fbb
Date: Thu, 13 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763034593
