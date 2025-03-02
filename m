Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941E1E260D
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740916734; cv=none; b=c20lrrT8/21rcPbmxCmRCTKKuI2C0MdOyy2T8NT1PgP/PbTXAfr1Ntz6j4qonlRAaeYA6nBxAiVXYgNl4i4cm/iYPoaJZXDutVNzAwacmkwkFyQ+Fe+I1KAxo/r1AEn8jTalbhHIXfHpN9Tsclm2wVXaWCBMRsrlwG8Nb7a5nx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740916734; c=relaxed/simple;
	bh=k+wGo+Z7xIjZYkyshezEZdivUbkVZ0JAKYudvBf5Eb4=;
	h=To:Subject:From:Message-Id:Date; b=W0AyM3fQ6oA0pK+foxp9zJ/C8SZZRuA7/fEOFQUzzWGuqeQ4mQUmYm/Z9rb+xCHvi2po/tfgBsBaD/9FdVRnn2YkDN4hqm+m00PX6cSJKLCJhn03dQtNQIeImW3lCZrRZw/XM65McQzIXbsqEXO3CQbYjgY6E7DcVuX7lGithTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0o7msqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0o7msqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8DDC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740916733;
	bh=k+wGo+Z7xIjZYkyshezEZdivUbkVZ0JAKYudvBf5Eb4=;
	h=To:Subject:From:Date:From;
	b=b0o7msqyAdrpmnWWNvKgGUmrWEnRpR5rptdDLSyb0bKovEJVA02mCH951NS+kjQMd
	 d+b/d4UKwbmRexFZ4BF0rTMKsUhzH/59vlWrhzTRJM8tr/tH1EpaFWSBaxMbXNN6Ww
	 iy0/WeW1CgylpKLdyrCUM5TkStg+BCyk9NqbOqEKp5dd+iktFbQUagsl6lo6scW3nA
	 JNScaa7ugWItYf23Qf85b9SuH2io//g8py0MPT+lXfHicdSxSFzkq5eft5wA+mbGSt
	 +FxEx4o3noeV/GvVACZrkQz/tPY4ktAmz6ra562NwMu8vxHs5qRtTRP5CAKKqHdHX6
	 1L6pbzXTazCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A05EC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091673362.28188.7721660650679279496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821195b3fc19bc0142a2be832e3a88f0ce6ffc491d35b92abd3795081985ba97
Date: Sun, 02 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740916733
