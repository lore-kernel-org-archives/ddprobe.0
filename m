Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5F23559DF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777330653; cv=none; b=SDY9MZhkxjtHuex1J7XrfwB+t4v5BYgqqSBa32izcynDu2SJJi5p6BE0+9MQj58Ipzt+jnQirqBevvcPSHa5OZtpDv7FWRPyAG8UEMltyNbs+rJr5YtXa75nnxoEi7KjbcjPO6HgDPIY74caELmD4W2VbdzycffjuUUg/rT1qfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777330653; c=relaxed/simple;
	bh=CFGaGeGuotcxzn3Q0Cea9WCAeRWVOkTJ397Rm5EGo/Y=;
	h=To:Subject:From:Message-Id:Date; b=OPzGySPzUrM5em7436OXhreVazDYTgnb/OvzrGIDZILhnnYb8/VDejRMGNGmgfwwdCIiiNFcYTZyxXPxmd9wAUdL61wXyC35LCGHBwu2KWUATwAc4I2I0TaNvI9t3tjoWHMugyvMhL+4tv6RHsosEgfCsHHBJTrdSdV3brHxbzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftMnWj9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftMnWj9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C185EC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777330653;
	bh=CFGaGeGuotcxzn3Q0Cea9WCAeRWVOkTJ397Rm5EGo/Y=;
	h=To:Subject:From:Date:From;
	b=ftMnWj9lU7k9aNbGjfb6pT/otQwXdwQ0rPQRMHupxlO7nJOtoATsCT+UohCGa3Jr8
	 0K57EsKPGzgFB3gleQPqoTwI/NRruV4Lg0L5iV60XLB0ieMZQGActdYs/uCP2l3DUn
	 z4q071FDtNMug+8+w5sA8D9bHxMjPWCbjTooBvsDLJzbTXmAxn9DpMIpTmg6dS76Dq
	 ZriS2oOtImp34V5J+SFRMUsRikEFNhiKFSEFNrDQzTCjhyVLgOtMag8bVbQLXv1YFf
	 e9y86+q+YfWV3QyWX9iB6jRvAJH3w5dfeIszd7FgYBSXnUp4BrtLdMP+aR/31bEMIJ
	 hwBd58Sx6LxJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1CFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733065368.28657.11885562081300149165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5716e99cc70769f018ab88cea0e7513c415611ca4af82df0e1435dff1cc17fef
Date: Mon, 27 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777330653
