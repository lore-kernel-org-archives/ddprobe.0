Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9A155757
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779160234; cv=none; b=Fdrb2z+YDPfIIBn4hxYUjPoe09B7r3MHyYlQomY/MBWJ6sG7FoqcRTLTh3MtxRuQEntTPrFqbr3TH2JvonSDghPt6GLYr22WlHPpL430xWAj0IcCYruYkfj6UDspdPKMfw+X/Io8ig0h8EsY7NpCKhMGnViAWrg03NW08dHWrDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779160234; c=relaxed/simple;
	bh=cXCYLIS34kfaCEFGAxmO36r2WjjK7kgrbwEI/TGIHcs=;
	h=To:Subject:From:Message-Id:Date; b=m/0OfeewfIaG6DSicueJ8VQHHiZKNqEQZTxI9TtqiLmyv0bCC0+Ks3082B6sT9Lryv39digOXPam88omEoMORyt7FGwwCHetCDJFaPWzXlcXy46swrHiSFa8idGD2wr+rIPNgUXLtMO908c1NCOPmqlJcCgXjZIa3xn/H5gJVtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1qPaICR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1qPaICR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CCBC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779160233;
	bh=cXCYLIS34kfaCEFGAxmO36r2WjjK7kgrbwEI/TGIHcs=;
	h=To:Subject:From:Date:From;
	b=P1qPaICRc3bAJqxFeAjqs02F8C3lkoEPigLy65XwNsi/ASs8M0+CmwbfJ/iGr0RJc
	 JZhSnvwXX7xQ+C1xdIArZFNXoTLjmC5L+3JRXgdAmcuSsp+UG/wqvoPMYMwuCErfmf
	 tB5egrTDmcGUBOO1ykpZudm84EqnpWNDWwZEsSGokimHQZIq1lGYV9cLx+iXIrq8VD
	 Yfq19YgMNufyBbAtOFTICzCgmbtegrHezd96yBSiS0yI1OwZliit5o4ZQCDFW+x8Ir
	 bMrXKwulsmSQUcTACCa4mK8V3VOjp3aOMDLb6hSRT2TwwR+P+thPk+5gyh8GtV114l
	 DkQA6c2d7nFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25CCCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916023372.29150.16924051017300554235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300761d809779b68d34bb75d84ea1fed438e0424fc86a8aaaf7f09ca3518f0f3
Date: Tue, 19 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779160233
