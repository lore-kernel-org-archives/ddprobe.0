Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311C01C84A1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747427394; cv=none; b=VPTeWLSvxR7w0iC1ZxiZBQ6ZNY+EQQ/z2eac2KeSJvd7rmvwAYSY+bjFRZWnZ/pipNUfAJ23V8JkIj/de2V5jqfHZeoB1rhgHqxsKA4/22GwX23ORbHlUbrS7t3znKK6bAu22V29GpmjOVf0e4IuqiPS6JjWy9yk0LUqqROdl+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747427394; c=relaxed/simple;
	bh=6GGKN+mLgOtsKXHCdkynga4bUVNNU62XJuPzXQyQtvQ=;
	h=To:Subject:From:Message-Id:Date; b=fdFdGXC2zaXQl1qtAj7TYiDVVtLVpn8UJoci1ybgZTDrEMKGIsm0X4zuxF8lHtqu4nXPeXXn+989Sid6vBxNLxzHU+mZ8T8jnUv8Y2h4XDBf/6SZraI5jnvm6F3A60PZiMgM9nFeH3TF3tF668EyzSbRv++I9Zvdi2arA5gjdes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZECz981; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZECz981"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1789C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747427393;
	bh=6GGKN+mLgOtsKXHCdkynga4bUVNNU62XJuPzXQyQtvQ=;
	h=To:Subject:From:Date:From;
	b=cZECz981/YE9/up/IFxtfPNY5baKhgfJrmxFggc3xooKCmnM+S/4yPoGZThSJ45Xv
	 5SnXx6t+o43fZXPffMVMI2HI0LNW3d1IluR8JjFjIew1UFkyV9Aa9paQvUV6KL6NJS
	 Co94FHji5vJdqlKhWUQX1CBuzasi/128eIQPmwgSapAmZj4mHAv6TKauPAIEAeS4sG
	 fcX5bIx4oenJyNeXkJ9er3JnN2U6ZU5JDGNGPGaAPqAv1E9mJthSkyBlA/T+9mW+Lf
	 xLHWqSuMaHaUzvzMBwJ9tMU2d2zeV/l5PKxMy6FBFBxA2hAqungGR7jHhpwTY1yyUF
	 tse92Ad4+19VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92259C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742739357.23398.11257956649330617878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5c0c430140df03575c727e5d13fb5094c0c30397ab0dc76f4bbda926d61769
Date: Fri, 16 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747427393
