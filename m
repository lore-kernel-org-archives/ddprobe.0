Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5077C34750F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785916234; cv=none; b=Fk3IagsFkYcEjE+Jf3UQXUeke5JH7QOfNwZTrx71Piu81QGPra8QXosvMFysp4F3I28yWVpDHBCTW1kr7kQSubpF/C2OwGpj3FPOKQsQ/QXKu+OjS+zNdTrGpV3g2vUmSJPYrIriFoqc7LloFGUzEMxrVP449/kpXmFYBpldD+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785916234; c=relaxed/simple;
	bh=bd6uozRri8dSlg7TF/gbdQuSX5N/aI5e1os0iHptkz4=;
	h=To:Subject:From:Message-Id:Date; b=g2udEND70k8V/jERfFhaTseh6ISfhsB9eHJzjAvEJKXcSwYB+cQ6qRtewGxjM9/lHY+zGikor0bDOlFwWoyLa4gd529PNK/8P48mFCxKcL3oSYAcr6Wi9ut+dlxsS+tZPpP2W+iZsWIgcFtY17Sf/rlMdA+hRNtDefrllZCQMzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYDKC/1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYDKC/1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB93FC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785916233;
	bh=bd6uozRri8dSlg7TF/gbdQuSX5N/aI5e1os0iHptkz4=;
	h=To:Subject:From:Date:From;
	b=bYDKC/1oVqfvbS5eqtww447ZF+uL+edXGr6qxbK9t9Kb+vH4j2Vsylk07u9yTArYS
	 JRawfqelaizGADcPdwn4Z54h6vi0Ril6QWEILUBgDaxftZ7XIJhHEjMFDWFFDsnQY5
	 vCS5lMp5FxRoNyDStywfuPswrgpGBmGi+UsG0SLHleZAg1iLUhlJJx3aaCPuOoZasq
	 CTULeRzdGpzcBWRJkgw+FRpySPjWRP2aRJROE5hwexudz+JxHKTcIA3lm+cNiC+dbm
	 b36fvps4j+LvcSH+jeL+C8hpTAO+5Xgy+idEexLiHpfvodtH8Pi9wh5sZaCtvVhhWS
	 /PllpfwTV4J+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36AAC55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591623369.2571.297931433817867674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133cff8f88f85aba110c4552a93ce3dcb3ab72845fa43d0318a15f287ae743e
Date: Wed, 05 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785916233
