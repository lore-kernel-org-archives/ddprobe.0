Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DBCA5A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763780514; cv=none; b=Jfhl+g4v7JexAoE73NGOf8EPmqlaX3zGQ/1k7YbvrncaM9X5PPs4o0nPPg6JOAO3lu9LF7Qfz0KKOEbBfj6riaFvTeAagqemh+VgEuxG2RV2VUdU9EsUjJxtYG+d8m4GFVdHG54fssB5TTJGhH9l5RqAawiIFzSiw7bjeHIYmzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763780514; c=relaxed/simple;
	bh=uHYPQ4UmX2p/IaB+fjvrJaRFtPzZFHvxyl/CppkqL5k=;
	h=To:Subject:From:Message-Id:Date; b=c/2g4T5bgrE1jff7uqwp7N0iQ8co+anaFfxrLXCXEeJG2m+Vy/nXzaggVwti+i+SHfkB6FW9OK8Kmp5PssQcLTWUQmunE/rkgTq9i+gQA86G5uM8PJsoxFkPuaxyZtaVDFKABsiE0GbboC516jyDTSmfBYfv6hOyXJQCE3OvT7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDo/WXkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDo/WXkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C79C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763780513;
	bh=uHYPQ4UmX2p/IaB+fjvrJaRFtPzZFHvxyl/CppkqL5k=;
	h=To:Subject:From:Date:From;
	b=ZDo/WXkTjlEVU3Udd+6dD7TzcUw01vTjfTpatSLV/fjIXH8TH0Zd/COZkzKOkQUh1
	 5cIzhtijpRUIr+ZX7BhMx4VybuWBQUY1Xw3ysZzyb3EQGO27uxAsMHOOeDYbOXc6U1
	 kJuvDYPA2RZDy8XV+C2e32U9Pp7OjVN9B97s6O/iuOr61JO+vFwJOeTVJZDhWO53Qd
	 voOvoo3IShgTLlmqcADnbus7N8D3vu+rd+0YM5BEWu99jS91gZ7vU7XzpmU/rgOpG2
	 Pv1WUQLIi3p9Ryey26zvRXdpJJ1MYsfsli+fD9fNlhe6c5XBfern6fioZwmaZOE3U8
	 fJQccw42C1p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94397CFC504
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378051359.12628.12714726028441739789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1b77182babaa7057dd88189d5216cd507b9743db0ca07a2725aaecaf27b911
Date: Sat, 22 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763780513
