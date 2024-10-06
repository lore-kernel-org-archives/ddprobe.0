Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1FC2572
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728241554; cv=none; b=ndqcNiihVrOGRoPfs+IDY98IxGsZeYW6ItMaQjawF9zdxCnBpAX6aHQ8d14p5NF6dH4VKYEgJQH5pHFYrn2ksl0b84V9MVQvqIBjPIP3kgHF6xPSH5kQuX/oVzU0OWa5agb2PFdgk884Afa1Ae4LtIhY4dhrESMSG11jZVosYKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728241554; c=relaxed/simple;
	bh=0Jx+wV3K6Yxt6388mo6ayFyn6Z4e5cQWdFbuDlga9yg=;
	h=To:Subject:From:Message-Id:Date; b=lPExh3sXw+R/G9w84auprRkhG+zgtZhKo7uEZuhxNMt2qLay4j2nsUFDNIJmWASvxVWD9PVSH79PuWRIYq1rZEXU+GnPfkDWPj+xxlynMFmH2Of0ol97OBtbmsHRwbf3lW9ftBtShk8VhpkM65mug/hRBBpqOUdqypda20aW79w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG1ZUqch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG1ZUqch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61D9C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728241553;
	bh=0Jx+wV3K6Yxt6388mo6ayFyn6Z4e5cQWdFbuDlga9yg=;
	h=To:Subject:From:Date:From;
	b=rG1ZUqchHci7UIOw2utVeDzs7YEVscu7NEgB1+PhMx79F4B+9vN6bBfGna05zqY2y
	 LV8lsIg+xfurEo11oZKRBYRUokeM00nobGpz4WTFfGg1I1RzBSNsLimQuvHLJkN/cs
	 zP33n99zYqWMlrFCHM2zwfdEeT8nxdFVMjvj99FXcueYJzJJ2w6iayNspNIBinUO6r
	 C4KSgBgRTDWYTpIO3Howp5wTGU9uMETeb+5LBNEEfqdDIH+c5qBgLviLUtiBrEDcKK
	 iJJlJBYN/vFo6dQguebt3jhC0PQbYIsfUdnfDjNHN40Nwztz2JgaFESOcj1ltlwVg1
	 Je1dW6F46I8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A387BCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824155363.17760.5041279771901563766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49047dd72e70bb873c4be2eb38f7d956de0329c9209559f24169e23eca9eb777
Date: Sun, 06 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728241553
