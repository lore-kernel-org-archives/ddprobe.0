Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A2C1EEE9
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726509953; cv=none; b=ovbiZKYvyxaXrKfHTwUZ1wI7/rug2urEanwoOpgRNqaEQmgzEKCZ4E2rXxqbh0BGOzUBGzQF8XIamTvw0jwOxCpEat5wp5N0CX2U7EGCg3TQWji58O6boM6yj55NU4APz6TqmX/HNQGFxEGuOUcfUjfHj0108ECcAMNIMWkSZcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726509953; c=relaxed/simple;
	bh=wghvYY9mG3GnW43zKWbXbxqElmnp1zUjptXG7Cf7V2w=;
	h=To:Subject:From:Message-Id:Date; b=WBydBc577Ug3mIxxJeuGPUVHsxAFFeUNv2Z5MCOz8scWihilaeIGQ2lq9KHPAFF9mN1/gzDvd47/2XbDHp0PiEBW+7F4jFKP5zfvGhMJfAzCF608TzkL6esSAR4SEVVFunDYV7Nseq9mljDBn4JPL47FGk6kbiWLXzca20vgH/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uO596Fok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uO596Fok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CCDC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726509953;
	bh=wghvYY9mG3GnW43zKWbXbxqElmnp1zUjptXG7Cf7V2w=;
	h=To:Subject:From:Date:From;
	b=uO596FokBSiVffuZtfoUGSKm4eFia+bBLkIe6aHggjZNkKuFsw9MStGTkudqDuBc7
	 YwCHz5FADlPVuSV8oP2vTKQgSxzEoxE1xwFAu76gJG8S0CYWy1C4phhda74lw8R2Le
	 VD1pdbf0tMJ3udmU/GWvVai0nTjlm6Pt78rEtK1B7lpNTaYrEttbdo9iydRHjIkb5l
	 H3R5g1Xy7PTb1fr5sdsa1Xw+63n2lLxFyO63ekcVir0f5CTFMLmDRAeuGEJLkd0c+M
	 5JK/ntIFHTivASx0IOuSWI2KnMyb/BoPaWxqn9Ik0C/M9+ZyoCjQ1xCtwxW1L+Zb25
	 Elli3gBIQqQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE3C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650995359.29804.1768302942301041848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f5436237a2a0e2bf301a00bd242bbf1bea4ec89d176d107bd9fa7e8b5a8ca7
Date: Mon, 16 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726509953
