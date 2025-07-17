Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278FD2CCC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752731994; cv=none; b=oRzNots4/1f89AgVhwOP+lcmou7yNnXekFcOC0u+4nJaTPkPbLmX2YJr4Zm8KEAJdf2KOmIF+myPIkYeG8lK8PuBz/lOUTBr7idh9b+lzUKfmok6sZkqjoWGEZlx45cr/oofZPjmfl2RBDNBA8YRmKvDeJax/wakMoxZvF7vZDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752731994; c=relaxed/simple;
	bh=0lcT0paWbGNtoKwHKCFZUcpwoN1MJRt08X+3xQtZ0rU=;
	h=To:Subject:From:Message-Id:Date; b=MxrdovpK2aa4XC1wzyqWGW+d5pMBj8MGL5Vp+l/xl8vRmrg25ZnH5z2eFFzWLrvdRPrSIcowh2siaqnLgNENnBlU2t/+L6aRqxsalyc/xTvS/Ozw1yondb8W5TjdgvhnMES9yxN1mGQwvJNz0QqC8L+oCwGrQu0bM+hb8gI50g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8+FnGpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8+FnGpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C59CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752731993;
	bh=0lcT0paWbGNtoKwHKCFZUcpwoN1MJRt08X+3xQtZ0rU=;
	h=To:Subject:From:Date:From;
	b=C8+FnGpb2pG4+kCgiQdboa2h10SV22pihMaQjiZR4ar/86adhO/Da+JFbOlxkQSEY
	 14fLXSMPGUCVZ0ZKCdSfUX87vNGdJ7dWF8aOJLdTt5H+Wu4pBMccDqc12PHgW53hQP
	 bgZzAyIvCEmweeRnhTNSA24xPvJaFDVoeUkF26PxQUyb8YQ+tFAcQNpjWa786rOd9s
	 kgXR5ljLUyhE/IKEZzjwDqOY/+9PfCFlptm/kds/wKta/a997hMMaRDYPg4RbabgP2
	 zzBKGUX7NbRBwhl6Za/Wida1cIMGRYrqXN4GBybmta9o3AOf1X/ioyql8+2ihfUST2
	 QquDtQERRyxcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C8C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273199357.3256.14540972398812292267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1184425878d7e0df4e22f9bc543319d08aac2ec9982437874c358753ffe9910
Date: Thu, 17 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752731993
