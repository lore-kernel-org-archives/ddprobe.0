Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161C013A3F9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726821954; cv=none; b=ThkmJPPlv9CgmphpGc8ftV65kbcyXBFUVVQbewJxFJ2U7zFlHx1vNpcm2xwLBhOFzx3oNgZi3fQwhfRuwZ0S+9tjr56t6qdIIMnALOz5FCfEDxEU4AxUYrT+0iGG4G1cGRoNP/NryE4dclGP2BjrbKtRrdcR6+/UzRb11rgeFU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726821954; c=relaxed/simple;
	bh=/pYo/QGN+PLFl2/sseOa0+bJeSYO4fdHzy3TpUFdtl0=;
	h=To:Subject:From:Message-Id:Date; b=uT74+xPyUUs4G8r28gl3CbO5HYqCdyZoGrLFWLfVi0o486lLf5Q+1C5lmvWLNXQ8+t0ohjzYzthvOOBI8cbj4uezCo1TWzIgVCvRRc8Ac07p9dSY3jzjOJrhov+76TImK+T2cD3xwEg5CRNswZm9JbW9DVRIgZr0ntUY8DkU+O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh2J/gih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh2J/gih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA518C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726821953;
	bh=/pYo/QGN+PLFl2/sseOa0+bJeSYO4fdHzy3TpUFdtl0=;
	h=To:Subject:From:Date:From;
	b=Dh2J/gihxYmtzaGejPd5/GGxzLzeldGuCzTSYclw7zWZSIHFNVUBeRsNN60YiZvI0
	 PT2G/2AkZuuwU2sTpJxlp2PX4cq/SRLq+tmnyg2vucwWYQn0UeNvfeaSTkOFYvzeBu
	 6DZrg4ROoqmvyuTa86jjHDGZAYd5MBsu8cbHR1Xi7DWi8jecXf73JOCxugCvQ5cR7l
	 wTd//x+Ci0zoXNSs3Zkx3BO7kShLSnSQ2O8fSLy93jI/qNkalVw4+XUiR1CH4RpusZ
	 udj2UWeBoa+aNWpI9bgp6dp/cU9HTqPpBgxakgjKyI1L2JfGh8MZXWeKMmT2o+gGxa
	 YasevxE8rNAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A2CF58F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682195360.4172.10375974720267879508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cc13c832f6eb510fe58c4947571607b799308f87fb4d05b8f19e98098c50dd
Date: Fri, 20 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726821953
