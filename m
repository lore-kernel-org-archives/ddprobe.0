Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEB219E96A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753145394; cv=none; b=u+VPRm0znXiz3Phmq8f8bs5PQX9+wp66elBD8h/Hco5Qp9+DvXMA/smYTBYfWzhu4o9QMtqCx1FLYNJPPp41jiNisMzm0bkUjyC8CF7/smFUypfufD2+Y5o5mM3G4M1v5URi26mCwjqcW4TcP+6oOxiECGkdzqKbiyLT7XWtjHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753145394; c=relaxed/simple;
	bh=MsTxFP28pXDu/UQXCX3A168OAqsfyICTL93s7MhvnPA=;
	h=To:Subject:From:Message-Id:Date; b=QCmyW8oARH2BaOEGAe7Mv8Z02M5wfTopqmFAatsZS4fHi5eJndYVaYXrEMW+BGXBt0sbJQV5i7qTV07gUEP8OLR+HSf8x7ztwLg9VVk2uj6TqOhNTRkvBZCDO8ZVAA5g4+jff9ENasfF8bwPYtuIpZQsecnfC45dO26FmC5rzkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsyYAfEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsyYAfEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753145393;
	bh=MsTxFP28pXDu/UQXCX3A168OAqsfyICTL93s7MhvnPA=;
	h=To:Subject:From:Date:From;
	b=GsyYAfEvdFQhhEDfXtxgZj47G4Oa7dC/QlQPkQG4hBuJ8Mrtn56HeJgSbu3YdBMZz
	 9ih7Yzt+UXMdu35UJPdhk4slA4AHZ2UikTptBSAb4+dY83B3pYe5psHiwprddslc0h
	 NUOK2xFptOYY9p4EqQH0fSAhMY8VY59H9QA3Q6DTSxxCFWaty1iYldCjNdczGdW6sV
	 IHdnbi44NFlPrLed/jv4vrdz5xN1Tphte6b7poxRxybRpxanpA809vX1I1irBhUBr2
	 49F9V7YhnPV1pt2rY8BWAqumRc/okcaT3SDQoCugGbpvMEo5IwGNn7qPtpmvbvxdiE
	 Mnn0i4ybv87DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90036C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314539358.1987.13159786043359950556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436771acab6f5bff6492f70bb16ead909384d1669eb4aea41fa4132432d89cb2
Date: Tue, 22 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753145393
