Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149A4307AC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997994; cv=none; b=gLELVI+/MR+ZCrCiFicIAM4f2qGfFy+7MDQxYRyrrkD2CslE/tVf1rSGePw5Rauy8rVy169j21pPE7uSvb6nA8iTa/GaYeP+IYQ3gYt8dIK0CkKd/ld3SzekTne5dQjsaPkMvqC3ueI528EidE5KJFluhtHEVwH1mKtyYcunfNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997994; c=relaxed/simple;
	bh=GFgdBabECZlTvegxWLjeIntPf989e9di5RVndLEv74s=;
	h=To:Subject:From:Message-Id:Date; b=dE9S645V+JvsmkIsBnuLQ5YgOokWdEi0k1/SLFuSpGbnk0yLUQ75WVbZUNFaCbUYSFVL8KAdXGtoYJK07YsQFD4vjUi+bpdMuGrSJvKAsULODzc7oomII4BHtprSHotro8EMw3oYcDFZ19hqlrM9X97plF++qLw2HzeR2Mdog+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6xS6MMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6xS6MMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C23C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756997993;
	bh=GFgdBabECZlTvegxWLjeIntPf989e9di5RVndLEv74s=;
	h=To:Subject:From:Date:From;
	b=o6xS6MMgJjjZAFL0ik/hr6MdgNHWaymKbNP8S1dX1nX5/r8iJS+8vpyPfiduFuI7h
	 vmUv3jkHXNnkCRYz2j0Axw8x7mgUI2grooPyAmlzjUfIi77lUbBHUAPSFs/qMZCN1J
	 nJFx1d9tVUjpNQofLetCAZOrfL9vGp128etLGR+PnI645kbGIOv+TzUUjJXy1Hdwwr
	 SQ27nLEaSUZG3jos3ncaSyn+cCHux0iVRFJvO4rAcS3Aw3rVhDf/uanU4La/nChVbL
	 ZxLcFR8zw8ewNBNg0Z/ctUqhIXhxg7+/HmqZBeWdsfmVUUioJeG5SjN77H6K964PvV
	 Ha/4WDuNefYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3FCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699799357.21755.13129448825920196699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb02782741ea0d273d0189d36beeac119df2cf74cb6f4177f75f10fefd57df37
Date: Thu, 04 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756997993
