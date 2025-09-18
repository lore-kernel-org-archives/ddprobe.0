Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218B01FF7BC
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758169194; cv=none; b=Io21bM9UtYF37KrNAr+nD8ny3d9ei/iF0pBZNN98qpwAknQ1dtjpvDrXcC/QrRnPBFRTefgquTG96iBA0OtK0nFo9IH1zm0kICDRhBqSzceiwYbeYPS3zUgxgEcN3QV1eHpWF5v61PwjWYV46LIGkmz8co+rGD8lKNKsXTXKN64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758169194; c=relaxed/simple;
	bh=UE2iope7P9rLwKVAWNZiU4bL/PXuA4gteoBdovACO/8=;
	h=To:Subject:From:Message-Id:Date; b=QFTpushygF0gYc0cPnGUyVJAPWidJc81TsWlNXiknZfJ7LTWBCpRoLkraMJFW6ewinYTOJtad5sY61BiphuJjWbLxvPmdgIfNcaHf9byh8e3kAGpwMNDQnOeED1cZUVRVooV1Vx/kdyHRWBi1lxF+otCUAbNcjRTN+CZqU7U/F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPeBkOff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPeBkOff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5A0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758169193;
	bh=UE2iope7P9rLwKVAWNZiU4bL/PXuA4gteoBdovACO/8=;
	h=To:Subject:From:Date:From;
	b=IPeBkOffZNmwWbMcs6ZCxo5/9WGs0O4EYeKKhlQL7kpnfCsyvlGio79zg2E5XRmbJ
	 5GxeAMMKnTgWdUDQzMAON6+HfgMAYK+oUhSM7Cnu0YNA6PNVQ9mMr6UQzWLRz39TLp
	 SlnmUSkh5+218dklj/SXIN0WTzwlKsjHhpf/OqXrRElHEuqEIYoYqEQu2/4wYVwfvg
	 10xx/3dIGOBueVWhm9Blze26UwZy5BeSJNC1pLmYrk1lKCKnJovgTsTjDex98smvU/
	 m+psH7ZiTeIPS8FJH7tPJLfzMVPrncaQuuSwAKLbWu6wpTBm2qAN3FFhFzHJmDz4TX
	 A2Meb0y/cFANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25BCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816919357.26384.17068006058500656382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf3b84edd164a86386f8e0d13ac46df9f461ea8b50b407f430917401615a5c2
Date: Thu, 18 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758169193
