Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139AA33086
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726041354; cv=none; b=spYUy2BxCqz6x2/VSimBiFjLSQQpMvx5ryUR9VCdYm8qlUplGVZbxtM0UwMEjdXB6Tvp9kINgidDUVOT/qblRvx73qU5yeSC9rXk6LD3SBl/Yj0TtBGjenciTSRdAzV7xRTlafa4b/7Rx0UYq6gg3Loi4+p0zWE8XyQab3ilTGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726041354; c=relaxed/simple;
	bh=VQSgnbzZufkdCfpxcbk7dvetXHzAPZlYnw7elOFAyCs=;
	h=To:Subject:From:Message-Id:Date; b=NE236ZCp/87BzJQw828MgONuiftCOBKIDytY1FxkqwVE5MkACeRTgWrrloLCqub/ct6hP2kJEy4D+GnzGbBQI/GNIr6GeOYBNqRXx8Ym4dGXpz2/xV/Uv1n3mvAye5JZWUL8RHnZdUkE4oDKwbpCo65ihpgDuG57+LuPgW7rBo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3HayBAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3HayBAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2097C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726041353;
	bh=VQSgnbzZufkdCfpxcbk7dvetXHzAPZlYnw7elOFAyCs=;
	h=To:Subject:From:Date:From;
	b=S3HayBAtwjEn8yRTSFICJzw4gHTDNfwTk7maWvoHpSerItWAXNGqJCzRWwwybPpRS
	 LklQwdSDDfvpCrTbL9SkqQakDNgzAHjDNt47qn2KTEutj2vzimzhlAEnKEDTeriR69
	 kUMmMIVFTbNlW3BBxF7GjApZrWGD8T+7QfH+lTf6DV+4G41n5/QHgFExoYTcPXv6Gc
	 VgWr4cV5rXSeeON8O++do4wEDcHXOIt+cEo1KNdTFZrJOfD1H6nxFVkogt+bkAK6hW
	 Pm77+KQiLt+Cg4NwL8eWQthTx5fZH31IFpDjmL2tQ14FT9MM4NN8eraQTC/+43PcGH
	 gi3gELU+YjeUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D52EE0215
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172604135359.17460.121516249013257877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120da37d87865453abbc91be1a737557c603910f634b3948968ef7b6691131ab
Date: Wed, 11 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726041353
