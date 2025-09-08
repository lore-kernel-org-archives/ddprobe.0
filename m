Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C962EBDF4
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757321394; cv=none; b=eug88il1D8pjQfuTlSQLjZqVCJ+AEWS0BRlVwity9AZCP4kRdQcWI105fsxWGtFUr7+O61idALsSv1bq5if6r/BbtDaD3Fpa0ACAKAGb+k8f5lw4UjcT//Dqex+scSi1mlAv9VO5XcQYcVhfe16jyt8qbWEGFdzWd1plPGZtb+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757321394; c=relaxed/simple;
	bh=nQ2VL6ZVVHYQAP2IHBlUdp9T1b/6HTg52GSQ/RMYdfY=;
	h=To:Subject:From:Message-Id:Date; b=lkYZB8uYVg+oIYyb8DMz9DNg4CGPBy52WyVScDjJha5w9ZG+4jl5rjcl2i82L/FMtA8m6mkSiMUh1SlPIwCXkVD+UZRNcPRN6bVUEv3psHicCflQ4j1BL6THwS51wxMItnz2KY1GYwlWCWsKS5RlfUQq3kIJGmbkwQpEWup/W3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmBe/lwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmBe/lwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757321393;
	bh=nQ2VL6ZVVHYQAP2IHBlUdp9T1b/6HTg52GSQ/RMYdfY=;
	h=To:Subject:From:Date:From;
	b=WmBe/lwyXmPTmUK1z5zIr5Yw/0cQKrPzxW6indO8a7MSI6t0odq6UhdmfeLdENl5S
	 EWk9IH2ySC12uTTyYsgWof+GAPlA+I4CvIpFui78bMPi5li00RYr/zvoW3MEzU9zo8
	 3h7OaVDwA+gQPpl8iiTWQ+otRjWr8MNRok/1yQZOG6eMELVTZ+Df8qGxAjrmyydtsU
	 PrtJjjNzBGVoWcs2M0NSK0narcxOa32oy/V+bHUSJPzKrg0/AmbaScCn8yUXD+QLCK
	 04Bdh+ch1jdSCixwxfeNq0QTPIIVkpjijmtMvLv5GY7v6TGZE4Jj/cIi2m4gUOj2YO
	 2+36Cg6chd0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F808CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732139358.21472.12570983907404820395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4e421bdbb9168bb1cd254449faee937d8010217cb2fcac57c7bf010e74b186
Date: Mon, 08 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757321393
