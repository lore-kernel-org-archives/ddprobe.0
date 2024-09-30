Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C12184528
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727739354; cv=none; b=hZSEPW2azQm2WoDoYCSf5O+otmEG9qMFKz+NsYfI9xiRFzip38ycW5qLU0ujeEZ53VPG5W0qfLYd/ytrlplIEqjb1+4hijhvcD7jwe90bROOznvvSTiqqWTaka4N6m/Xi2GBb5ksZ/sILeeu3WD5sRRiBGuTI2QuMeju3lg3xZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727739354; c=relaxed/simple;
	bh=iDuBDl9yf74Uh9VWH4HHOtIuLmcEPg1lnNQ0TLTMLhc=;
	h=To:Subject:From:Message-Id:Date; b=jrnE7sfEfQSIBhCj4TnMdf4fIQOiUe2WtO5f4BE7oc46p6M220jLxqMrOinx1s41yoSRCiCjdCJSvspcroqr5bTZPlggMa4JTc0PJnlZsmwr2Ynaye02BCKwXLyj/xzEeRDKhYHWbgwlw6/IA+8X9wq2Q+6T3ehzAXp/pPQvRk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYHV9oMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYHV9oMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB518C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727739353;
	bh=iDuBDl9yf74Uh9VWH4HHOtIuLmcEPg1lnNQ0TLTMLhc=;
	h=To:Subject:From:Date:From;
	b=ZYHV9oMvLRxNmTlZaOamAcIR6HG+iEUfJhHnDCCopEqbWwGH2j7KNM1eQxSXSrDUy
	 IArecMbfcVUmDMm8V60vXAOm0J924oK0QOP7YNcVyXaRYCsG643mzbBrWan22iAcvM
	 RFwTWTMJyeILNPdqA66DbNS8U8eRRo8D85Z9Xnut8dHWNnh8Mn8g11b0hlgPtbbin5
	 Nc46x55MHBFYuslpW6BhwJxIaEtysZMWMb0RDtQv75Z7VCDLxfy11rLgVxQmP9cBSJ
	 Oa4+GU/NLKHIWwqdl+fRBoiPRb1fVprLPt01zbcJrIl1Qa1d20qeLPgjJiwZlXvd95
	 +WupRx6hvRdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92279CEB2CD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773935358.1069.2683977965750474750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a7c74c6340ed2d60d23efc5eb593b16552116687c56b5736a8a3d80bab8942
Date: Mon, 30 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727739353
