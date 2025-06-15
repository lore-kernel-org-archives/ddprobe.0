Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3207D54BC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750018194; cv=none; b=hks1lx+yX8GmLeuY2+K2VoQOwuDKjzCjlruSMxBcb2GWeDzUaphCA2Rm4h8HiWbhs/UdCl8mf23OKBzULyy+1ZOftJ+LDOVg4HqpqVNWAbi4LTd+YBar2SrpsMu5s9V/WHGYfeI918/zJ/IixHTVQKPUfByjR7d4TO+0H3mqiz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750018194; c=relaxed/simple;
	bh=RWFp9g23Y5fi+cozMFYn0pmCVdB5+QC450hPLjWG4IU=;
	h=To:Subject:From:Message-Id:Date; b=J++MG2etQ00SiQoJSV/FtADmJmM0lizmmd3pUIP3E0mjRdWgfFMXUhHqAs/wSLYZ0Xv36x6lI0yrQEsFjolOkwHbvE0C7GH4zzufDjwN1+NR/H6zL36iySaemDFb3IXvNUKezLWbcqCfkYSXw6L4JlZr6c/k1So7z3Fdr7UKsDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbDJWoO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbDJWoO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADCC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750018193;
	bh=RWFp9g23Y5fi+cozMFYn0pmCVdB5+QC450hPLjWG4IU=;
	h=To:Subject:From:Date:From;
	b=cbDJWoO38uqd/lWhV1g+nZFoS3ssQnmJ1wiqovXXFUEaSQWOzSnMJD5VoZ8MppaGN
	 2gqWO1QAojT42QCcckBJeiXLC4zOJ4htRj8h9+uHkhiy+smzPQ3Sn/8Aa+FB5NKOXB
	 Ql7ZwWU3XR3cOFfwjbacqS8a32mXjewSxQHsSyCr4gpUL5T4Z8C1AioI2Ea8YqrlGM
	 3Otv3nHA9FCVwzXGeJxrj64taONyNRGS6rI4gZouLbSCPCJA5r1Ae2hqvVORSJKT9+
	 ZKnuotZq8u7jNirUIgy/S+6BSLYgVVloSOHyaI5EvgV/JYN69NdARWQNPa7AQBJZu4
	 95CKIGWEfh1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F1C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001819358.4096.560229550018457315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e2f4301adde01196f79beea2304153209d329a3f418fee669907b1b5299039
Date: Sun, 15 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750018193
