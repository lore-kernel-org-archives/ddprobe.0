Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F11F4CF477
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792196434; cv=none; b=VvVOAbCTicCdMkMxEM8Tg93s77+yprRIpyxtToBpCRPX4038VdJUXISS9NNcWDBmS3F8A0bak9E1dp6p1QlaDjHpLqJjkcjK7HBqa+X/35JVWkRCaZZ4wJNl22la5ucbGAXUZhk/Ng5103xGxLUXee/mzSUpfsmr1K/Ku4nOsZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792196434; c=relaxed/simple;
	bh=GhWHzq/x/0cMIYiNA6dZpq3fCyh8/Rb1zwuvmIECdOw=;
	h=To:Subject:From:Message-Id:Date; b=DqCVAqkyUaAI5LC1CcdqODIkGz5zpR0Doaz7gIZ4BhzJDKc6CfHd4RtUPzCZRqlWRRStzQtcvXPc2F553pBDTbk/cBnLZpaQHDV8m+7ElKIf+R5tcS8E8ZQfqlZfLPKm8nzvkfPsv8P9cCWPwOwd9qwW+Twr9Thibk28rQfagt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQHCMQ3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQHCMQ3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1E9C2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792196434;
	bh=GhWHzq/x/0cMIYiNA6dZpq3fCyh8/Rb1zwuvmIECdOw=;
	h=To:Subject:From:Date:From;
	b=BQHCMQ3SNI0GX280vFnF8mtRNfbdyLQwU9MIA54a7V7DQahPTI+BL9qXHvdfG5evZ
	 4Za4bA/zqgPjessLh4sPZQr+yX5W0b8M60ON6RpsQDwCzDfKc/lFUnkVrKVNw7URa2
	 fk4a44eaQPycbnIGRLD0lQAMZIs0+pLmEmyULys3qGKw8ufokGF34Jj8pWVXmZrfvk
	 qOxE0xffXXA4srl/zYtJLXKr0bLL2n+xbunU0x6vH0vuK1dmB9erjTuXIPggzvN4Jj
	 HZl2pXcQMOVXadzTMDMAng2wL7D1gnaR/t9LEsae4SqLzq1ehr9CEOTQYUBFYoMyHn
	 exsR98Pm8/G2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EF4CCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219643375.27726.13507670734621435210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e1eac7c4ea818b63542be9a3f764b2a4a0951bf7e184a2d986bbcd1e0e2cd1
Date: Sat, 17 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792196433
