Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F763469E3
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757074195; cv=none; b=iGX693XZxDkjMIF/1LmkNHT6Bgfo73AM0NcFg7iZONeoMvn+x827VvYRMoz7KwfyfWVh2mXixD7UZPp5O9PyydOzHV69RaB0XxV//xhf1cOCPrLc3DaNeaVuHzYCzHPK7mgL3XRTrN5HqSv5awKV4t6kHezVLgymft5QpL7PNac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757074195; c=relaxed/simple;
	bh=HhgtyMBIGzmz29F9myIE5EpnBxE4bw+wGyNmpuZkQXU=;
	h=To:Subject:From:Message-Id:Date; b=jvELaikwOEIqpsvM9FBXfqsxW8SSSFLEa5f3l5nKX6fEIe2eI+dKAPZBfA/k8ii+w3tVy18M1YALQq6D2I2qSAAknXDXQBomfIxzj4SMcnjcHuMxTKYONAhAqZr5IAt3xEQ8ZXVD2Sw+r1mSB6BRn07r5ZczUVpbyA2Efs989qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inWUaGqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inWUaGqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B53C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757074194;
	bh=HhgtyMBIGzmz29F9myIE5EpnBxE4bw+wGyNmpuZkQXU=;
	h=To:Subject:From:Date:From;
	b=inWUaGqyvhfZw7mzh78DDNUC8afjJPJDqeOJXKxLgOz6YS5LVmgMwOXCduUrKVo41
	 MM/xxz2xEN0GKiQyl/hd+48ERWHtxiSJKqK/DvK1Vvh9l5C4nBcoFkoujrddjiFe+a
	 dZL2UW13+e7XXMC6hEESjAL0NoPwPzw22d3+IlrL1vQIVhVSBk8b9nlJXjAYN3lvBx
	 UfyzQEDGd1dpZsE9kmNR7RKqzFmOKqZ0fsLvRuyr8iBM1e0LkeiC3XFaRoI/KF2fB8
	 n9wuNL7aJjSUd0C4MOj4d1SkZq+00QGOFU6UclRgChdxLtcAKBjTTtZUbdGK1O0EVe
	 4T5CO9KaQnK8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC6CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707419358.32282.15657610217821317953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f90d3b6ace2bcea4c239952da13fc0544d8375e337a1255660f64fdf6d547d
Date: Fri, 05 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757074193
