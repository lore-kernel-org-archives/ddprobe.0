Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230401DF27D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777994854; cv=none; b=ucgwoVT3KDwV3Qdu+i9KVNtjTJPjMXgDg2avX8jhsnEPpSQC+so8vNI99lySl5BEdTsNdGjC4DFZ12m2GLv9qXXUFCqHfanLYuZW2x6SyxZZP5qtlfRybBlkqoRFkC5RMqd6UhJ9DkCo6OGrH09lQr14yFBXFetxemhl0suzdbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777994854; c=relaxed/simple;
	bh=J4nEGFa2j6gUdecFqLxj2OdyOZPotoJSw98ECIM4Mx0=;
	h=To:Subject:From:Message-Id:Date; b=lqlhCaG6/Vchad3N52cY4OajxaUn8vHg0G4D4ZTX1UwWQp6NiiLL+NB+ZUSqHkRwB4h7bq3m0dtfhyoVkjky98i7C4wxcPrNzZ+g1sTpS6ZT4hN9r/tAhyM2ppFNOa968FNg5oQAVojNDGKn7LgBDs9hR3Fv0qAnGAWQn2Atrr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cafHWsKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cafHWsKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA126C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777994853;
	bh=J4nEGFa2j6gUdecFqLxj2OdyOZPotoJSw98ECIM4Mx0=;
	h=To:Subject:From:Date:From;
	b=cafHWsKBanWdVxXbEs3EgQKLCRLGSDrr3GqpmyO0Tf2iZgcrphN7YK4cF3fj2oQ1V
	 U6cK04xQYF5qpFqDO4qQsYBO+knye3W+TRzYiO0hzVs9VxYnDYpkqTe9AJlFZsW6Ow
	 sqX/zBgRrNgJbQivwCFd9HYwTI0N4hLwEMiz7ot8AYsaYeWN1NwysoRh7mX+LG7zV5
	 cMAdFNCPfEOzTO4WPIIZibMVyqY/Pnuq8yguoSCA0zyywVOkFnKardhwk7A7E5wr6C
	 kZd2elQbUGXhsZD1Css/XepiC4pBDgfffgmApQNQZ75ngxcYASPZWfVJQqcesMMy9V
	 P/Qvsmzy9VSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB819FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799485369.27630.18289609539747030873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dce9454a2d5aeedcdf2802f3913df84e5167d4bff1f4a2e367cf22c8f6093e
Date: Tue, 05 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777994853
