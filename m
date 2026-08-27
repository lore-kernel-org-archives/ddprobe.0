Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496CB36165E
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787808034; cv=none; b=kiVh0bpTObPXjijvf4Dj9yUiXAIKRqRyO2vW9c/RPAT5UyCV5FRujl/Zhe8DviP1pTbfa9nBnZTpkUh9cVrhXm/dfTcwgfCppy6D0Nk7pd0Hi9denEhaUXYBqbDm6tabGKs4zGdhaPF8AAr4dx7YzJRtNaLdxWd9jvQDDJQHbKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787808034; c=relaxed/simple;
	bh=Ec3CezqI748Gs+tkSJNunhTLiYoVFes76Eefkxcrb74=;
	h=To:Subject:From:Message-Id:Date; b=dS0nRP3EfiEEAiR/VoLJTjU4tdS0M42aiZFFReFWCSgfKDZZNeUL2YLG4NbR2yxGPHoVHG0Gh/4Za/g9JEtZlGBowXFnnA/dimPCP2cpjTZAAVND1cIc7eTYdovUPI6NnHhAgoqQmXNo0gJoB6KfxqIjmZTZftDTquXKTYi8rpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTuxk5wN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTuxk5wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF570C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787808033;
	bh=Ec3CezqI748Gs+tkSJNunhTLiYoVFes76Eefkxcrb74=;
	h=To:Subject:From:Date:From;
	b=eTuxk5wNPj7klq/4TeciywNU+uBRoVPeCrv0QHG7cL64e3vM7+uXNo+ZWamSDDofu
	 DENAY/ToLg5NYRg3tbVA5eiB8GjKVSz5Gid2Ht/PUs1E6Zm6jgWvhIk+3kZin5ZgCD
	 jN8gz+GtbJUvC6kKtiYKKCqyFfgAQv81nsB4lAyr86bjyBHwKz5rDxBe6blmNpBc4n
	 Gx5DmDII6rbXj0ajcaf48A+cR4sIKlMtTqkVIFZgkDqyUfSOd37EUMh0kvgz62/SMC
	 ZZ0/cLRoVTUZFk5Mf2MEvFJG/qK+fu+jxKuoz+WtUfRYewfX8z3ocYfnVKM7yOzT8e
	 wSdZhoUd2dD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC520C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780803369.7364.8746890107889046227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4df1f1b5f2319e5e4a87c9c73b8b586168c9824b1582d0673a759bf9550b3b
Date: Thu, 27 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787808033
