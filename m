Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE8335E1BA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788729034; cv=none; b=dI8z0urUCJRMHtenK0eK6urB1bl9g/nI6DOGB039q3yX/5lSRkxmraQYEX7aDy0SYIZXpQAiGxHiCCFoRNP/ufuiu8VvFn4iqAicM6SZ1N8dH4lGAVjt2MKZiWc+P2JJi0CQ0JyUFRMch240HTaD0tIg9xgGxSWsheUVx9dxE0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788729034; c=relaxed/simple;
	bh=YHaL6zI4tkgIlrE8knSyBXGYvlWZVtVVQzIvRZhSZt0=;
	h=To:Subject:From:Message-Id:Date; b=chELT4QPjf6HxQQ87rzyruSKi8WOw/Gefpk8juZI7yqID/v8VfRJBvJGPu81OcMi90Tn/ymwfkkNdegNGCOEjDz+7oMP9OYLRyaaXiCc7q6sw9gaM0Ban8wvyeV5+rsHEIQkbJvgWaRGjreb8zc5mQVd0gW0BqwXlZqld/0CXtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFsJwxXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFsJwxXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788729033;
	bh=YHaL6zI4tkgIlrE8knSyBXGYvlWZVtVVQzIvRZhSZt0=;
	h=To:Subject:From:Date:From;
	b=GFsJwxXAWnN8QZR0bfL8BWksKGWkU+9O6BOLf/VdL8h1AtvFEFosspDg/xvuniNet
	 F8xWMxmT6zdarMjwmJymvuxqbYFEaJD0xeS+Iw8CP3NmoQycscwvit6hkGNb0grtr1
	 l+oC9ytDjIHP6FIYMmAjkSTrbPNoVuJE7qFUQouTJQOztQoXk7fW8N8ft3hGU5jCU6
	 lTjAUQCGohaPggXjJm2pMteY/1kJedwlhh7Q0pjjRy6+U0jDDpyal2dsmxM8Ky5Is8
	 C33dcap5/p16zSJSYpzwKIvRSxGC8AWycwulhip2Gs9l+YvXNhmPxd+cyq535I6Hjy
	 B1G2PLfcexiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B7C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872903369.13419.5368231798778004403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c95ee17a676cdee2cd1a0eac82c38de8853c5a63819c4d4dd3f4c8536b60e7
Date: Sun, 06 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788729033
