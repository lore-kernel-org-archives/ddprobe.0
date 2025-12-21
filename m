Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1638B1DDC37
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766325234; cv=none; b=J30OvHgwaqQoHYp+aoc2lTQCI/ZbtfE8lGTFaZSXRdnNLKAufiOiIW3iSGOYQ9YEblO/TOl48jrWNVXtgj6gDy8cwrBM2Fqwwsg2zksQNtU3y85KK1uJZdmdZHjTduLb4lIS18FUrs4wxrZ/YQtJltdJdcDpGNlLj1wImovwGCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766325234; c=relaxed/simple;
	bh=s0D1GcZRwKkiqzF2sOUx1cZEjcIuWsoWw5D8FzNApPk=;
	h=To:Subject:From:Message-Id:Date; b=YW7KixT0HqZsH33gsF7ZiXrXuPCJ7YiOzRQ4skGK2w9sKwSPqGTUi9U5hodtg1xIPMh5OleEFNd1w6f1SaBEkJgOQJIA0nHkdXhrisdTUZHV2OcuspGwkUtOxV/U6R18/RFrWc1ev9V/AUfhfh3aEamBOWg7Erfs9GXiHwfAiRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFhc/thL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFhc/thL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDFAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766325233;
	bh=s0D1GcZRwKkiqzF2sOUx1cZEjcIuWsoWw5D8FzNApPk=;
	h=To:Subject:From:Date:From;
	b=qFhc/thLUq0iVsF/33qOMDcYws7J61TJMsuJegwPRp/Nz92cT/mbixsFLXrO5qyPM
	 WVNTwciIMaUChyysK6JT1q5+3n+YJm5X68GCKJD2e6XwEpVqJgGlwqFdH7uGySt5Gc
	 wihbxNkL2jfz2IFwfnhoYlh9VjnghU91zBrcpt7Ys5Jd7F6nuAyALCxykZa8FcmBMr
	 idXnUTriScZZPUeSW5XOObRVhjwi07RYCJAOszjodelHDqROJpT7BeSwDSyLEvCO82
	 Msm3/NTcxEIpWB84exj7fjlFFUZRYJdRC/6WN1n4jV3VL3c+N1keynnVgo+dwFaOVi
	 UgxzVuBwKbDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F906E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632523358.28786.6202479265692301912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b855c4609840ce1227c11e5626199bd1dd811c51af9042db333c414f1587112e
Date: Sun, 21 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766325233
