Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F2419DF6A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755415795; cv=none; b=bETDhcXjhXZGgeJYkAnfjrnHf+CoHZ55wXoaha7rmiFJMTONU3dWAPDefqa2f/psslf8o65I5vZIaohvmNzzVGxrBKMGEQyQYT96+U/c6+nnjN/5U+rVAczwHkm9qAIb4ybGtrpJP5isbD37qQw0Rv6PXk196eLIqhT+R7ET90E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755415795; c=relaxed/simple;
	bh=XlKxzIXoJAoyJwiAZnKr7DrmBivg6XCd6F9pwPK6PuA=;
	h=To:Subject:From:Message-Id:Date; b=Fk9PlVLH+d4VOS0QRh8xLO34mUcRx9JA0OES9Iq+TJBIpvRIBSNu1Mq3ay8j4A+e/DQvF3DVb6Uojd9lYbsC1uKwLPAUoBY8/QGCW67jweIIDwvBE9NGVa2xR94bwd2jUhhfQE2cKVRuvwiT296HwU4yZo211JmMY5MkikAeIBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIjUN1U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIjUN1U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1035C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755415793;
	bh=XlKxzIXoJAoyJwiAZnKr7DrmBivg6XCd6F9pwPK6PuA=;
	h=To:Subject:From:Date:From;
	b=cIjUN1U/r1JtE7zaVZGYxYuup/EIGH8KZZchY/SoGYuGI+J+yvC5JkqCARcMvQDju
	 ja4N+1Tf80kFX4b/HaLX93Nw/Sa+Z+EakquPctFOOyIhSoxaZwyxiazCrAn5PZzt4B
	 rWoV+4xwpmmN8sEgi/qPpRwjox04GTE5qBLUIlt/oZk8Wze40yzBumhCHJ0O6RZFSO
	 YV5sjd4v/j+1rpxaNEkieronDbQmAu2QRyslZ+/VWRmjmzvSfDwt2RaducHN760G1T
	 9AnNeK97nKsUlbSwabeiJnnZtEnH+Q/ileEYr/UiWQ3SuNmTTAkH7Au8wz2P6H8u9C
	 JpxS5wDUeRR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98ACA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541579358.9141.1361317213051701289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7094ac99b6bb0e9c00aeeb58fb04a7fad358384375dd9c451be3a730df0a9e44
Date: Sun, 17 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755415793
