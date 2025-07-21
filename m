Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2843418C00
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753075794; cv=none; b=eAYChR/+lkqqi2WaljPNVXD4A4vNpPWp7FR5D1reIHhnpwEhEqPTuNXDE7vudXPRrO02vN7OVDosR2vMeJ8Xp4RzM+4ysy/ppewKinOPKWrtlboRFNfuKQoWIp8lQsRcB6PNk4TUCLxIB7/N+QxnT3RioyjgJxIvo6/KKKREdGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753075794; c=relaxed/simple;
	bh=5VTuJzo6zL3k2GBLJD5L1XoEiS7k5hodoZIcQA3bYw8=;
	h=To:Subject:From:Message-Id:Date; b=qsoiDuhQ6UJaAw5TPa2pSfZ09lrTvnKQ7xiQzUjLVAzIHV+ksAOy2E+lbnA6TLBwXuWtQbpCGOAbdIStWEqyjwnp/6nWp45P4F4JO21U4VX5lw6znD2AWs0Uc8zVwJzp3qDa7N7+oS0WGZvZdrNsuz9ab8JxBnwCAJHPU00u4I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qexkN/J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qexkN/J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A3AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753075793;
	bh=5VTuJzo6zL3k2GBLJD5L1XoEiS7k5hodoZIcQA3bYw8=;
	h=To:Subject:From:Date:From;
	b=qexkN/J3BXnX/wq/Gm75tY9fQXrM41Ow2hyWIRetTnjYcgykN8F8SejbNIxPsml/p
	 +Mxidb8OWf+cLUgENqA4mGtgRCFMDii203vV84V9PIalFF6Cn9VKckw5Krox62LDiZ
	 sPZprIBpadxWxS5k9VLFL8UHXm0vWccRNGJobtUoo1Nq09UVN7EzZ9yTA6hFDuSr9L
	 HIQSx7S+fznrcfDNtKKIMoFUSqeCiTQSgfQ8IYIGZ5YboDf3rnLuzFJeBeUi6rLWJJ
	 vOfdlR52h0YYvNtkp6cPsIRap37SBrFPSqFBIa8jsy1Al9sEJLwWeT65EvBbC6zbxR
	 xoiGA9OdRkY8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41EC83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307579357.32694.12167286125457417474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10d8d29f22c02ff6714abf59206cd12f35cb2ea5481fe61eff5546a30d17c1b
Date: Mon, 21 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753075793
