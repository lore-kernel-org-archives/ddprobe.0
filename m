Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510A881F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716516803; cv=none; b=RyHT2HuwtrAHHufTa3IJgYKHCBvenioY09KTcSlkyY7Y2eKPslqC+QMGcIuuA7gbBd1V2y6PIqKf8JqxsnBOy2HnkPUwRunjsuMrA1aOJrAT18+UJdDgI9idRhksGF6l3iNuYpsxgCZ/D9Yi+9eqwgqY4FWaOlS2bbYxOh18CxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716516803; c=relaxed/simple;
	bh=aqANVR4wIZDExzRyNFvoAP7+kzJS/mnee1Jvo312Zog=;
	h=To:Subject:From:Message-Id:Date; b=RW5jCBr5SEy4eHkIpEuzwDoxJDw1++Dpqvsc1pHslFtpcU4itY/yAJ5ktFubp05DBC/50IjCtqqlwY8aXeuvZV82bfX11vl4fbPWKbOWD66wprvBkqY2aX3X3gvyoVDatYEfcX+EU78VnZgAaMhBw7oNmkWgfiK2DE0A3aEGVd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP7WOnXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP7WOnXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2974C32781
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716516802;
	bh=aqANVR4wIZDExzRyNFvoAP7+kzJS/mnee1Jvo312Zog=;
	h=To:Subject:From:Date:From;
	b=KP7WOnXASEx6W+x7F/Ds4B2N3a5sYFTVnJifhOH8exlyQFTHSRX5N4sDOu+SdJZAH
	 9eO2hGEE914u/j0vCZb+nSPv6R3Vss+WXArXodsbrzEySiTSSLEgyrdgsEE9vBw9h2
	 g0q1fX5tu5Ccr6YNaPdz3cudbc0dKUmAtTGbGJ3RBbiU20bNv5MG+D345acyWl/f0p
	 8bznPnbTnYF5cjCuqkjma8gdo/oFZlPhPWZCymVjF8PuNI90FQ0DUqU8JlDj+yz+ZC
	 eOLsndqoOZZ4l2G7MIRUxic13Tj4c/Itjq9ELLTnNXlYElmElwxdw3vC1I9NticL6x
	 Vj7I25jRQAjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1E1C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651680280.28140.1814154036711470949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734f45f39f9fa41d59e92f0387b71391d84066db8a7386e012ec19adcae5395e
Date: Fri, 24 May 2024 02:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716516802
