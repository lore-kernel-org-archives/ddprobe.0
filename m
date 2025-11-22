Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2702618FC80
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763799114; cv=none; b=Cv0snLV27odfteS00ABnfWWmkURCM/P2yG5T0/zN5xIQXqpLgN9XUERedVMhYx7X4ow8pvLqxFMuUPHUtTquxVEFmf2FPumZYfRQ5kEWAgaVqqkNAYmbd2+zMwtKuvvZn2SpQ1fg1ECzEZH94FuvFA/TwkbMlwq+pbVM75/oXVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763799114; c=relaxed/simple;
	bh=896Qzrlr7370wJxzkXsRhGjYyEOIkz2TK1/xM6c5Wec=;
	h=To:Subject:From:Message-Id:Date; b=mYRKrI6+QvxGpwleXHYjd739/q2pSKznmSM31YDJPi3/zaMj3RQLWG4WviFBpq2rrUiNAjI+yF4KYw3svZWjubgVfd7kZSjpsqay+DlNS3DUrp/N1jLwKfgm0fqA5nNH7OkYMsd7CsZYhEzmZTOe+OHNvE72xOwE3MMONGGsw0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHEPRHWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHEPRHWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763799113;
	bh=896Qzrlr7370wJxzkXsRhGjYyEOIkz2TK1/xM6c5Wec=;
	h=To:Subject:From:Date:From;
	b=bHEPRHWzxBoayh0HjY6YF6XS2GJogy+BHSCwRSGbUxj7AqyL3ii9IKjFCIMKxYWbM
	 a/clETTyS/MOd7av17xv61mTMsPKdpwdiiSDjN8KVGtVXzZx0FFtCombbkl8trAsB8
	 z25LXreXY+rrTYyjFSELNmZa/N01QoBhJhDfqLEcjUvKJpWShFqO28o9K4YeeVmqba
	 TVFhRoGOxt4zV3e+7TMJZXRTEah105RJ/shF+oNrhIIuWU5R9orsESVXyyyyN3kiA2
	 JUXVgOeihsL84TuZALullN6m8PsnJ2wn+uI3Yhhyi9L5M3WzkHMNYiKaOwTxcj2cpw
	 5p8AUbrN/U0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93826CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379911358.20197.2870160806523605698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad81876bc27574fea087e92c47b8cdd30f380e35149c6a8358071e90e751338
Date: Sat, 22 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763799113
