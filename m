Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF402C21F5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765854174; cv=none; b=NVh0P8PuCQ9dgHPm+mJPDaIdw1pWecomEU6jVgWdARtF4rtmY3C9kFCVUH8CE1wSJ1lyMiIPLiSWok8rCa6XZV/YzvwmK8+Vo9LndFjzpPEmaZgoxChVzfLORPeEZwFLSnqneKoceiHBnFJRkqCwifSeoGbucSLrhOMl1+Grp4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765854174; c=relaxed/simple;
	bh=ucxPA9hfLZEIVJ49bFop+e9bNEsNhQo9wpKXVZOXLBM=;
	h=To:Subject:From:Message-Id:Date; b=nWMMBeM1+vf6FYMDiIiCdH56N0A82Oqo8KvnvYI3MZiU6+BO5i/YOxB8YVFbSpHWH7DbcJAz/9YQtN/PdtFxjqGRVN0hZ37ttI9hSu3GqtQMFeFeGfEXG+S7BJGwr5drgwsjuE9UOUcXl8UCvM/HK1KHFjfuPzgF8W+1R+Y+AsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHLhtLvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHLhtLvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765854173;
	bh=ucxPA9hfLZEIVJ49bFop+e9bNEsNhQo9wpKXVZOXLBM=;
	h=To:Subject:From:Date:From;
	b=NHLhtLvX95po+DSgvnih/0pDjVhf8AmYWJCg3SCcyQuzkAneqmC85dJkKBP+ECzlL
	 2Mf5vnDgj6d1WvsvzjuRIDWsjgcz7bXv+8Jx5I3P7XXNg/45HU147kckYd8iJOTgjR
	 yj4je36n0MbT6lVyB/20Pt+dzjpUABQgcsWgwTqgJBhjDM1cpijn58aPQWPcx4dlDn
	 luKHfJd95ydcE5GzRGXcv+9GoR72dFpq6acfG/NHVdiJWnwehvjfmJVagOJHdDithe
	 nfd4iv6yOWw5pm+iVRW75tGSUBsTrYzvuxMPEt6iTsT3ngyNth/LX1FXdkvVjtOPEd
	 tZJ0YkNlez7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923D7D5C0C3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585417358.29304.4980855097818615173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d428209d2d73452f3c810eabb5b63e1b53ed45d2ccf01e0780389256dcf6f4b8
Date: Tue, 16 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765854173
