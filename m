Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008406FBF
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715805143; cv=none; b=GNs0bfzAPAEUE6CEyfRyJbib5Ag1X8Oa4NW3Vl6w+xMDW9EsofCQmU3ycVV4a4+sjeMT8iEKMjOocS00NoLjMKEwHJ/dl8z6QEsCm44eTXBmAUItat8ceFhtJ43JzGCUw0w68Jz6NKQjr2hHPKfWFUF2I1fx7SDUOekcVamGaNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715805143; c=relaxed/simple;
	bh=lUEbtvPK/J5eS2bhHFTKFcGTnYKodSZbDux4obUShvY=;
	h=To:Subject:From:Message-Id:Date; b=F0o6hP7ZpdkQXTPnrc4vlM2iIJnHz0vNMUQu942h74yqyUJyaTC03M29GTt5uBDV6Us7iF+poR0ByIPdARiN+zPgYa8aSau/BuZJA5WIlqDYTtafDFcAIBtKJwKM6hC8YyVXYDdpSbL9CSmEn44tlFHfdOozl45XLx5nry9hR1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEqOAttf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEqOAttf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C2FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715805142;
	bh=lUEbtvPK/J5eS2bhHFTKFcGTnYKodSZbDux4obUShvY=;
	h=To:Subject:From:Date:From;
	b=ZEqOAttf0+Sf6112S8IgsraFuwM6NgbeNhR2b5CsicfyM/RAzdxbMuMXf85bXZU57
	 GcNTmbiUxBceNOIkK6CgUPte7q0J4eTTsE9qww7DfAPvJCEyiBV9fk9K38aiXLse7o
	 3ZXS6c1yaiHPCXIEORT6M1fVZVxb6whK5s3Wna4slt0Z0y0pOKOMZlbjbJ0HJssX4s
	 lc1/p0JxO9nEeinlLHwBUwug4u8oJ0ScdvVGMsw7N5mmfG14ZM86QIo8jEeVHuk1zQ
	 8HrfjkEc78mScDtTrbUb3QXgXNJCrHXU3uL9uSjR5VDPsygRZSIirU5hoB09MPtah9
	 K04g+743Zj1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CC3C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580514278.9816.6693067118913627379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e0f15d6a1941f64f97c538a7a6eda5bf317fa51951f64cc21ff31ddf36b013
Date: Wed, 15 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715805142
