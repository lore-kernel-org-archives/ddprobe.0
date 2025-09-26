Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0081A0728
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758915594; cv=none; b=eWOwWzVT6aEqoioIbMZzJrCYoZ+YsezmXy04YVBTZPwglbcf20DwUIhK9nJcy340xvOSqmJAgBgQo+J/zDul8Qy3BKN9Nzo3EmiSj3uSaPc6uO06EzPuiAEXeSG6uB9Oh72Bf+JK/k/t/YZdfjQxnHhMgtrZ0wzJA50qimXYFu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758915594; c=relaxed/simple;
	bh=RWXJm67m1UNJOTH0Nv+ZVL18PTyz01KOqEPUAaYDjtM=;
	h=To:Subject:From:Message-Id:Date; b=G2e5aM/9sN5OPLvm3ipe9qkgxhpPagv3KUSrSJjHZSrw9C2CFfY88el5LSj7zYKmL+oiJlGguOyxhHmW3+DmunSitL5GXGC12qQ8JEpaTqbv+lO3/1lSz2K9M4m12c1R7+F7Uwpk39pcQecRAvkavJheGap93c2SURqM2Pc4BVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saSehp+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saSehp+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6C9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758915593;
	bh=RWXJm67m1UNJOTH0Nv+ZVL18PTyz01KOqEPUAaYDjtM=;
	h=To:Subject:From:Date:From;
	b=saSehp+SAxgvCd2mC1r/+v9teyLjek+4ynJWo6owHj1h3Hw89tv1PlfbxQsrbtuFY
	 klWaSq2yRmUX38GY6QItah99hmsJCsMHEWVIVRwBQyPAVputpYT8RTYMKhI58wyBKo
	 cMWG1ecYoPDf07tuNlC/b3bQFeGks47P/b2ioxj2NS11j7IZNklMzL5x7OAqHkGk+m
	 303CvVYeRUasMoaMCXhHsHCivvaoEnfZiSBnpYM1tXBBVoAM+wY4K7+LFbwzpwOjJB
	 84JLKJbNU906rFqUcTpArBZbz2mhJp1EYpgltRiVP0Den45PjQltvUvNvpJA2NdSSn
	 8OrQHXW3PbWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A7CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891559360.20004.15346791061462907951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c029879f4b2ba75ca4cb1598e88852abe94489400f525e992576703327bcc35c
Date: Fri, 26 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758915593
