Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3125935677C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789228834; cv=none; b=rxsQUAdyp6pZLBwqlqnvHUweJGf3I4S/nAjGzxxHgYJmkuBMfcQFAWJn0JrQzWsHwN3jpDYYNYamLpp4Ljio0oqPgXzKJNhCpj/IChlsaGx07pjZqSwKH6qOZYcp2cnAoCJGcN2T8QAjS2d43HKI6Gl1tO/TWE0sR55Yvne8AN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789228834; c=relaxed/simple;
	bh=x9qKUEW4N3qEs8jTZMK1QlvCI49l/TAJY884Ed+SGxg=;
	h=To:Subject:From:Message-Id:Date; b=bu4E/QOcmNbcOqER227GhmT2In5u5t/IK3EoI97jSVSA4trZNB6z73PPctdvPIOnEqx+ID+7sT0XZbi3Pxm3xzmJfs4JZrZaW5i6KwEcTDJDDdqhDhILyV6MnNBZbIQlnm27nVf35dPassfEWGCPmdYnhVVTCr44UwuYyBiDL9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbwkrMid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbwkrMid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2949C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789228833;
	bh=x9qKUEW4N3qEs8jTZMK1QlvCI49l/TAJY884Ed+SGxg=;
	h=To:Subject:From:Date:From;
	b=RbwkrMidhwPl2p2m/Gg2SVF3/cqqzOxqB1HVS0EQkE1DUfpwXSuSRrhsPVDlwojFA
	 hWITc/PqazAVUtuBns1/Yq/fEckYGPbA0wyRqhpppMq/atZNlh9Y2yGZoOO9vbV2jo
	 kxc6zVqTwwLDqZXTL7HUzr3y6eXh2p9V8lyFBRWTHJSFzVDrWkpUAV8g205fpIWJs4
	 jiZofbZYjWhSIiRchS/bmb6z9mxNNj6C+iym8bxVQz7J9fxu1kWnxdRNiRz70MulvX
	 4LgG6/SymK/3o1YZ2KryGD4oSDV6x7eGVSjqSAh2vBjtDbERzu1NZpvR2tj+SQTRjs
	 7ueAs7piEGWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB43C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922883368.15596.11255356804989122926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f3618687686def1e45998d145ca1914ba02940f7acbe4073e0fba54fcdd0f4
Date: Sat, 12 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789228833
