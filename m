Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180992F6194
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758230394; cv=none; b=N4dwVIy1HJfNSdMNC+suZXCEmcBEi2KiIim65qbNJ2U8e4JN3Yjayixl+l3fcthcLA/40bVc31Hs2XNpaHhJI0oLKT4L66eP/jas5uiPVPYoQutFPuJdpA/PGrxFUSnYjfkcEQwjGb0R2cjT8MK/LtEuLLpWPKiJKSYrGzNXa9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758230394; c=relaxed/simple;
	bh=kQ9ld0FQ+HySHTtngQibnhOj0ZJAASV9kO9vwifg+Ek=;
	h=To:Subject:From:Message-Id:Date; b=tcaj0O2BIOYryi9cuBYoPWqB6AWi7HmyFRCXMJ7xQ/N8NR8Wn43/5MtoU3OaXX04tLfJjs4pQLfNuXnuUwC3DMPI/nuUZOVc+1qm+WCiyVnHq5nELB5gWtKiDSVrqLgDzDz/rOv5kOXF7pJr++x5uzkX0ygmLltiwSkIMi3haio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qg7+Dah1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg7+Dah1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758230393;
	bh=kQ9ld0FQ+HySHTtngQibnhOj0ZJAASV9kO9vwifg+Ek=;
	h=To:Subject:From:Date:From;
	b=qg7+Dah1H8CPecNlav6rIkNdRf5AYoxmEFxUwArxQAM61TNv1nknEGnqBQEBpFuM/
	 hk02ucL3qChPmrx7skK2Hn9FlXxh5hrCP8qRhTooRoQ5VssQ7Z4hIXqkxdFQwE2tXu
	 pXFiI1zoVdlyh8lbkBz6WdWS2RvW1++0pyIQQKzqgLMtTJWci9k55A3eulFLhSeqge
	 Q8un5qErt/CLrOadhTCo0oy7hINWX7EeuSCrDPsZMqNc6wH0bq7nuuIyVWhIPvQM+m
	 JB3+sBxSyMFlO9OQmxbns03dUmR0N3rkIQP5jlMOZmuw56pi/ZkE7w8Z7t++j8dhET
	 JVreEPkVr2Ccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E5CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823039360.26295.1488603153645003522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101e070945581210636f7d4510bee2ec801a0012f271e07f8963cd87f6880bfb
Date: Thu, 18 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758230393
