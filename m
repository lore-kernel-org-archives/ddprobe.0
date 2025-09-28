Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9818F54
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759084194; cv=none; b=oBNIcPSdB0dkKQkSk731ccmb6KHJt/P6/w2YkI6NsC9veY5gi8QVUvZqNPCC0B4ON+sHtUv54gpIGHRmMNzlibNQqziYGefQnsLEGfQf/gJY00aHlHIOAcPYAsmR3WNC2GyVMsUmSSPQz2lV+ul6d4KD9jyIT4enZFgPwmbblew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759084194; c=relaxed/simple;
	bh=MN+Eu/CjEDfJYACvtOmF1bK8H25fh+IRby3ZE62ZVAk=;
	h=To:Subject:From:Message-Id:Date; b=gU7vFFPtuLAk6OqtYoBGrdeaQoE+8dRggEpWoLoeTy79WBBqOOFcGHONhm1qyqX8RgH+wz+cJVIcfItRSMbIV1N+et1A20GuenQnVdIbJEUz2LJjCwQZnt5B3s55PatxQ2CKCo7eBbyL66mKIoHF81gTbxZuyUQE1dAXBQedCDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6S2u+4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6S2u+4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D47C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759084193;
	bh=MN+Eu/CjEDfJYACvtOmF1bK8H25fh+IRby3ZE62ZVAk=;
	h=To:Subject:From:Date:From;
	b=s6S2u+4dhBTf5BFO9+SjK1I73pPegjViclGN1e93z9wyEKIaOKO2RR426698rj3C8
	 zVx6EW0gyW8hhfBUePDmvJLGgoNb9N3jG05c+ewTHUUp+fZiJ2kjcahA2nMsZliSi8
	 ANhlyX/T/HOu48L4L0PTiN+c8n87c14lzHskJML5eRpsT40DOO7Nv6Gzl9SqQBU2iM
	 we0xy/SfrP7foKDPh6tzsylxigni3vHjsWYFh8KmQmIlG3fmFt7wJUJQ2IybS3iAZg
	 IQRGHc8jhVPpMeXwU44BrYG2o767coWmReXNvGjdv1vM4R7HrcYhF5aCHaRCEPxJnX
	 wkYMensusIprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519ACAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908419357.31197.7273589374662116807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1b3fd12cae3d3a548ce089264ef0cc8c85d91ebffd68e61b464404c056cd95
Date: Sun, 28 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759084193
