Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622AF3D1CC1
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786292434; cv=none; b=NiaIaNrw3Zl2aCQHzPgD7gA+2cPOsgHLsAdnzXAv5snjwqcim97eeaAY3+wEHNufshCAYDqxyXzCxK44MCTzgyDPKGcZC/32I5BvicMwOf/Hfau//WW0c5Olg8ubii6rVbWDtb2EzYY4hs3OmOurK+N0itu6EYWVifiAoOr7tOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786292434; c=relaxed/simple;
	bh=fyY8PmlOHW52rDp4xpp73lQoxjoHKbT2RbB/lP95P8U=;
	h=To:Subject:From:Message-Id:Date; b=b1mBo0jXA2Tm//Ozscf5ZCjta72hZSpDyFaZLO5i4RPFyHyuT//YG02m3HNB8v1JikQEqM+r2rowSgpsssXqb9C4molxO+pVbj41dD1Zr6Wqt2eaIqK/5lvXNJUNMWxKcdEHIDBaQscsZzJoqU7/o7TvdIl1fKxhbd5iZVCFCMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay7MS/Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay7MS/Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5278C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786292433;
	bh=fyY8PmlOHW52rDp4xpp73lQoxjoHKbT2RbB/lP95P8U=;
	h=To:Subject:From:Date:From;
	b=Ay7MS/VypKElV2agAPoqP4J7Pc9DbQLe3yxnT2aJ816KttHc91Xon1+SqMWG6unzZ
	 NwAJn6RIP4J4bZQJT49cK7I1jP8fgj5gOK/EobM0jbiMn15DTZnDepjsK/YFATCvTY
	 1sjUZpbIzA4COu7frCcVDNqHC3lgBtczuezYsU3FCGTFxbR93VEUqKFNseCZ32EdtL
	 xCiR5+esUiH1XxmBiVoLgOZLauuaU3Xxu2QbWisFU5nsjA1EmIazriFdrlnhwfm0cW
	 7x2CDwjTXcngrmdpKklOfyTf3CoSQgT4QkbTS5YdK0Q1GUa2mYO0gdr9dV3k2PSse8
	 LIm3oqkt33eWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3819C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629243369.25988.11513208177565545857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b2c4ebc3beb8b337abc0b97da105dab269653536726646ccc5827aa19bc206
Date: Sun, 09 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786292433
