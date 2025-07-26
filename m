Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9ED199FB0
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753503595; cv=none; b=ZJsgUwh9C0sUYQPggBqjg7/dk5egHxMNAwhE02qihZXAKuIRKp30q05qqjh7R6dk4CZYwzORjaIjqWsltDhOpYuHLPIjB+w4UR3ZpjfIrAoueCc2IOuACJpWZRUjUuWWitb7BGq4/WRsBd9HduOvmcwqdDSpBvOGcRwS7jWeIQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753503595; c=relaxed/simple;
	bh=slUIXZxvmKNVnlzovApgmclgOsdzxakVoMlQXycJ0Kc=;
	h=To:Subject:From:Message-Id:Date; b=G6CS/KSqBEMHZDG8asIE9Pje4u3OhKhcWlnNCIwmvP5/nGo0sNHam7C9HJdbp3ZBLCQYkqydDsxJzygEyRwS8NzLKs3L6gwMmKYuoe0Cb+d7m3ZI+yHQm6oiIWowkdTVxU23SOTugGpz7VLdmvfU3gICVrWWfwYP2j2zWniqapk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3lI4acd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3lI4acd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF3CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753503593;
	bh=slUIXZxvmKNVnlzovApgmclgOsdzxakVoMlQXycJ0Kc=;
	h=To:Subject:From:Date:From;
	b=i3lI4acdlHipOjhwB6qLLiedk/CNpIe80J4ag09GiP9YKadX5Eij0XoqeAXqTn5BQ
	 vE9Mg3aUiN+UMGm+lOoNNHUIDg3FTxvLAmSvum5seT5gNRzcRIJCQbqK/yoaIV6lid
	 OcGtPcr8SpVj4DsQtgASCeUM64zNP52NuS6Cb6/R+Fcfe/c5frZRDNwLEKlKX/8ijc
	 2dfKSzQSfPsmdBAbSHKiQ/G+1vShwPE+/fqsPZsCouGAALmhpxOeEhW2itKJ++G3Av
	 XOI37RduARsrKaVuVK4IHnY9bwslOfsXMkWOIjvYKKBs7cRmoNbrJx4bzrSD3Gdd2h
	 SvpbJUoF5Ucfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AAAC87FD4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350359358.15118.17452254107654662220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e562038bb0e348572884c5b6f2e39b4f13b6669cfe6a91b806279429e5b654
Date: Sat, 26 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753503593
