Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419173C0C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721966754; cv=none; b=pmnTDya9hjLYkXXzJ99aUclN8BhSSz5iYhLNRGCN/xU+3SCnQyfFombbGM14hiVbfYlj14zKD2Pm41xcL2jcXzPXGj48/Fs1AWmNDDS47MAnKvud7r6gNhxIWw/229ZTPQdm5EPnrILbomaBNml0B8zzuM1RV+K+BMfHDcbXQxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721966754; c=relaxed/simple;
	bh=Tsv4U0tAuZQYt+q6t2ooPuwMjhcbBdMp/wLyS98u92I=;
	h=To:Subject:From:Message-Id:Date; b=Nbb0o8u4w/NFXoI2aoJwJs1YP41I7FK1s+A6dO0qcmG5KZUKafkv2+4r3MY5WeXFyoEJwLhpg9/eyq8jcsBJNMqDl47fVzBBLtDVwrEsGUhVcqR0ca4jZGxnnFkWxUG/+dGsaP3S7vt54WE4jDcwa/5nPeOK2t1cdO1iPI8a6T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKLJtrTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKLJtrTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DDC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721966753;
	bh=Tsv4U0tAuZQYt+q6t2ooPuwMjhcbBdMp/wLyS98u92I=;
	h=To:Subject:From:Date:From;
	b=LKLJtrTLE0ZZnXJU8XgpDKGfLO54zWPRUk5u/5vr4bLHKr35YJGRcBbFvErxIxmxK
	 e+K+IUM7lSTpasTnZny7OpYsJXMLAhbsN+TgFsKRCnzJtcSkFvUkq8+bfanMRd/EmX
	 /VOu8fqCwNLn9/qoBwu3rzsgZRBa5rYuLD0/7V+eA85sW46r1HguFnBJWGOIDOn80E
	 F9v4AQuRYEX+REPjaWlwHZr9P7fSp172w+aojcrtOLfIyt5G/W2fnlHN+QMXFoXttj
	 g/NEgc5k/Set/PR/B50IIKRniGHIIVNkQFHQTHUfCO3AzmNO3I+Fg1g/2upBx4leN3
	 eRUoEj65HJKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAE4C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196675360.3400.11217866265558518547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6338a4c442db80c50c5bdfee0e2af313629e878d3e433ca7034f9127c81491bb
Date: Fri, 26 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721966753
