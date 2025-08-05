Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3073127875C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754404794; cv=none; b=Jp4iRNTiUHti6cbLBkelV2DtjlOe6p06bnSjWaTnpRF1UqGW/qnRav26VIktXx+9+WBpjvJ9NxcmJwBcwuAvx48spFsMFG6DksyJaOa8a8RILT6EDxddQ9sHNonlwTMdLWYbJzod9zzxEUhQBk0ZbSRfmi1yzqvbXz4kJNFSwEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754404794; c=relaxed/simple;
	bh=Tux8+L/Una3nNzC1eZyBNF26/mdDUSsv5BCG1hlJACg=;
	h=To:Subject:From:Message-Id:Date; b=qm33FiXPpgRsHETh2LIO+08pSZqnke7C2xdiN7V2hIbM5Ysf2JQj28KdHxZWQ8mFJQAM1Z7SzO/Z0Mp9Ud0zSKtKb4yHeb3REpQerFAETUqOdVgI9ei2ws9SRSlr7W1aJ/knRpM8w+tNpRX1KJwcWGUxVlItpGtSlRnUugoz7OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnEW4Tnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnEW4Tnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE53C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754404793;
	bh=Tux8+L/Una3nNzC1eZyBNF26/mdDUSsv5BCG1hlJACg=;
	h=To:Subject:From:Date:From;
	b=fnEW4TnxiHP0AMgaKV0NViQrfdpSGoT+v6CiJvseytQOSXe/q1eOuWgD5GW5bsYnf
	 MF5QvhSkyjxuba3yDw1gNAgpQ6Ama+LHDqyex+6KI32LW0CECGDchJayq7QWrjk3AS
	 CHi48KIV0/LL29UewHeZ86BAbgxr6tfeF2Szter9SecHowdu+amRVkIWWDV8yv9aUW
	 05V0EKoyfvuNB1Nnt6H24PrGv0zamtkXTtJrMkupjTszjcnxokaEuOrJkMmYowWYql
	 rkJ8JYBHbBWgIj1/HaoErIB7toxClUUIBk+wgLMnWy1PQYFy99fxqvkrA6EgIEzVtN
	 0XzfnsTSLsM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440479358.29909.8219348819973415739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f8d47e5601775dd40cdeabd4a0409d91235c8838918c1d1770846f256f5ee8
Date: Tue, 05 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754404793
