Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45762184E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735783554; cv=none; b=TXvamRh3fgZ6bmA/JAE0kIQqwtUyJH4bSv/KOMtME71YR0IdNMo6QNdZg0h4bh2wLdOdkqwJZsBSGeZ7tWevrHfUZqbFcLy2OUqu6gI35Vu7dmBJLN8FT7C8zAnkLGUgvFxKZUaae3+lEm1m0c5c3KuSgbQnSL0c7UvfCQ2+vrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735783554; c=relaxed/simple;
	bh=EsnROzMWEH2sOmLjz94MiFqioaF5y252apafllr8+Ww=;
	h=To:Subject:From:Message-Id:Date; b=KpW+kzKZwnNSZt9K7HqATqxcmQn0NlNlV08do/ejiO42mapaUsrfso59jPbVc/bX1Dk+4u+O8nEarOFJQhQSVPN31OOzFfVYeGmv57n1mXgGx5G2mRwEfeEugIksEYqFtxz9roRWUqNq/ZAE3mY6Si2g8BDYDBJ/BAUpNCz+kIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf0hqkKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf0hqkKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71A4C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735783553;
	bh=EsnROzMWEH2sOmLjz94MiFqioaF5y252apafllr8+Ww=;
	h=To:Subject:From:Date:From;
	b=qf0hqkKsZnRn1PswUcy6KTi1C29PFgE6OhHqCfqwEt9grfFD7lKi2Z4ez3sh4zeIL
	 3+Kny2m25klnJU8fCqGUA7GkNeonkPH9Y+lMVU/cHPaKvD64Q4NZQ9v4VxNPeZFHlb
	 4KonAHD/eR6bgoxFWW20EjA0BtsN96qkl1UlRVE0clo16xJnvNQJ7mpJtoLnjFpDHO
	 Un4hb1AtpHnH3iksfqD+2XU/hwld/y6VkJZ+RUCZynGM73RVeaeTWARGPXViDeb2Ks
	 qWPU2ZQC7NAUSyf/zWCjRS83Bn1oGV9fT9hmS0bV6o3yKP1lyna+iFt8pYoxnxsl8+
	 lsCiMfOLdzyJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A14E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578355362.3879.17324842491389940516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d450520797bab08c0992204e52a263fccca63c8b4ff91b5c4762bed826a844e
Date: Thu, 02 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735783553
