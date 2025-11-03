Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11333148BE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762193394; cv=none; b=CnFB0eRTCYDPfCLvNkDuK0nvdt3C3YwomreKxC3guQclFJFbpW0JIYD4jGYV7r0Ph7hGd1cSv94Pi6OgB4HMwM1782baMDT1+vCO7O+Y6KwCpY2sFOeIM5b6kR/oUP6sxWRGKieUFp4y+KO32uhvtNShoDKY/aXhElUzWS/6+Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762193394; c=relaxed/simple;
	bh=MXjyujldj0c6G5QYUdLtDuAPLMDHBZ9YlM5LjrdPCOo=;
	h=To:Subject:From:Message-Id:Date; b=uAydCnldMAueiwsalBAjjJZZQ8MbWE/RnobrPw1KI6RGJtP1U1fVpEp+pPzMwGPvl24aVhCKRQMqkDZleae7se4J0KxNHLfJOVvRePzQeHxhwa+86euRWX+4qrQCAfJ0vHqaeY8/JOsGTIcYCK+9MvN/L/eOghitttIsBATzaU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn+KpQ1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn+KpQ1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5CAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762193393;
	bh=MXjyujldj0c6G5QYUdLtDuAPLMDHBZ9YlM5LjrdPCOo=;
	h=To:Subject:From:Date:From;
	b=Cn+KpQ1HtrNCxj86XB+SqMkKCn8HzWQdDCOAG6EGrIyktCQH75k2Dvl1FO7FSLKmI
	 1M14aqC6RWW7mUHrOsj+tJdkpxaMULga4nkvcCM6YqsA36/u96VfLcrfCnxzsxRfj1
	 t85Ew+i1GY+C5Xzjri9S5EOd8uWanupOWGvv46HET4cxzxRevQyOn4puBiJRaV9hYy
	 9P/0Va3mwCwp8iniQegeu5Mw5uUkYpYE8SYaC036HrWwLvmmPCPsma90eUoYg23XNV
	 vmnlihVSyos63gXgde0j75Yin+YcFR4zSjhd/O/dSLpc2OeCXkh6KEUT1Ogxw4NIME
	 qmJlA7MXcTAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A68CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219339358.12714.8025116251090811702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b435f726a53c4b82af501517bd62cb896fa92d4f52ff5e797da37d5146ee682
Date: Mon, 03 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762193393
