Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624E92E7375
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788731434; cv=none; b=orkj7OXnwYHMX9rk8Vhej82WblIAupBgycbbDlNaTrntRNMNq8Jj7zCLjeWBsALLV8uqqwRaJ6cZChr92NJl9AbOOhb9s/ARQsIOIC28m2/tHf9TlqAWRDoDDi+IQLBj5ox9v6g6JdvLOga2wQsoYDMm1K+5S3EfFZ0F3q6Q6ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788731434; c=relaxed/simple;
	bh=2BJuLNaPOGMoqDVycoXw7gvivpEoC/Xzjct0p6wue4E=;
	h=To:Subject:From:Message-Id:Date; b=A03B3aDS72b2bUBxMAFxJ36sbw5kURf6Q8eVyd/Xp6WJkIOGm/+9xT+PYGIRhNu2+dRTjNj8wXsDdcuINYoufjsfkXMMLofae3FHWKAeCffH7DhySnmMZlEuk07jpdgCVad9mm7a+lwUEsP6rdV/2m9+TSosyIyo5GoyFb63Bi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDTgDE50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDTgDE50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5737C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788731433;
	bh=2BJuLNaPOGMoqDVycoXw7gvivpEoC/Xzjct0p6wue4E=;
	h=To:Subject:From:Date:From;
	b=DDTgDE50uiFDbmdzT7OpmnbfQ58UYmDKajHrMe3z1qDWKWUFOeG4cDainb6edm1YS
	 EsofEMMp06TB6sy0uK27sgpsI3PpPp59J5IZmjIV8y/vuJO/h+9lyMDvZCLHTkJK5I
	 6udxadagGH7SON6gijG4NbO6EwB/QgCV+N/wL3d9ftQ23tSXIcxhcvM3aPLNZNnF4u
	 aLiTUZKU/VfHrgxKlWKofpdUbzqdyrc89Q5eobiq4T5kcJv2nYVJKMDGUUYVLYtSPH
	 jvlvNyFUZota7OMq/sTO4oHW+9kA2zzL/EBx7xxjMZUfFG+Y+TH8ApSd+5YPtvXD9D
	 2sW/LbdT2Oyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35ADC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873143369.13695.4914646535980955866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e4acde46cd8b0e6c04007627025987995ddee395f004806895844c281e94e2
Date: Sun, 06 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788731433
