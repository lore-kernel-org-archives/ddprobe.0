Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343C12957AD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747859394; cv=none; b=NpvWo5JSuSD13TMiLBkmdy3oNSM1Iyfo0SW4l+SIdlS23GFtmFpmPuFRMokPNRLhqAFx89+yohqBFdCu2cXZ2QoAwL25PcvO3Xfbi+HY2mlpt1Sm3k/ifcnvoV3z94tkwIsNLg66T39JntBekXH1+eQizfTrVrazfipVzbBpHmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747859394; c=relaxed/simple;
	bh=KqrXdGpTjIKkPy+A7Un3dpidHO4oU+ogs1T5+FU+l8k=;
	h=To:Subject:From:Message-Id:Date; b=r1ysjU+WZfSw/QYzthleCwlnVeqDf6YwfiwsY2Z+2U7Gv6FCyEKMgUDgSUwWyN8qEfzCrschoKzkRSGS92TTkgQjD6Pgq0PYJojIXWbGv57OovF7wx1+NEgkYxOkDMZzfmZ4CaS76qyVzkBdE6KwCMJMRRK1fFKZlHp3aesLOP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThQ2oowz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThQ2oowz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747859393;
	bh=KqrXdGpTjIKkPy+A7Un3dpidHO4oU+ogs1T5+FU+l8k=;
	h=To:Subject:From:Date:From;
	b=ThQ2oowz/LELKMnBsL+j323Ffeefj5jydJuGOdewg3zWgse3GnVU4aF4/qp1ByLRk
	 A+wCV+HPr8rqv6jtTfkENYyOLwqWCJFmConyQVpA+K8K/5rNshu6cnL/T1OlV+suCk
	 FDFY/NrOtkvfkYVKyMTiAllDaLYVXjTKMlTmZryqj8f0pg5HTlj6EoZjt3PsJsJlGv
	 WIE4wrNJ00axPwt2rWe/DieE5Vs8uYHDwho3kMPKhOR9307oGlXYI+cFl8HowYYgmv
	 GBf/XH0LRgUqWiKG369g0Q2P2uZ1cfq4bq0E0Fw2bb9pURodVTN5Fpq2GKyp47AZqK
	 kktvWb21vzkdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250CC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785939357.24431.16331560969018925869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7589a66ed989d8c8c53acaf4c1fcfc9588d5c563cd9f7348769800c85d6206
Date: Wed, 21 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747859393
