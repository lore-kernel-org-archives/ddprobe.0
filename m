Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBEB17C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725149154; cv=none; b=LUfdXHi5RVgNiFUORvE4YWKQYH5xFHrrIRs/zN/m3DIfAhNwiNrIpU9TmildAcrrGqdgZGCmDZXN+TU73H6dcMBB3MhRkv+GGmq+sGKTP7ydHP9MDV02j1+xiPeENjxn907h5ikT2HrH20gLhBNwl8xyeOaRhkl8kKLkAR3Q9FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725149154; c=relaxed/simple;
	bh=+Y6bm2fCqejIbfiVEb0/yg7boUsGCAwlHKBx6yXrKws=;
	h=To:Subject:From:Message-Id:Date; b=uP6RSF2zYBL13wmDI2pyEkxEMysIn9YzIo4/0lLRpApOVOQZD1OM2HES4BSkknqR8XKBcmtIOnsOSxJWgyg9PyE0xYedn2DSiDJ3WSs0e1lTT+W5mGReIUnZRYbCRK/hnN7R5VMwegoQDBPASpKxAqskB1n91vO3KsYqcjo4gMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMY21v9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMY21v9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1629C4CEC0
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725149153;
	bh=+Y6bm2fCqejIbfiVEb0/yg7boUsGCAwlHKBx6yXrKws=;
	h=To:Subject:From:Date:From;
	b=FMY21v9swVfB+pX2goU8bwnULe8hzKXPLWz5yLbeDm2VVw6Y9InwqAEDZ5LKjeiw+
	 6srlBeNn8Sl5CC6XJH8TJsa4cUNeVyougcy3FD1TdyYkwgrNeY5dPnVKw04IUxxyjZ
	 CbDsKsbMaCMNnXj9PU+oD28NWL0AYmG+7KId1hzX5/1eULNjYT0/f+HU6jRuPPDIAo
	 5ze9yriFOOwetUTi46KRDaZbXLAspb+AkdzKKVsnXPzv8EyMLvZyn3ltkWB6tVj1w3
	 8qq9mxplE3R22lQtr064QXcBHRDRNskBqlSmDWH7rYTvAy4x63DT99MVZjPHLSg5+P
	 LIF7DQmbnv7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D739CD13D1
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172514915360.31616.15557898185860301124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf05d99b33f4662e9d9f7fb445b38ae226d3241d6890c3be6596336942c4a1b
Date: Sun, 01 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725149153
