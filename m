Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D52E279329
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786755634; cv=none; b=nw98zOfmlIaPgpIxXFw0knCnIyZdILleqkpIEsWLPKXggt5exGckRQxEBo7fbqT3Z+3GcPO+xrXomsoC/zbT0Ecn2t1UOaqtlCREQfGXvIjX+sczaEKzb11Cho2rqUYbVw9xzUIN0mx+WvwCOjM7tx1CEOHesRPer/CzXsmnvfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786755634; c=relaxed/simple;
	bh=4mK6YYm58QOcv56UR/Db/jLmcuHPpQ1kKiVbCwLqb94=;
	h=To:Subject:From:Message-Id:Date; b=ibnmO2c20eRy3N9u4/P67O3fHstzjEHDHtUXHQYwng/sqsxA0gBSiuRDJRjWoXxRKkNVNa8DvO+Hiz0+ChUbeUJdk/K5DhVLYRbKSxfi8dXRTM8VokD3xEbJRASkUHpeLikHj6DV77u0VklieLrQiKU9Hxx0pzCucRDY6PXxxYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU6sPZp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU6sPZp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B14C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786755633;
	bh=4mK6YYm58QOcv56UR/Db/jLmcuHPpQ1kKiVbCwLqb94=;
	h=To:Subject:From:Date:From;
	b=FU6sPZp4TwQm4KHEdFlMRp4vaXQaW4kd/vJug6aG9Ab+QQehfFatAeXLMFlupJxJx
	 jRCnG77KEtwJnKQExFBYND2+9PxyuNHU8zlS3jtUUc0fJ0rJ01bbfL7171Bref36XG
	 9aYx8wJab+0LYw2cE4dPtx6ng3WJ5a2l929cHeqWBdNNJ+7IrdAaRFNtI3YxFx0HHf
	 rvi5n1LKUonnp7OJfalcCyFPWg2DQL7SSudqBsUFWPC9o5fTPIZw4HMFgwOH+8/DUU
	 03UHknQf4QbCH25Iw05IuSOrVfNiuDFZSsdGENIPr1+R+ANMUgzVOYFJ3wQGLuTmXj
	 Mpn73qaN6D3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE59FC5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675563369.13250.17049424458684461635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40582b5aced7c18096d8b4ce13787e42caa6a2fc8236e0e15934f574f4ab4d6
Date: Sat, 15 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786755633
