Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47764388379
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788505234; cv=none; b=E75sAjE77+LU44yYumYezj296gR1PRA8GXSvobhZb5Vyfavn20F0iD6CnkbqG7EclETlplzVBth2zuhJnG4ljDh3fQk0ZpNVud29p/YBzBeTKL+F7HAG1qXo6Y5Zdfono6qD5faYV0952rdBVUPAjeB8Kpa/SGoqtZGsQK1UgJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788505234; c=relaxed/simple;
	bh=FREdT40zI9PP/EpO3WthfZ8k5Mc9eAED+3AeQN5g37M=;
	h=To:Subject:From:Message-Id:Date; b=K3q4RgjqWlGIP03iXwnAa3k7IMi33bSrYjbCq8VRJsDxvLVD3zcdxUTdXmyOoZyGKuMY8da2dpM+7TUzpN17IVL71dJzNLWhJWU9WKas/Ty5/Kkf7rgn01dM1rs5ROcFhiI5T4dV1bsD7FWGl3eFA2YG/Acp4II/ELYOqNmuCNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2sSoeE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2sSoeE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF192C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788505233;
	bh=FREdT40zI9PP/EpO3WthfZ8k5Mc9eAED+3AeQN5g37M=;
	h=To:Subject:From:Date:From;
	b=u2sSoeE7sbHMNPs9uKbsOt3u9CrAuRA2o+bPgQ8nRGqDiNebgjw//whdHzQjF7qaX
	 6pVunJJkFo2GN8GNz4zkIMG2R918ANVcgsCcMzkOFs1fwinAUdOcxpya5KBQKNSWGD
	 uvNamhbFOsRsSfDf0jOeQwef2raRB3FsT5qGnx6aVZa01awyqhKreTCYMnikugv20J
	 5UkGvVX5ekncSQZV2d5ve909YWcHrroA39PGwVlMJhWmv+73bkeRaoWKPlYNxQtls5
	 COkYp1MlJ1WocmciQeSKbIFH2zxF2tuyf3GKseynbY80voBI2HDLt4ymQ9Ego4FX36
	 EfgDZtNwDbczg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC626C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850523369.21681.14856914831792284608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d58de10e22834c408a62bd03eb38de569b1dc8abee35851610a91a094843fb3
Date: Fri, 04 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788505233
