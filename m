Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB0684D3B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717494923; cv=none; b=WVS0HhUT7xHHywe4rGgMLCF3vq8rZDoQ4wfw9a/EXplmgG+RzwrsRP7xWxFLnECfRmUaFT0/HVvZV9Q331G/aRJQFlfoFRRAAq0ndP7C2H6PqMj/Vq6naPb02z0D2ayetO4HFgqbytdZkzX5SnKpBWU0phwRvxQL95HFbL3raeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717494923; c=relaxed/simple;
	bh=X3krbdrFagywR1710NP9tcmKsCf6qMfya9XBhLSI2w4=;
	h=To:Subject:From:Message-Id:Date; b=GFfkkZ6jmmhVrznzlupIZoWK89xVYf/U7nVqTksNvJN9wbb/j74/9DQYBI/fmMj8NybX65p3lWuEXVIX9UdClkfg7m5DVi7hvfgLLfDKPwP/ySRbJap+l/BSSEJV8hecBokPMs14/W9FvKGTOSS0ZxaaMt/Rhgn9ZTm0LOnbvI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb2VlrSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb2VlrSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA32DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717494922;
	bh=X3krbdrFagywR1710NP9tcmKsCf6qMfya9XBhLSI2w4=;
	h=To:Subject:From:Date:From;
	b=Nb2VlrSsdvkQ/YVnYyJO4OyPGGff4Dh/L56rpUUMcc0SCqkX8ToIRiGDVx1mXfM19
	 hJzKTpoBzvlqDaJHqBTXCbyaHJjzIg5ZCHgS0Rv7VUp7NwojzxVxcBHm4YboEXZbiN
	 iu4j8WoUsBdvJDSVUuVeGbgLO0GLfnuluKMM+qaRQNjQOkdikFToHszBdLXe5P5VBq
	 boMcNAkDv9HJ2o9MkFSUMoPaVgUSmX7WDP06vboPHPcW22af5Y1duDRWyi9o382q3y
	 lCdmuJgfQfi68DmQ02n25rGHFhyDL1OALzPW5tmtIOwecDTKwfjdoWNK3b1GwdArQR
	 dpN1BBfJmEKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CB5C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749492278.23340.9122606406155571563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb26d2bbff1eb75354187abc8e41725cbd06cc363396eb419519e98eb8d4194f
Date: Tue, 04 Jun 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717494922
