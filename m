Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F24376BC1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780226674; cv=none; b=Ja0iGD0lDR69smxCwgBKB/PFVAxsalb2n7t3PCD4HXfpjmkC1tCX3K6UdVt1O88kmkWSHprJ23V2PqHsfvKFxh07sdjIyy/IA4uUbfmWkMqQ+5YkuzvKy8ReDCR8i+byrcCvIjMnCK+KHvvwfw14KrwuuXFsbtOtEWgb6ixJzI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780226674; c=relaxed/simple;
	bh=NnWK1Ei8bc3PcyjUQq++LeVdBEd5HT8Tq1rAOpuO3rM=;
	h=To:Subject:From:Message-Id:Date; b=DIhg5PTn58lJpSugDkrz8Yl4yFB+32yuE9dR/PZOftnAJ77ER4KWSGbc3p2/t8A4/SHuhxSdRHQUBUMml4Q4RCO50cz0oj8Po2w+3gLP+URH45mFroj+ow8fPUMxssbYqKibkJv6pO6jJhtDMIjeKq4hay/5Mnr77qDyUJBj3tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAvRQulq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAvRQulq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D044FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780226673;
	bh=NnWK1Ei8bc3PcyjUQq++LeVdBEd5HT8Tq1rAOpuO3rM=;
	h=To:Subject:From:Date:From;
	b=WAvRQulqqtV4+Nie7Ase81SiC6yxHtixuVhlx7th3bDNiXcE70cbkBALcH44SavcT
	 hG/1pdAt2ZpumDW2KK1TUjuyX1FskuqL8yMs8+qqFPvYaSn/z07QQkjxky1rH7ltTM
	 fOob/NCh+4HEfdGpoM3EeJb/2rMKXl+wLDUz3J/WksK35Ol3Wi2PCSopy833ot+kLq
	 FIigp/QUmV8Km2ecwEeT7aenTECWxpRTToJzuJkgrZHmalUBV2wqmHb7X4/7xLLsPg
	 CVObtnOE7hloLmUgvl9v+rO6F7VGEBKbICEbhVdVBJj6+phzLcyL5yEZqTDXfpsGK2
	 0TwX5QQwUgzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B762ECD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022667368.29292.15212940069453715212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb06b4b7dab2c4c976a6bfe1a8c9fd5971caa8cdbed808d8e425535b49578cc1
Date: Sun, 31 May 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780226673
