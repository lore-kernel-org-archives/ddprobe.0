Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E07C26561E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761106194; cv=none; b=p6uEd21pMlWFbEVQuY2SDtH+1zNxymgHfUUoLuAR9xpLfYiWedH6sH6XidfBiCOUfAWxam4R9JLkWrt9PPnkpm/K1mTYz1r71/O2hVWYvEpVsuEzwV7ZT6MaCQAxZccvoN85rJiTxe41+dI94zgROvBtvD5onbX9+cCl+Uj0JO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761106194; c=relaxed/simple;
	bh=tfNc7MvmQ9rm3+rs9/2o0lf4JkK5S7imUbDPVz7SIT0=;
	h=To:Subject:From:Message-Id:Date; b=tPhFlNfxSg/9buHIt4p+447+K2j/7xG3waSDDpVjFQSK74cDlE6rKnmYHsfdC+lrwycdYpViPxLJn+JY+ttD9IAPgyM864+CbV59YirDn2gn5ZvvUSsYAKIf6fxGr8VHcVRdDygiMaon/OtzWb/175QrgxbFZtyqwBVwHQBEb0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6ZeOeTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6ZeOeTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761106193;
	bh=tfNc7MvmQ9rm3+rs9/2o0lf4JkK5S7imUbDPVz7SIT0=;
	h=To:Subject:From:Date:From;
	b=V6ZeOeTA6z2X7xUolgMFJJHbPUubhyNCt2/m6dWDL77TZLRbvyK7nyz2dq3e9mWSZ
	 BisOsluB88eMyvuh1u7OmZ9QhPOLTCAnbAkny6DvlmhIwG/NpwgjeU7MrgmzPvJLTn
	 xF9WQpp2hoxoqkMJQ0wKEbP7Z2eIRFyM7W9X+1BUVj51cMPGaFn7zDI6oYcX6A5WPu
	 Ndk49ABGQZcf+hFyFq7V3c8eTL/8yCVDp9n6osY9EtC3fznv/ICC0a3C5cGeuae04f
	 jPktNPR3G7hX7+59UlW4WO2t3RtpG0quHiW2merSWL0uiALXOfCw1JuFCIPWhfmu0r
	 wXt8ok4HDnzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151DCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110619358.6323.3735067294076899087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30aa6171e9329cedd3ad372ff8d2dc63ef3da171f38e6c15016d74af23343b15
Date: Wed, 22 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761106193
