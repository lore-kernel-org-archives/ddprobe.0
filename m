Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3793D433031
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786017034; cv=none; b=eYjAdwvpP9Qq0JBYSg9QxDb8fikXVi1B84+HkGjFWpKrcNk5ddX81oCEwwctKlyzTQC38CfKf5OYASyEusz/tuycK/p2syJK5C+BCMnsH96YEW2hUyekxljMfgYdDv4wQgNEbAu/M+IBBiqnl+mFHoDyxhGwSroUOM3GHX1J4Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786017034; c=relaxed/simple;
	bh=ZvtijMX2FOGM6BcakQfdZgO1Nb20u0HcnMdPtcaIb+s=;
	h=To:Subject:From:Message-Id:Date; b=Jgn/9Xd44KsQChYPhzyCsLcx0WvZNN/h71CTeMT0K6b0GLXY31zxDlSqWxrMvPvfCcAvGdsCPhnHTvev2WN22fgE/m3gMHyN605szFJIWjdojh8g4AQgwMWSsQw2i63VfShZZbwG/W1Tva0xQxDfPmdUxd2DfqiR/Re84ZtP19U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osPgeeST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osPgeeST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AC5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786017033;
	bh=ZvtijMX2FOGM6BcakQfdZgO1Nb20u0HcnMdPtcaIb+s=;
	h=To:Subject:From:Date:From;
	b=osPgeeSTHhu15F+kBzgxjJCnPWEcPypj55CMw4LDWi4F/beMLgDmxeHzoNIb8v4Am
	 jjQ0ECtKwlfYKgjuqnwgulAFhxTLDA06PW4o4hcjiwXxgMJLwJIbTQFPIB7jaNbRoZ
	 JDWZJ0bar6JTrVsQvRl+LeAjgcJyxSYyfra18mc8DRvp+F6fIUK6l7dZnnV9nnJkf8
	 fkwg4/CZtye/nLPESXAx2DGjyYddp5b/VN1uJLZE91682CryqY56Vw6Yw/ghHmAauc
	 zgoriV2zKppRCeCvusdyzmkkffILd29CXpgSo8vCRdZIm+fYtuCmwnSptJCi7UubEA
	 FFRuigNHLfzAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3124C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601703372.11530.16758601843634256487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91401f5509e91b75e92e6717bdde2e2515138716f9444311078c0bad5370afcd
Date: Thu, 06 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786017033
