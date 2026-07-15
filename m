Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1FF37E5D1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784159914; cv=none; b=B5OjsWSqd6WoXT6WnsJg/QLdJuBD17r2kBGeMjUGOqUgfFxRKKpOkNxsPBxnyDHXLBWM3sduwwB9q9K9vWFH5l0bUsSBWwHTBW6kY7HblH6fzpKtYsnqFjfuwJGe8Y3VoLSInDMrZsQuiJn1ykpZbq6ymUUMJF6WULVgl6gu7Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784159914; c=relaxed/simple;
	bh=tL1ZzdyuYtOpPXQNHV3wiXXi/WxwF7si8oaYGPYX//A=;
	h=To:Subject:From:Message-Id:Date; b=UV905ByrPlrYcxt1NWwnu52TF/L3mvaxQ/SVb1z4lZB64dFz+TMkX05/Hm/d/BW/jV9VADPwf71gp6QwJnRSTCjgIrOXtJTgKsxDCWpNUT+xwXB10rLTMhTDz9h2YHGzTXYiC7sVHztfVjGdgTZo3DRwkCzSIUZhfANMB+ygveY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPT0EX5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPT0EX5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3B6C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784159913;
	bh=tL1ZzdyuYtOpPXQNHV3wiXXi/WxwF7si8oaYGPYX//A=;
	h=To:Subject:From:Date:From;
	b=jPT0EX5pdsGE9vDU1MrtAw3iN93Iktj3ATV7SwVmKujDD2IyZFxngaJ+pMroEQ4gw
	 CRH0Pu0sp6ZcUU8WUqu5nrZ0StiCKpK4+aHcXVL3cc4FDueWpPkRETq3fGkHu8qoMW
	 xzIc+qYr2YBy0zJPsIhCRXI4V2fcmaTqafrqV+YjbRsHlKD5CJJwxRPqk+GYjDcnuy
	 BMzeZ+Fq9EiS69QBXGPbbFOX1YG++LuBmLep3g2plilE4cMVh82uq6kKRq41Ng9jNB
	 Enghcgeyef5PuyXdNG0Fn+kU59TUCqH+zz/HmE2kNugBMC63BRllJap4E6yPqDM79v
	 DnCFKFT5V7GOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9136C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415991368.4300.10331894488492587749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfee6506082b9c7f2d6223b0a4161dab7ab89335286be1c673afb0c5bf50c9b
Date: Wed, 15 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784159913
