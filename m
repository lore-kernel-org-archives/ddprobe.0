Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1528467D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764903774; cv=none; b=Vl3lNIMbDog748RIVzJL5HE53uiQPITjFxx8acufp0VgSB98HLh+Q4RbYApXq93z7tALeHCF3pQYaRD7iSi5M3qwUJ2uWSSpPs9i9s4r6DvLiBihvxeu8eykI18YBbf29iF8Odl+PrynVwTbJ5UfYmF6yZlMdzV7x+G/khq/dGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764903774; c=relaxed/simple;
	bh=q3NryVn4Cozi1/CrBZyt1uIFiykM5c7cfnn6YdWNhdI=;
	h=To:Subject:From:Message-Id:Date; b=Plv6CXuy9KN+ed7Yny439beEiACnceePVZGecDszJw2M/SSE2rfUift6jczGxEoB+hNjDEA52+L7cLk/fIVPINLEAU2TuFugCsGayGmuffVr5PyIUDiYmnIyUFHsm5DyjILt1MmJhgIa4d4tW1k7jA8q5ksyvyPmYryvo8PNaMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTn1EzGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTn1EzGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2245C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764903773;
	bh=q3NryVn4Cozi1/CrBZyt1uIFiykM5c7cfnn6YdWNhdI=;
	h=To:Subject:From:Date:From;
	b=UTn1EzGZRSwJGSi9+5ABFBXuf797eA62vq/Vfj4oa4vblC4p2K6MfcOT7IoumglC1
	 pG0Ryh/AE/20TG6OVsXPGZDCe3vOeBNnC15+viNt6KDuvgIO6mSVoTdQeN0QrRHv9c
	 xGV9fg1ipiFu6VayL92dDbKxw6r+S3uXUW983DOsNjyQ2RLUds493APIBW7tkipHld
	 dNRcN9Xn5XrEPw5/AlOSZmvfLU8T2+auWVQ/i0OGxKwOsALfcCsXEszCP4CQBWZZmi
	 x8TZX2R3e3ixtkXY3aK6t6ViWvuv5rspK+vH+C5ALC8QA77AnTZxXFOD3T7LGC/ebs
	 bF3ryhSS6qhGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0ED2A538
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490377358.31488.14793832372777321545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73eb0a1f228953d3c56d787157b64ee9e4df56818df3d4aafa7a52cc5a30160e
Date: Fri, 05 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764903773
