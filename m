Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6256D44C7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717349123; cv=none; b=JHP/k5pUE/jBOnuMq5YJEbPHT+AfYrn7bVui3ZdnA0q/ddJrndppQftNGHU/Xn1qr1UR/oPviz+R5Ml1dViNiPzmWX7MlbrOZgXCsC5YcDBlZp3kx2ajbiLFSgAi7IFMd94YX3pNgt+ol2LQV+kDTGHEbREng+bN2hKDDDjWwMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717349123; c=relaxed/simple;
	bh=Zbz6st8JhA8/hf/NZH0oUKSrxvDRtQf6g0ry7ZFEWbg=;
	h=To:Subject:From:Message-Id:Date; b=NuU/1ReohqNbQmj1N03jd6VpoPUgRRuX+bcGodR+ZGzKQ1hiTnfaeJsxjBulefoOQD8Kc8Hz1Lv3gUr/a5k7FC/JpEXbgbq/IRWkKAuQnVHRz2jYiHqHYLeouMbtRWzkSljxJ2d57LnUEFY8R/89jJr3M0VmrhKF1kZBe6lHg84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj0Bm0K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj0Bm0K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A22C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717349122;
	bh=Zbz6st8JhA8/hf/NZH0oUKSrxvDRtQf6g0ry7ZFEWbg=;
	h=To:Subject:From:Date:From;
	b=dj0Bm0K95/9u4t3IogxsbYRFGv9yg0DdnYdor6aVza/avzhCWR+7oTe8F0QjBqGMm
	 2uzrLSd8Ku2XQm47praZUJ8ksXFcveF6ZzJbh7WI3xAZIPtOovxIzjvVY0x5UD2MCq
	 O7ksRBfg/sNf4E0O+res9NVZqoX2OOOjxbYaaq5NvnrcXMF2jK5i8NasPssdkSW+qV
	 Jtkk7oNOwJMyyUwFFKNHZ5r7VEIFOTTaaJgTOfjiUil0i4FGbs/0WHwS1ZIXrFwny9
	 D4GaeI5pylZhfgDkOMUB+0Ci1D32vCUQI+Eq6aJy/m4snoo9O7XCPRV09pPtHMKezN
	 5njWcUiDcB0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0BDC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734912275.3598.8670664934825569913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2571adcdd7d3c830a5bb7be11b5e8c650e48d60b492d7b5ba290f04514d8b2
Date: Sun, 02 Jun 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717349122
