Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3563F3C38
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729995954; cv=none; b=Kk7TKHue90/mwEL2ZN5fxSRofXzXHsbD6rHAcBRJ2ihslWvGGWs82kFyakfJUqX1BBqiMlMJLHoOxlcuM0loKsLXqZ7G1H3sUC1yGVYvU93BdqigxxLkx+MDdHDhh+mzEOAVaMWZKTHF9y7JoVzwwyEEXU1V2oj1XIPRz4w9v6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729995954; c=relaxed/simple;
	bh=/n1IMFKDFyQo5YurClg4275cmmpaDwDAYORa+KbMI8Y=;
	h=To:Subject:From:Message-Id:Date; b=HRISJ6YNOpyONxr71Ww/RA9pV3KNgasfi8ZE8ReJskUQsWmaFXscDITGRwaYY3gmhWIA99weZq+JBXRjSuhNAQfTDemhM9EEaYUd5Ct6kdLl0E7GGd5dtyPNIFzv5c5xlEHEQjwYzYrxR0MeAqOCykEkhILHMDzrwUR21H+Few4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dB/A8tfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dB/A8tfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ECDC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729995953;
	bh=/n1IMFKDFyQo5YurClg4275cmmpaDwDAYORa+KbMI8Y=;
	h=To:Subject:From:Date:From;
	b=dB/A8tfIp7DjnGtGzhpA2y0LPnTAjMXMiCD46dEktNyB89OW5HkMkYRrTTSQsrvo1
	 hFtidSZTbUfeRvPq2ihsheKuKxL91YEpNZektJDZjOct72qahBDjlvBhvY3GlUQ8nu
	 EwzeJIJ2j96CACvYowUlHSjYhpZxu0R06O21G7/H5mdixUA6XLSP1Hd6LcWQFR8qQY
	 gDBSsiS8PSKuZq19T42wPcvfuetkNQIqmBW2jpe/uREN807/uqeivCW0JWjPMInKMt
	 aVkx/6NWKVh2ebTO3aqVVKaQeXclxyw5otDi+HAFumnMkThj4Mt/l8ED8ID7xpUnbD
	 Pm3GS0L3ZE/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93853D10C07
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999595359.30492.15503568440110371742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d27b21ea75bc69dd0d26f8b3cf1bdc1f8d8b045112ceb64661c94e4be82393
Date: Sun, 27 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729995953
