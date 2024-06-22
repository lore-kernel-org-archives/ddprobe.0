Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7761F82492
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719072143; cv=none; b=BqW+KFhmzbpjDsdlzEwtJSgzQxVkHbJu5Rb5GKj51A2afr0+420WvcTdPMkU1e6gpIf1n3OjMzMKAGHXysgWdRADyms7zQdlymBcUOD0+kX93KJQ56LDP2MLC1pPeZlW+G3FLV21HNoareErUdrv47juvnfFnO9BpivZzyPz7Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719072143; c=relaxed/simple;
	bh=asgXNuOyB7eC/tu3QU+WoV2BQe4a/0ZOBT+LYMtZZSU=;
	h=To:Subject:From:Message-Id:Date; b=F6tjCEmzxZl2bL73txjYN2AOtg03KRZGsD6Yr+6JDEdLnxvX09whHO/K6M5btzLDPlr+fTSzmY1Y8bFTqd19VR6FTlUWel1xpzsIQYEGidkD4MHxsiYeGiKLXexyPnIt+iEvK2fY5mSKKsmqKYzTOeWs2BTgH9+p4vg1bW3EN0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK/gwKNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK/gwKNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B66C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719072142;
	bh=asgXNuOyB7eC/tu3QU+WoV2BQe4a/0ZOBT+LYMtZZSU=;
	h=To:Subject:From:Date:From;
	b=jK/gwKNGZ449DHc1XOy8CQn8siEL7UG6zCGdRH+y5MhmkdWJNuabTQJw86w3FL0fZ
	 C5YNIBUa6n+kUclM/6hXy1BuxoH9RtpH1pyRgWclirO6h9Mud+f5mLsfuZEQo/8TDL
	 tEO25PFcoYj+HBQPbYsyyyjmcGEXoXWlaJk6lCYOP4VLBsXrVX6grut/U2nhss5jss
	 2pkbRMIFRNbSfFMfuElANyMI9HhLdXEV2AqeV+AeznnpHyvu0iXnZ/dsqfNO+Y3PhL
	 2Dcd9J9d36m1bfkZDdeyXq3Oh2YnAsmxw1TpKopE883z7XRwbBBpPFrnRcki2ZLlY8
	 dDdm1Sc28N0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1C5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907214281.24628.6735682165861296961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2718f8f99e617caaf0eb1b24f90201f7c0814541288c2d67973dc1a751b7051b
Date: Sat, 22 Jun 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719072142
