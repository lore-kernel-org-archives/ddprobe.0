Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6D125B093
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778731234; cv=none; b=p4jmLBYTDR1AMOPRgC+RG3KxqkyEckJ3FDMhHVEQDbl94CKX8hdplD+sVQEodp3Gknd/Q+k3coFcJJ1QJu2iAftRcPIDM3OxX2l0OQfgVgm9XXvqji9eR09gMQPxP0dRQbqb8vPheZsSSkn+dDU5rP0GcmZQZK2WuyDvhSaPr08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778731234; c=relaxed/simple;
	bh=r/ZPlnH1DP4GGnZC8TiOMJ9yHBMAoSfqP1QXdQ3e1MY=;
	h=To:Subject:From:Message-Id:Date; b=gItOxc7ZxuP9m+GkFQaTv4gwov55N68/hwscujdr5WL0kW/9n91X0faVa5k1L1rYT2mcI4BoPyAs+qI1g5SxFPhH7YTKSBvQhNdwsXSdFFnEURm8oe/Lg/qQAMTEadL2+RU4Z5Pdbn53dZty0VEjE8jWkv5pwCzxe3qW0E9LCEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sr4yXbmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sr4yXbmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC875C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778731233;
	bh=r/ZPlnH1DP4GGnZC8TiOMJ9yHBMAoSfqP1QXdQ3e1MY=;
	h=To:Subject:From:Date:From;
	b=sr4yXbmtbUim5G73NkiFkaNXNMYoaae2zY+i2aTvcbHAxBzzFyDMQf+AwZetPjRpZ
	 RVU+keOXClnZxaH+0WqdrAXGPHgClDhBYl6JUTTfpGkb19Z60OdmscgdD6Ekk2Vyo7
	 nFlSkHcNoSQsuoyHASgArdzLN0oCiC6uvxHxJdFX4TBeGtPJOU3oXznfcwWR3tt0Vr
	 kt+qAbmZaNvkzz2Yd+0MwqvfNufYCNaxlqr1H1tldqOxFreFbrsGsPb0Yt9yCA262G
	 kHCVD3Tyk+YtK1UJEpHsza3PZl0uyuJenRp7/v2ghFd0U4QXtKt2CTK09n6C8cREop
	 hQRvVRjIfM0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE63DCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873123369.4563.1796879327634391682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f733dd25f7235dabd9abf6b89969de0ec6645d6621eb67ad5b0b02e4497ce720
Date: Thu, 14 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778731233
