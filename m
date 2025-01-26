Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5215018B495
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737863754; cv=none; b=SzYMwYA8X01IKQbLdEjUK10jTRJfPzObu/z5Ep7tRCpq/h/3RI0oPLGMLjBFEtAWzoS55vqh2W16E3/MOXPAr3leBQ+xUH70UniWvDhVqHdYFsTYBw9gaZ+dTw/OB4HQz8q4PGLwZ5NHQXMK8KFYYKkhsaPEflhuI/41SOpcmEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737863754; c=relaxed/simple;
	bh=dm52NIegZQYgQvpPRnpydhSMnfatL1h9g2cv2Ohtbmo=;
	h=To:Subject:From:Message-Id:Date; b=QI20ipaFERnp6Zi3oao7eVbmPx+TSBacQGq3A7bZiuxFf/Wh9A8FEpU01DslfDxSrPBg5abLAHkkQhePQ4iKb3e2LtNEelyY12rXe/V5256cXfplaVUulSvuQeoXGyjvegq4iqWltlUezfuWeNIMN+ErrYjHgwt+bRFxUBxQVpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6+uc48w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6+uc48w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6123C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737863753;
	bh=dm52NIegZQYgQvpPRnpydhSMnfatL1h9g2cv2Ohtbmo=;
	h=To:Subject:From:Date:From;
	b=U6+uc48wjP7ANt6iFuOzcsK3K8XL0TK4J0YWChpNSnP5JGV++C1s3k1G+tDzBuIFe
	 87A2tilgo/pOsZBhQ2zsoe+c9xkt5mgiqojOsaRdnHFLBwp30CWbMarfptq7lFc54r
	 CrFeO5qkKqs0YAin7epfsSwFn4WaqAOl0bslXjFS7I3Rfj1LR3n1LaMaV+gQ1WGqXn
	 NOl65XSL9pGupJmHfhF/Gu9cURR9aLWWtwZt+5eNtSQcUP6fg+ID947VN2P1fdPmob
	 0xtM16AztqAN1DiYGemfL9bih97Xp7Q1VTJAgf9K7cEk4SBP4nOM04JXHGtkASO/jI
	 P0UX8LxEUhdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B44C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786375358.26997.6723690740537160169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a1880b0e309fb5f0dde69b30314b93b1754f3a039f887286621578189f5df4
Date: Sun, 26 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737863753
