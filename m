Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB22BAE3
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714992143; cv=none; b=THZbn8khIg1uY8V78LHCbRECzr8K3OBMlZqL/OPrFEzY+ZnNn7KV3TuFvkNrS4pf5rG6eZP839clm3R1LJ5zCUTpVQvo6uPli7TxyN/9wKK9Ulu/Dn2atjIRCX7MTYHD41xuwnxRLqW3ZucMEMspjNFgQDj+ggXTfwrcBY1U6MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714992143; c=relaxed/simple;
	bh=ivSNW0skotdaNAD71pNyrm4fdU4lHEdvwLtjMOpC07Q=;
	h=To:Subject:From:Message-Id:Date; b=l7yklF7HRRZ8WWy5/ZkAh/R6u0fCuuBN82RyyD204pRYG+TX6BKNWdQvRNKQHQNpk6ZFf6tEqBH6ziHEXD9N4Ubkl+XnlhcocnZUgHjf9fxWSVfVD/Oe3hLpbpu+xP6mupW7sE5ADbFOYnjdLzBYG+IlZqUV4IxBkCnmLfY/M7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONgejqho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONgejqho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D0EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714992142;
	bh=ivSNW0skotdaNAD71pNyrm4fdU4lHEdvwLtjMOpC07Q=;
	h=To:Subject:From:Date:From;
	b=ONgejqho25mKdSzTO4O1UzzcEwpKIyehibklBnnWmYst+6PxMchxdHxtBpYSX75h5
	 sFuiC9QSk42Tn7AsmfCyD5WzBeXali1SrU+nLZRyqLMblsutpQyOLaEaQwlJykjQcS
	 GaeBsps+SCHhvXWQVf6bqQAL08WQ57lshSoZa25X00BNP2yQH7JlH7zWMJ3ZVicepy
	 QPmkhJcXypYDOOfSUPJiTHhYboWw/qcmteYbSiOD09EeTYu7YxOPgmNVfRN/DhWOEU
	 Thn1hnEJtiba7bJAWfHjH87i2DWMlre0XGZzyJ3d/HvEN0m70W6Ef8/7YhlLYTe4ey
	 +VYDXThG4mqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4511C25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499214279.12231.2756744258067696487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badcffde8ff58372bdc599c0037f512f479801c6fe5c57369a52573651209abd
Date: Mon, 06 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714992142
