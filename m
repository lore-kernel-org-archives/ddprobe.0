Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CFA47A74
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722593754; cv=none; b=kVU6HPCn6Kx7cOjeGL9Oq16FU5ILMea5GS5Egdn+pE4RjjJIJoiFYF2s8/9o4mqK26jWU9rGSlBa79KGCEpfMDx2X5Ir0H51Tr4i6N8U6PUaDziO6SxxsEv9XNKMdQSK3DbMo5V6KK316FSBPl7nOfMYyel0h4nnqddWFP/1lNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722593754; c=relaxed/simple;
	bh=N3v4mVhaqkY7OlP0+5Hm8PKwVH74kBK7hmsf+i6ehDA=;
	h=To:Subject:From:Message-Id:Date; b=CbHLTdLkDPxpiLJ4U1VXdVPDaXLg8+Wb6sKGzwkO1R5Gbvrji27UynIQJXyLhrZboM42o/lg3JUHpNQUzojQAleKDnysLK1pL5o2+UQJTDDfS8vGcudmexxGmg/9nNveZOIRG9lKM9Zko9zpCI6ZFD84r+n+rgxOdy9gVzXQOnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoOx58vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoOx58vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3CCC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722593753;
	bh=N3v4mVhaqkY7OlP0+5Hm8PKwVH74kBK7hmsf+i6ehDA=;
	h=To:Subject:From:Date:From;
	b=eoOx58vskMzYG/PcTqa1R905vd4EWcWmd7UJH96N+vtZM+X58xaaWCeHxzhRn1n1R
	 pS4jdjr9jyAiEFXqBPkFxUPcOBsPz/07xbVuFjWtt5k146yUbCS6ETSMGCYEiQCzj/
	 N9LXCfZ24K30FaTAT2ji+Kp4B6ds7CchrZr+9RISlmMXmdRlyAEb/BbSl8rXXHJRqg
	 YNx3+Q3zaBwlmAXQnbR9/lO4BV2bs/3WNRfhcLQdv3xAy6tHcA746vnfyP9nQNAQCu
	 SM5ub55Zvr/ZItsLeAALtMSZNa2K0Y/oyRpJt0FjBbNUAtYg03jkb5f12be0jfVixw
	 lFoFb7Z/XO8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F2C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259375360.21290.17426554962738743298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f027e84d9c6e8102441e4c07c2bbfe4adabba31ac6c2cc706e228e3c8f388b0
Date: Fri, 02 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722593753
