Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C7F3F9C5
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732970754; cv=none; b=jckSQQbiC2R3flPskytxkN2Tppu+FXwjuWhUfjC3GZOxaRB2pyR6RCBdrH8oOyY0S+L1K7H2ACDR3mDn+7/8VzM/JE5pelgxgVlgMs+eb/p+cYficYzDyiAWGXUsiV462PFnKh9/eo5Lg7oXRQ7mkFooSsK7kwBDCpsYzDJuoNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732970754; c=relaxed/simple;
	bh=aodeU3jk1JqXP2z13A1AR5JU/VbrN1CvN6GIlThcrRg=;
	h=To:Subject:From:Message-Id:Date; b=bnS/rswS1PvUUXb6fPdFelZ3ie+UXmNySIV+sHalHxwczsTpcJKNDvTIhbEbRLzd3zoo3TY5YQ+Q2sp+/N+QyXEYGrB95NqbYqKNBz8lZDwPMdVlaE3n3AdtGHLvV2/F5b2IzYjvPXmJPHFTiX3XT9k3Bn33SKjJg7q0mrjVnxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWuQAGTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWuQAGTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5EDC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732970753;
	bh=aodeU3jk1JqXP2z13A1AR5JU/VbrN1CvN6GIlThcrRg=;
	h=To:Subject:From:Date:From;
	b=tWuQAGTWsjRe57dKIorHw8h7f6uBp2fmCOCjRh7HRzisZg7J/sU860GGkSw/e9ykE
	 G90MZemkl45J45VFlC9UQ3uoLSoOAEh42YvsX0fkpGrOFVJSOCjlWj9c8Z44dEjwLP
	 JwiKEuZeyoumR2Gk12x9A1+/nIvaJyJj9RK/d+fxUGHqyXN70lgbg5piAoNjOoQIfL
	 EB1GWUsWvv46iUeNSYtbwSD+74YiCg1QvBO46F9+wGj/+mqih64NKrqZOM0baeFmkg
	 Cfvz1fNYQ/BYyvhxDvQL03sFf5by/Vjx/F4HnVpROXs3lsO+faHL+C/CmwKmnz9VnV
	 WiqDeQZMh31ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A140FD73603
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297075363.1530.6959296059508656645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c43254f645065fd28ed67916c174dbf3a1aa45ebb52eb094bccf8389ccdf413
Date: Sat, 30 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732970753
