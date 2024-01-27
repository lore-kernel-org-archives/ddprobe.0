Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1393F2E84B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706384897; cv=none; b=YR7Y7xzO7muzGpIfJN5bIA4Gmhu1237hylboAsycj2D5comBIQQH6vLFM5Xjz2nMaGCcuK7IAg8dZ5WfHLXing8c30Mosq5A4qCCqEYs44YLkkkHoghR5G/35gh+5UUxx28VlCntAr+lSi6YuhotFVaiaHQuTPeAmSdQvprpoAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706384897; c=relaxed/simple;
	bh=+fPMKiy4pqBbkV+tKKTaLStXSlfZshcfGxKYcypKRos=;
	h=To:Subject:From:Message-Id:Date; b=Cav1X92aReZbrqgLbXs0vuE36B5Am3lMMhoIUsAJ6JeGxYKVFZCFclYbg0fxYCRsk+PWCCFIPG/hnXHhajnXacnK2upD0wrlOoWccq7uWoZbk0I7o/fRFwWYmfvpMP7Fr5sQZaGq2mrchA2H7mNRxWuereLD1W76r13XSenIhoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orjQvrE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orjQvrE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75228C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706384896;
	bh=+fPMKiy4pqBbkV+tKKTaLStXSlfZshcfGxKYcypKRos=;
	h=To:Subject:From:Date:From;
	b=orjQvrE1/ivqUPFluRWL604euqcGrHsrWX8G4Nb2903P0h5uQ26nDh6YiqlzcOdxI
	 tPq6P/LGeb8vfSY12h3vKfgAbjl5nTQXNuy522eSsOYIl7SdV8WqKc0M+0AkA7t9o9
	 irRwNS3EbQlT75WPYSlEl6HobnJhI4HaiVB7UV5xwvLtbbpwTC2L/mmlOS4HosPPWX
	 tdem56ozwVmTVR1U1pPeqw7/tklTIpIvmh8VoilvzHINCzZvzG9rCvdwKTPf4Rdhzv
	 01Xa8ba0CpACEpberw1oQIw1ophpMGcNJlpDaFCgbT2oWNS4aMUwr+xDwEpNU3WL9T
	 bV3Qdo1ZH/oyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF13C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170638489636.9825.7512217957282600953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae7c4861037b03cb1bda700a746ec8f0b675e4d3f7ed16b7a62a25a7fea7347
Date: Sat, 27 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706384896
