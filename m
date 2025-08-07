Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775243AA4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754568594; cv=none; b=WKnSKlpo0CFcMxiDzKlYhCJvQtJbmokRxg37BD1uo48dpeTBMe9LlpV/W3tgdvhehC37Cf6cRC2iDuXX9Y1V4f3w4m55EHHghbDjgArtLikcWlw4Mo4nhRNlAIzeDSO+DJXTtPSN+YfEmqiOWy9ZYkcsNoe877zTzfXBCVAJb/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754568594; c=relaxed/simple;
	bh=VRFKulMG5hHi2YtubPnvYEpOA9Pgo5kjbVZSgcGzR2I=;
	h=To:Subject:From:Message-Id:Date; b=PQ29xf38uYuWMsV6/0wyfqFFmxOzX6Sz5h5XOtdxVsWMnd8gLWA+M+whgCAadnWEWp9N6doQYbbx/VuSTusZ9NWc2ogYb/TzLERRtH5b74FlQNPbmQmUyQ3+RlVrtR794nISaTAm7BgDuwKN21KOR6pJARwAMmADfFn4WOMkv6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBjLC+vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBjLC+vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754568593;
	bh=VRFKulMG5hHi2YtubPnvYEpOA9Pgo5kjbVZSgcGzR2I=;
	h=To:Subject:From:Date:From;
	b=GBjLC+vnL6hmqObySomTkL3zjuMgh2EwQS4/WoV7vnG0+M6r4Wb0Y9OlhlQOuXFb4
	 iL4rWJxZseqb7M3fEVHfv2npY+9AiZ/ijPbiiHiItAlWQosJ7jh/t3HZyMNwJbwRTF
	 1MzPPeOgkae0zYyt1tW1ARQyYaTolt6v1W0+zLACJAd3TZxwHpQ/Ln6XFbjuAt4RIv
	 kDDOxl4Wb8o3b9ljbY2qGNzqzbVKaXj0yGmKx3IBaUUMgDhw1NMSGsFZON0iXCO7xf
	 BLXAg4YXlq89dzruF+L5aW0R6uhzGS2r95cg3JxZrWDtGCvmXAHw+mAy4Xddm/2oAa
	 IzBTH/SNe2FOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53BDC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456859366.12384.6201971385898756015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998b92bb53eddfa938b1c9c9cb47379d5599ee2da686c5857bd4ba29c81e6648
Date: Thu, 07 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754568593
