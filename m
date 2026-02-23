Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E43624C3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771846494; cv=none; b=mqt574dseyEh1RyxYj0hBE4bx0sl9XEyamWOpyhjULpTnuiVxzP/kW2wkR26mRIBYfKtCQvLN+yNP3O+41JUD4ekoQiT4oMpoXiroRnupWfYFPsnAKrU7U7nDCF21HWpT6Go6kqgTwKTF7h8hAXLUcrir22OC7pRQfMyybpS+iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771846494; c=relaxed/simple;
	bh=M/+icuVp8+kF0D2FJOD/4p2/e+2bGD5teTWdxvaw3p0=;
	h=To:Subject:From:Message-Id:Date; b=hyJoAoBypGG1tzEzmnftMC2ZJTooKA6iY2vlWeN21qX6fr3D8JP33NZMwkwEchl1+CrjxDWbfx0fKgT/YPR+I1NiakFVW9siO6t2ypZrxoMJYlznfggvwJfgELD4WlnB6zs0B31PXdZzNsk3EKA/tcxpy+7kY0p8XpBknUXpQxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPvpGhcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPvpGhcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE47C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771846493;
	bh=M/+icuVp8+kF0D2FJOD/4p2/e+2bGD5teTWdxvaw3p0=;
	h=To:Subject:From:Date:From;
	b=IPvpGhcgZwuB6hWYGJf1huyLzEu2f9LtX1vYaQr/X9mih9dQZsLO4oqYZxd7rwLXI
	 7HGM4ahZirVTkd/mJYCpY9VnPP21EMcC+jMtsseynKCORdbz0Ng6iY1bD9Gqj5IJtw
	 sPr/CsEceB+zNH0bca5RNV9up/c6DsjxhlY/GIihOiMnhBmsc49H8xl3JL9F9FiIDA
	 QBY1axbYhm/2eTtu6zHSEtqGR/HIb2cakjAfQBRB0fETvupwQ63SbAsJYVGA9hAIag
	 2Qed4NOAvHQC3o8bpabFANTlEISEe9yAAkTVYOWlqQipi4OSy49IvR65pieXI7czvY
	 h7Oe83l1V64sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA3AEA4FAD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184649362.2655.3790954453795101054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c571d35d5aa35498715549f7a83f36bd82a04c7d0f6d0fb963be52b3f049a70
Date: Mon, 23 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771846493
