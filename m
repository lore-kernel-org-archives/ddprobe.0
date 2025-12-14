Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715B2BF3CC
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765673574; cv=none; b=AWC+eWfWbBZH8uRAuihsZQAmAbiw04OYIVwyZyGD+dIezfCgbWwqLeOYbE35YvXDBLoaRUU/d9ddsI23o2A1sZn+wzovTnTc5KAgiemT/lPNWLWIYegtmJ1wNrQUxQ33EaiSZpHtmfnU50vffCSANtM6oWAYLyUfDemlUBih3iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765673574; c=relaxed/simple;
	bh=NN+771a/SuhaeauxYo3NcXsXBFTj4vqIZEG8RPZnWKg=;
	h=To:Subject:From:Message-Id:Date; b=AxhoJiYkcmIs8vartTvB7Xqi/BO8912K9lBZoZ3+wraKt7RKeETiA+8P2NuXT5DtVcXm4usEfQIgLHB2fUTtifNBH17sjHPM0Leknsd0rX5jV/Q6Jyb3YuuHop3m8hbGSd+90Y1i2VFS6A5B6j5jhqm3EbkLdQnkPSCFggvrPPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5uJVreL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5uJVreL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765673573;
	bh=NN+771a/SuhaeauxYo3NcXsXBFTj4vqIZEG8RPZnWKg=;
	h=To:Subject:From:Date:From;
	b=L5uJVreL5BaSx5TIDE+nrnHEzkurqPcFCHmR0p5ZbRHpt78Xs0Ir34fWYlany0zWg
	 yfgZhA9wI88ENszKwV9+dPCyp0K5YuYTMjzw6WKpdLQ7QJnv2Kdye3XOyNf4OYF7HM
	 DQgHOXPoLY8rEYRu+RLCPkZTRk0lAaHZCUoKexRec9FvKWIC9GEmggHnq1DvBhGlXa
	 qoQ+/7jsquPbyWBz3bkyCFVbOQjJ05ytQoy2Yv/H4TRTkeUaDn2bwh2/5PWspbHtX7
	 UAEEl8d1fZmcFQABH3sguO7LEMOBbleo+9FGeUOBgBAebupZPPlz0sbXTcrJ2pfEEi
	 Jes7eb7MvvL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E11D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567357358.23670.16657806837185134938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc4c233b48ca8be710da48fd8ca35357302e371f654628ef0109743abeb74c7
Date: Sun, 14 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765673573
