Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3573E39D6DE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777573654; cv=none; b=U8JJGGPpt24o+UQOVAflAtCM2jnj+gEoq6zk6QQFV8+9wiEDC64WV8ZZD+Ws0WEvzTxOHFHyFlewLtlf6yTmHHgYN/BtZTdhJ8tRLpQvV9ok+7zxMbUorcSGq/0l90n2C1NKHHjryKbLO4B3mfKYAh4TbtNHjyNuAU2PAW6YzGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777573654; c=relaxed/simple;
	bh=4HRU0fNzMDJ/bp9dM6RklmCg8nRqI8Oq45Yo+uxNEz4=;
	h=To:Subject:From:Message-Id:Date; b=uIb+x97lEA8NGGLAVlYyRYe1cQNd3S+LZxNjjJ30PvN6ZdVWDRg3v2GhTGFFTFG1lSvH3JM9r5c3ZbnCTJLbt2/MUwHeOkzzrk9jQIqN5Zeu1Oyrj3nNt0G4Oda1+dccIhZyei0mBMp/di31gxCNKfij3DmkruDm5/RP4y+7CkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRRYrMUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRRYrMUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777573653;
	bh=4HRU0fNzMDJ/bp9dM6RklmCg8nRqI8Oq45Yo+uxNEz4=;
	h=To:Subject:From:Date:From;
	b=FRRYrMUOmYnAJHT/qGBeIt/GnvE//kcxzlbb89Nv1P3uWUJ5txQ9Y7x0sB688g7+y
	 s+XzLe5Ser6qid83n0s//ICVU36RKjDopCdFgv14FeKrWtgTfl68dSAui1QAYSlI8X
	 VWUlSYHc7voseJB0obbBzXNws3LsuuiiSvQ3GKx2oJsu35cE0qEWKFhaJlshipiD+Q
	 5UzOfb2UsyZTxpRWlqmJGdrE/RIEXRoMKB/kDlKftnwrM+Lkrwzgn8Aqkqm1HGJqA8
	 mBoYLirkcnDy71EE07+XHyhebcFOQXkTMbtGG62Sfd3H0uIOzE8YAmtPB/RBCSVDwg
	 R5/12luNCKlIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD8CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757365368.13711.2283668896838447456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abbe0c99dc1730889449e4692a5faacac4dc189d9e295a04b87b54a38c1ce228
Date: Thu, 30 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777573653
