Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2923015E5C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755134994; cv=none; b=XzqlpiC37+5o5t8zXuSm3uvAGrDxMIh4/G6PeGdfwCdOP5qerzGxT/RWrj9u5yCkCM5cRvPN3YQIbYm3uUXnKQRFlwQyoF6M3FisP5fRDGilaIoFbLMszUM7YGDQm24iUVI+ltEW0re+71lj9eKVMQQNGLsSlGriV3WIZGpBOp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755134994; c=relaxed/simple;
	bh=KMH4BmDbpn39CIDfhLiwSQL7dZG09x1ITwDLl0qWfZQ=;
	h=To:Subject:From:Message-Id:Date; b=Pg8x6GzVEMuK1UHsKyZh7BJMtcvUQ2YhIMXEMPZaQTFArsQq8jhWPZnO6N7hge96g5961MnWlhHJPFCiiv4oBxhCfyOi4Vbfj2asQuY4CmiLh/gSMrFOAErwPlj50Z7kzxOSXsnQCZcEqNlAvS2ZB0j1DUYIIbXZBLklgmxIGrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWph1c3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWph1c3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755134993;
	bh=KMH4BmDbpn39CIDfhLiwSQL7dZG09x1ITwDLl0qWfZQ=;
	h=To:Subject:From:Date:From;
	b=hWph1c3xIPIflyrgm0CmNmHpJf1q3saLIE4RURj6HomqhNbWGABS7IbjF6+EuZrSx
	 YiUhhU8LK9BqSqAAc/4qEzxpqsUs5Xnrt7f7ccT4f92YyzBGDBB0MaGKmo8+2/wCcP
	 iV8yphZxEEvKZOPS7CwC/aa3yMcqwdO0fV1PvW7fcVD8Hf/Cum/C/RchLdR4z8pu4n
	 9o7SOXNJSpNjZoLt3on/hC3Ae8BRAgAc9VYZ77tP6uZqvHQLiWvixdpz9bO7ooIv5+
	 8kGvjjSzvEzCq2i/zJL2uGT/7fxDuy5F0u7WSZANB+0eUSihy8fuyUVnkHJao4eGcu
	 qUo6GezW2DHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90225C87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513499358.10565.1976266048150160545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71d18bbec0e5a7cc639b70e48f915b0c099f0b9445fa5e931915f95a4981c78
Date: Thu, 14 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755134993
