Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4928535676A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785606034; cv=none; b=mYcYG6oaGDvCYU1kFDLXe6TADk+0UfDgl9XkHbUIshScdbcARQfDPbxQXr9mmTok3ypJwyeMBh92YvMolY96MvpcgBps805G4nfG3LGa+C54Z9+alYc6plBhqslmXNdbarLLf0obTd6nmyGpWoU0Ivb6Vh5/dC+EK+z/DquVHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785606034; c=relaxed/simple;
	bh=2vqahxLZPodHdOOV5jgpIi9igwB6fer8YF+KaAcOcZA=;
	h=To:Subject:From:Message-Id:Date; b=N7SNQkAi4F2t6p+ZLAdRNP2a9C/QD4C6DrPjiSditMuhbkpFEniMfsnRRpRdJgzCkgpW+YJvAH21ui6ASgwJ5hphU5QrvR3EGU7q39YSqKuV0xDnOEbzTgt4mAAjnMrQz8fGF9Ky5cAVeotAKM7MLUJb1sZdENUV8nrvHjIHKbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgdSKk6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgdSKk6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1151C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785606033;
	bh=2vqahxLZPodHdOOV5jgpIi9igwB6fer8YF+KaAcOcZA=;
	h=To:Subject:From:Date:From;
	b=IgdSKk6C3tWW6qrjUkzgG+AyOHdtLfIVQWYaqJzp37v+EouqZJuSYfDzmrpcgTCO5
	 eQC7j1vA+GvisEQOpJXTLSoTVVr6lyHQ/CjkyvI1/ZUAi2/3ahTr8Rehuw4FC9hjAK
	 qMWSjvv6GPgViudjteAkMhgEQKTRInJ6Cqc471VRfeQi25bOyPCAQv7dF2aOJetMtv
	 c/7aVzZ/OnrUtgIK6hQWPtUXFi7TpIVCi6kexoD00DCfiKnfVILvLx3//ZC2YkuZIO
	 k9fwGrJr4xNNfudbVse+xtz18BxAdjmC1ZshRBlz6tV8i0w2hbhbArJBbos1bVSMKY
	 m0fQknQxakKEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC098C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560603368.26564.16328457533591276047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6e948128678218950e435849f484920410295ac59cbc0f42600694f5db1345
Date: Sat, 01 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785606033
