Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0BC5478D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773534894; cv=none; b=r/Oszhq0hhfyzG03runtscpdolxYF2zkPyTLRbFwMM7uJWwI1rwkkj6xskT9kJ/3uLOjjducpHWpw4Y6EPhIsGGsN0Af/5aFBhjP4xlKtpRaEEpQb9wspnQguRXYy1GBnrpBMtZmpx8YjBEE1EdjfPrtsmahiIL2aQ28w6sEZrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773534894; c=relaxed/simple;
	bh=243EB48hmWI5WNWjM43DXNslfbx5hypPEAB3AzkxqcU=;
	h=To:Subject:From:Message-Id:Date; b=WMOu7Veg/rd/y6naFK39FrNyUaOmH0a+lUTL51FvK1IfLT+DisEPqMCEI7a6n1DTkK5xwZHCaBgaVZKliiuue6gJwWSa1Anz/Ysnzopfn9Klfufx4sWsUc5gWQMoaZiPDsWItSiwaflAu8arjR8q6Yfhrh7rv57ikdaaBYaken8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEsdo8dk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEsdo8dk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773534893;
	bh=243EB48hmWI5WNWjM43DXNslfbx5hypPEAB3AzkxqcU=;
	h=To:Subject:From:Date:From;
	b=XEsdo8dk5fiJ/a1eKqfl8/VdytTQdonbX0KXZklcqB6VbCsrlNwi0JchKic7gXRf9
	 d/C7q7+LWDvorgTyf9qj0CV6C+ifPz17hqpBFNTBJeOHjXM3E7056CnstBUEQavjcO
	 wG0mdiEaE49eQfy9XbbVRNnZDqll7lRIgS43M2mqo/sp2nm1S3RFQDLfT+UYbSDRgf
	 rRugM4tdnYJ/rsDaXwSzk++H/YAEerHaK2jtCsGByta5csCcgy5FWZrdbD2KmcAykw
	 zJUp6J6O6WqHF32S5WR0PyI5XfPUu92h5dPZ3cnpJYP+WSNVifZAMLC5Mu0NKhNA5b
	 3puzLIPEwSzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300D10854B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353489358.3922.6008383764484307099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34404558412f311a8210208a553a32db5a506b665ab534fdc71614223e235e92
Date: Sun, 15 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773534893
