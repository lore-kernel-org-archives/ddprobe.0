Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F823E274E
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778056054; cv=none; b=t39E7q/FOk8hTUgLnUAjEC8T/2dFXAf2Jij8KQ5gs20PrgpCvsxYXvZlZfy26wHCcZua+wlpDxFFsXEvExpL5IENmGNiU0Kpp8Q1vL/eBOFHgL+RHDkGO1yNuyLdjVsIhKuBp6yNFuTU7sz7n63ojQ/acu4hu/oWf+uuXl53b4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778056054; c=relaxed/simple;
	bh=jHx+NfKteTJRuFAHh/8XkNvHs0kR4n/fQidFd+VH+A4=;
	h=To:Subject:From:Message-Id:Date; b=iOsMOAmco3hcfpbQcruM22L0EOlIaoFw5Ge5tHQSt+uXMyiQjd60SNwYSrYFIlIvrJ66JQQEUjAsXBxvC6lIPJwg0RDuYMERjqYRVUEw5YVLviy/Q6xF7wxfd8P9Sx7ml4DdEFk4cLfbC0yAWec1unruNisgttRlCKI/GsafADQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpizKpA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpizKpA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC546C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778056053;
	bh=jHx+NfKteTJRuFAHh/8XkNvHs0kR4n/fQidFd+VH+A4=;
	h=To:Subject:From:Date:From;
	b=gpizKpA46bUFrlyOTKcN3M5HLR1LUzk9xPyz9BT41iO0lG7YaiOEyTtahRsAl2/ym
	 0ghAHl2k3dWdckblWEA0EYlnVLcjnaHUkEQnu0jCStaD/2nFulyI6LVFHvDIMhUTFz
	 meqjJdx69joK1/LV9D8Gs8KL2m3YbP0E7RuMwX7qzWNIbkE1OyPXbKAHB0O2Au1lRR
	 inNa7k6gkPzYwkeHRki/6tEQsuckb969G4aMulixamp/3NO0jyKSAkV1yNVBrzG4Vy
	 aOGLPyXrSb7anph/dPi0RAeSvOp3/naaUnaICnu2B16GUoaEIExCTdCjEvLGCAWmqy
	 aNYU8o3+bKUxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD202CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805605370.27459.16267949463423501844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa9887ac817387c28e1c6bf2915c073bde929444278496a75c4dbbc483d5746
Date: Wed, 06 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778056053
