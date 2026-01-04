Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD9D4C98
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767517434; cv=none; b=ogi8j1rpHBkVTac0zSmGas4YVpdTlJCkVESjtnlDPI0Ys54MpIm1eZpbnvCH7hu7ZAD3imjyl4od+R3rMeFcqlQw7m6tcMYCcFEtpM3PJ6Eif/gITMgxmeFatGl7a05PKC/xmMIxjGxImsjC3PG8MV8iZmfAmusO11hWDkZaYyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767517434; c=relaxed/simple;
	bh=aR8TlxXMO9oZia0s0Td7iJt1T4tvZXQ6JN95gGiL86w=;
	h=To:Subject:From:Message-Id:Date; b=mZFgDifclPdyCjmAJ5PQOuYCA3MaN8AKVN+ccTXdFw+3XcgBkRH0njCbvZeApxnMy29++DM+od0mdcwpDudYmSYBlVIB2HPSMR4JlSJeTf1SHP5S5+Kyq/6ZM1DmU5lroWfDlIXiNKBvjU0qTJev+iF25XLhzRKYqI730ei5vjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6g8aCN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6g8aCN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767517433;
	bh=aR8TlxXMO9oZia0s0Td7iJt1T4tvZXQ6JN95gGiL86w=;
	h=To:Subject:From:Date:From;
	b=O6g8aCN3AnKBwy/uhRCe13+MfdyNgzhuZsqFgS5QDP80C/YqRMRSXlNujbKZG23pk
	 4cEFK295Xox0h3+kB685Z3/YpiGieMSGK7VVrRsbL4BY8Dk0FSCnYpHb6sJm8mFWPn
	 e/7US47PA2EL60cXPi+AOac+f6FnKU5VuJOKa6LQGWsTeg06v5Jmkqa5WzmSikjsJ2
	 98Qelrd6TrII6W0/6TLzEY7vcSUsMbPLL8dFBOmpkI0qan38pNgthIKngAHq8Oicw9
	 Bj2rt+bPkKyX+tYSft/1cNKydyqptyVfQzWUeapeyRYPE/g5YcqbITMV5cB2FidfrT
	 x+nG45jXMkKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932AFC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751743358.23389.8834739139431417972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81abaa5fc31320be306b230156d4174d5cdf56c27a3349b670e23d6d71e15e1d
Date: Sun, 04 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767517433
