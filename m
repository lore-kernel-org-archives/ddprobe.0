Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDCB2AEF5
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773804894; cv=none; b=MmNGUWZERG5+kdjk+la1hNRgVfZ2/abPVOM/GWqZHLdzU+TloasClWr5Cv0GYkQQIttF7uWT7OhevPCHh1+c/Oa/CvbcDOI1+10w6GBfRPs2XlqSs5S6aU5tAazaCZovN2Qg94PIJXxYOknuwpk3mZHQJEV7/PVFxIIlFnh8zNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773804894; c=relaxed/simple;
	bh=klY96Y8tMxL7VxxFrMfg62QaN0snD86z8bWKmRP/EbU=;
	h=To:Subject:From:Message-Id:Date; b=q5efFDoNVaNCjOb8N7kjNErrAnSOuFSqHBF784z+8nfADdH8o0q104gB1soXDQFdqzvpj9DRQGyJeBSTV86EGrShtVBm4H0UzuAkDfirJuFy3PlDdAdgWdf2reUNJjMM5YoXEdlxE5rWMNN7hvelVMHLZgFOd2MGmN2eAcTlhh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDZfhuGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDZfhuGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A90C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773804893;
	bh=klY96Y8tMxL7VxxFrMfg62QaN0snD86z8bWKmRP/EbU=;
	h=To:Subject:From:Date:From;
	b=iDZfhuGGlWretRrCE46qdTtJLOLEKoJJdiKvPuTxzg9WdkQPQNgSg060X1ih2Wxms
	 ARWKFMNMyoE057HPid82SMGcwd0ZZRaAGkd8cAvcONuv5YCHqRPD8kqbuWpL3muraP
	 Em23wgYYXMs+mK+P1gmoZc3jQCUfTQI/AO0CYY7hGERzpD6N78XG6pwtII2/BXT92C
	 wbuRWYp6cM9NrP6Btx3px7gbRVI1pxN/n2idhoycgXzZGdNZdONTqypb3OEUiaBSY5
	 9+xYxycMPV+R0FW4p81m0nMfHZOFp/Lpsk6le+T4aAHlnSzQFFUwJ/ApO60vbW8zsc
	 GUIiwdQ/qLx1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9FFCD0A4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380489357.16972.5594177249960392288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddd6fe6f02c88cac060263f6e26ac53b450d50f8fd6bc00e854f80a3cffe648
Date: Wed, 18 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773804893
