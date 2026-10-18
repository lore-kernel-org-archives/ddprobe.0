Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5798227603F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792288234; cv=none; b=LIl2saev33a7XlfN6HZ0A4RZSXWDWqDjMLMtTLB4mPowEbGjgwmhlQTmeZ6hvOc6iwENemAmocEY51B9rtD+wjm2wcvV8H3nYkmgLXCf5CWww8En7uA20VHxy742cdrzyqeuGxx3WJYTCGbBroiRBUdkDx5aVwXb70CU9r5XE18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792288234; c=relaxed/simple;
	bh=HQIJDbOeecW6m3U4SlcboFW15HO/HNHcx1Jus0Opvok=;
	h=To:Subject:From:Message-Id:Date; b=lJr5YtSBqRSqoMAwQd8C3Vdyv1606OwHLHHx7Isyjl9L1OinvSO00/NN7B8o8yDeUHxX8758e0c+7XxdhLkY6o2CVtRDL0sD47Dvd1YNeL+8YMMSUpmErV0+Ms36x/bm3HFtBWt50Yuzul5/upl/PlDQMwZloCraB+uthHDtzU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+cjTmWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+cjTmWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64C4C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792288233;
	bh=HQIJDbOeecW6m3U4SlcboFW15HO/HNHcx1Jus0Opvok=;
	h=To:Subject:From:Date:From;
	b=O+cjTmWD4Nim/vzf/ipln9qEMujYXDPipUsJztGL2QbkCC90gkEaaEkXPrmOBVA13
	 95v8/wloptT5a6E69Pk1yIm8knJdLt/mpwJEbyi0gPn0jhYkBxBY0aKfgQ9XFxBViu
	 hqUDgjPHewSmoOoNtlzqNa1TbE2I522yk932vVEnsziA0fW0gSP2FLASmNzDI7uGSi
	 gRmcj2WSb9feiu9arit43zeLny/BnRixCJofoGPTNFbhEUotqzUnPWCp2g5iglS9jy
	 1B+ozHeUPAh7nfGc560+57mUVVtDy1icrDf0r+Y1sn1gFZWC47EKfMUzia47NsqTeJ
	 LzcrLGLujtfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A5CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228823369.22504.4451651124871067454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26ca2af7eab1ff789bad501738abf68f67aa009282b910f7df2c4dda3c21029
Date: Sun, 18 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792288233
