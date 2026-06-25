Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545733E958F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782404254; cv=none; b=Uaja+09fl3urdUsPHMLVMYoM/aj8Pr0580XAXeke5UorGYwSnn90CEuR47Kg/tk5+ps0jQG0uX5JEysN1VQyUIJq474UdJymsafyrbed3oP+KSsfzlOwigijP/V42nxs3vCpBsgVjAJDFR0gdaaTxPHFMblxFGCXOeSk8qIDpk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782404254; c=relaxed/simple;
	bh=FibxCE7uRgwQrXk4p4iUJruSQ8Cc1Kz2yw0GRuAM0FE=;
	h=To:Subject:From:Message-Id:Date; b=iJskgGE2hj69eq42SPbwKBzn8/C94l0IkLuFmYx4rKL7SupuLQkpwN2Gya4/s0Wc4ghLwxu7tMtNkbSlE8pabh0wL0pMytCz3RLAeMontQxvKHtnarlpNd80hLom8JMyZZzKA6QUw6HGuFsy04hB6r/NIblSXGxZe/g9kFLoSuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz/VwHEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz/VwHEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC4C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782404253;
	bh=FibxCE7uRgwQrXk4p4iUJruSQ8Cc1Kz2yw0GRuAM0FE=;
	h=To:Subject:From:Date:From;
	b=Sz/VwHEHUsG3b6wOgytwoYd+O+mikUknUT13LUDS8VawdoxJjX20h7RJjgXxDjKIi
	 4YpjebKS/Ieto60PgWjoUkbgtbMtaEl3tZ/dsemTVvjFP7kUO8ApDsad5+OX+oNzaA
	 aFzE72aHETX0mNr34w6N+G5OOSg2YUl3K1KSgtLxC/xMrvdBop0xjrVPQ42oXO+1IO
	 sFK580E6PVJy14xu/VVb37fwiSQ2vTSHo22tfv/1+pWsc+OJGo8qndgF5XSXjpnLq1
	 qfikkEbB3r7gxoQKTYcYel9n/81npQ0sxlnB5vuYiC6UYGwHINSGhYd5pt/y7YFyLI
	 TeQpJsUAJFjCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B9DCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240425371.3985.5761462733472378778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c4f59aa157374a081b734dc7f3c7f22ec92aca14b7e4daababb4c78c029ccc
Date: Thu, 25 Jun 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782404253
