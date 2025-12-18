Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2E333D6CB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766094234; cv=none; b=PYvCeeRwTWE9mKjNlJYabY2+7uCkK2QV/R2ulx5WcN0RlfDDzBbt7h1Ji1QhMzpY+OiTjFv2vZKyQFh2PuOph5OQiU17faLoodWTk6XqUH/6hf8IyL7zolAOYeAFcPajQ61Yw6MEXOo/Ju28MlFDpBqvWOuo7f55x7928GFG89Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766094234; c=relaxed/simple;
	bh=7uCUp9h3WSxB3rH3Ok1ZR6YstzGMpPxiZikKfrLLFJ8=;
	h=To:Subject:From:Message-Id:Date; b=WdKVSJ2hv/8MjguB4Z86ZsoQwmZmbZ2cOP9myBXqqFMU1svwdq0C1UNOaboarmE/MLH2qZQPSCUzPo4ivdVF7naGIe0FWv1z04cczt1BjupHNoK38XZYXm5onI05ZR8n1aoi+imSRxFL82JklKKBseBEYNwVK1CCWmg+nvuA9IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDeK+2IY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDeK+2IY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A5C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766094233;
	bh=7uCUp9h3WSxB3rH3Ok1ZR6YstzGMpPxiZikKfrLLFJ8=;
	h=To:Subject:From:Date:From;
	b=qDeK+2IYN7Dt3M5PGxQD4dd0OESH26lg5TktYTjNcJX9yjHHmdkQ7jnVPrejIMcPa
	 JBz6rc1PmIUjYCit95EacIVKDtmL3UABIf2YAKE/MgdL6HkOFzwWVwpGpdhMNoT3/r
	 E3lT4eH0drnsxrTDZInVg9GYwe9HmE1OjGVLe1ixhvm+HiMXuPq9PxYmiGbjkuJIkX
	 rwUEJE0MeXhLcmyFm2o5neQDyA0jY0+dltJhVP6H9hhi4Re1UywPVBERAgt/+XuxCG
	 EH8KM7AOyD7IloUzoD6MeKJJ9aYH2XLr/fsqM4aQiv+OGqbJKOmoEgdUZ9XZVnFNnV
	 0rX2yb87/0eqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93485D711C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609423359.11138.10042656409349289627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe179eb1f35b1bdde72149753f0d507764e5c3101a71131eebeaa722b54aea61
Date: Thu, 18 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766094233
