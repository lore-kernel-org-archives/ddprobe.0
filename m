Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B521AA1D5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789523434; cv=none; b=GpxPH6H9ojMM+6vGoHDs6Gn2H88YPDoVEMZ5/aOjItB8CijZtFxEJ/mvZr9XQvU3utcUW7uJt02EuImezQY+Y9zwt/yinCc4roVJ3NGEHoSt906JWZiYBETEY7KfqNkxUQPeeWp1n8Mlzi08cvon/nV6goyzNiROdcvsgMU67uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789523434; c=relaxed/simple;
	bh=kggAoxLl30a27oIveTNkoYcaWKgfbAkE9kTH4lSFLTM=;
	h=To:Subject:From:Message-Id:Date; b=OT+duH0NHjCNqh4nnIm6MLoTg0O1M654CepPOvC2gpr4soaEXm/ICF5Ge2mKYYOBxDQGtp6XkzqjeY8/P/RBUgd7TfmSyPmVEVMQqJMZHzI0tYvX4JIBXu9Z8q0+gpNMHkkdHU/Rzm+mEoBjdWafuEI5PURkk6y/KoKJrexroDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8pO+tdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8pO+tdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30A0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789523433;
	bh=kggAoxLl30a27oIveTNkoYcaWKgfbAkE9kTH4lSFLTM=;
	h=To:Subject:From:Date:From;
	b=R8pO+tdwvjNEWRZAl/FHXN0wX0uO5qEpUHfFvjdBmDpHc2v2h6fGP4mAbq4ZufleS
	 jNH0KC9LvSGi8AmvJqzZDHstdCgKsyAmwElUCieLhXY/FUeajcWM1tl53jpMGJxC+/
	 mRPpVYkPIpc5V/bXCrpgOZFs0rmVkJiexlvJBZ0iIjXbEPAeb0R/anIp9Ew9yj6iLM
	 J19pxwGbX1i814CjF8ZDm7mlvEyfHKvZDPXK+JBp4vvuXBdUCQGSW30WqfAhlU+J/b
	 3nOMREydt/DAc4gKR3UTJN9OML5N7nUDXjXPSR4PTOoSOn18qn65tTHccawi0pD8Xb
	 8k5E2lxdazzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A4C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952343368.16042.17199304481941717275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc844af4df7dd510267e251085e406e35d5d6fdb87f17988bbe2309857de4c4
Date: Wed, 16 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789523433
