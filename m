Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125A422578D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765353174; cv=none; b=mV0avjzYB21AO8En/KdQXOX7/xrtBuXLNWYU+9oVTQPERqz3APv4m7vZc2BDB/VCy5ivsG2BHbASk20eW46Jhf0m1L3F/jjYkoLLhSe6NlW722gVXRoBovkGK+YJ+/GHy+/A+Z5eWHmzyBb1kirvSRMSp9MXv9l/14GRa5uXhNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765353174; c=relaxed/simple;
	bh=M4TMGi/8AH+lpKt+jk+kW7iP2OA45FjySNhb+4P6lQE=;
	h=To:Subject:From:Message-Id:Date; b=ZuTKo4Cw29K2knU4Uuqi3qxBAlWTj5THKDDoxACiVhammwoQu0poJk/xn1iYPZPTMK9x4/aD8PhF3M4b1HMCFtZTRUY2We6AzZ7laRZ2Lx21phKfQ7j7hY880dwocWsicBoVf5UYP95txIzdQ2Nbf/SpK7+vF5zGFVGoaIqOCAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeK3zr9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeK3zr9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D70C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765353173;
	bh=M4TMGi/8AH+lpKt+jk+kW7iP2OA45FjySNhb+4P6lQE=;
	h=To:Subject:From:Date:From;
	b=KeK3zr9DPYAAzOzFjuXsopi8sdpavZa6sak90cQNeQlW50lL6ixaBI1MX4NEuIDNg
	 iUlbhuJwgeD1ge75hkroTc6CPmPhPVud9/du/G1+YiQWubIZZ2eLVzOf7sosUZSSr+
	 TXeeW2x6SmXwVsuDKnMAeHxQYMo7fgYNLbjHNAnDaZkQ1RF4rcNYop81JIVKm1BXj6
	 X3F4LTDmXz4STLh57JYX10w7VhXK8xEhFPeosc30pmSvM7Am/kXCbTpY1pmxyGZnKn
	 haO8W3WtYZyutNw9SagizMWYwjhwMyb+Zlj4fE9CDfN+Qcg5g3M2gWsXPwp+mBbODj
	 8BfI3LQ4mSELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD5D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535317358.7386.15855814912459722316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2227e3be47804029d18600b80707b9905d3a78aa153412386fce1dd813c9ce
Date: Wed, 10 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765353173
