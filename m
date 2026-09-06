Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9AD30567F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788726034; cv=none; b=i6mrhe3q+le0hwmD9sgRiV2muCe6l2jNsg2qpeJTD36xGIP2a9jx/upN98jxSkx0ARqGm0CIBmCUXUCf2MKU2QxD6rwaUJ3M5JlA9HZy+weWqRNg8/WAiDthEGrKeUcZCJtBiWLEdSR8U97G8zaFBlhynBZeAifxde1eDQfEYAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788726034; c=relaxed/simple;
	bh=wHNX5gb7Lec19sLq0WajudEkhkgnpjFWewR7dAXGlG8=;
	h=To:Subject:From:Message-Id:Date; b=LsXIhcY7DzqkAiPVF6pQMUEPfPwS1LR3T+j8F4Mi4fOzyGDjWYjFKzWXFALRYpV1QiTGInhZJTAWzj96SYldoZbv2jK3HOvnNVxZJX3QNploOQG7lPyfXztmpaoEvSXlEN9UAJ6muSr68DIfDqk0Pqy6LtnCFBZKftld70W1qLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC97X0Be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC97X0Be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788726033;
	bh=wHNX5gb7Lec19sLq0WajudEkhkgnpjFWewR7dAXGlG8=;
	h=To:Subject:From:Date:From;
	b=sC97X0Bewl6jgUJ0Tu3oCKFWpH5opJsniSdPAhh0QUaJUYky2IfAsbVKAeix+VaHD
	 uxCUtEf6EkBeiz84WOaAg4wwX+AdaEdq3de78fEopCx1mpzuzJ7YB9gqFzFeGLH4I+
	 SHXTzaKsD+ES/mZvCtY0Qkm6PH7oiUeW3irUL9RW/2vOr/4VUBwOYcNfwu1icm4M0e
	 njgJz1Wa+dqDPnzVJzRBiGbl3weVHwyW1fLtedIWLqiUb+xSnOdfQ9smIdbCwG/FhF
	 UevIseL4EAPuJ9Mb40mw9d+UAgqzvbbwrU6mfJw76IR6xmekcfF4gkpV0XhAU/sctf
	 oGyNASdIgpXMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D88C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872603370.8348.7516687701751050271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c60ec0bb73337fa69cddfb34ce3ba77f23b0b07b37a06299e9c66ba1046cfc
Date: Sun, 06 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788726033
