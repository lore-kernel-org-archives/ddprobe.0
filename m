Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3424635F610
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781860594; cv=none; b=DgvVIAc4FwaWx5MfIIt+PWJxkYpjEQCbc23ih8zju3qHq3crD6InH7G2BZRNnqZGAHe+1nWlGyNbem89ab/dXfCOwvrWotURg1liin2KpDM5mTsuY/ARw2PkBvsfi42AdKamx8kheyRZiCkRtba6mhzXthch6Thxp1UjhH7FdV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781860594; c=relaxed/simple;
	bh=06rmJntWlb/brUmCJOrV2OzMfiOJ4avBBYLNyyEAzgk=;
	h=To:Subject:From:Message-Id:Date; b=W3cDqLbUKEWum278l+p3z/4znOQZoqo7ZJv3WIDr9yGdNYp8wPWZYXfyatHkYD8wiAUSBKioNeYTZVaQIu+l/f9j/khun5A6c18J+EnfAobH91+B80YFxBzWefiRnE/FCspR0ccnQJOV3Mbxkvliq0RDvm3EM8sxl9/RoLCEFhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXYcUX4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXYcUX4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E29C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781860593;
	bh=06rmJntWlb/brUmCJOrV2OzMfiOJ4avBBYLNyyEAzgk=;
	h=To:Subject:From:Date:From;
	b=hXYcUX4PlYbKzz05x75Sx3+LM62BvqOcBaNu+SBDCSNnncF3N55R5WOhYCtSPRR6I
	 5xgkWoqM5GYtJxA26MKr+6mmMiVXn+5xouHGFrIBMOKOUyfuMlUGneCuzOxJ1Tkspj
	 FAdyc2gqaz39MkHvjZsUvcJnvFPOtL1b3dwDFcVDYnF5BrWHUCLny6DMJwa2cbRqBd
	 oMjDu+UDwoM78/NeUpLokyFyoR0zcuIUrIh93k5i2shwKlSlSufXNdY/Qbwl0zmoej
	 Nc6KWBJCx4Modb/aPxpkqyqISlggnGdjOaJQTPGIwpMiAN4nLkCiiESItalT6wsqnR
	 0KkWmALWP7sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC996CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186059369.861.1999769940110400640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf9933f1319933a51a7bb2b6373a7f0966d2452657d1265f37d80f74f404ef8
Date: Fri, 19 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781860593
