Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F4A253F05
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757017794; cv=none; b=XCxKArjmZ6YMxyiMv7mi3jWL8VYNxkY3L+915xr+lC2SZS5CjuGEUct5CkuUX75StzYPMR+kYZFCSwnjACVKgRB0f/UYLLkl+h0RRW0X+vP0ST3OFNajmqWkcdtn5mx50VRBI3jldmmDImSJCV7JuBh9Ti+n/oQs1gjhD9zfuEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757017794; c=relaxed/simple;
	bh=TmeOPmiyVmplVZPc+9E3Wj9PyojbRytpJviMz/4RMhE=;
	h=To:Subject:From:Message-Id:Date; b=GjmZdPX2uVpuV2r8n9/8nejc353jNBAQl/xX8Rs9LaSW/CDy7fKI2CMfNvWxw4DRvdDWzDCoajd9BR8UalqJ3XJ6IPNlYOdWGOvYB8fR7uaKd2OpCPdLxzxRfeCJ7blkvX+o8LX90AwxcgDm3ImmHa04fAZLDWVqWQPNm1wgo4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdnYKrPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdnYKrPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757017793;
	bh=TmeOPmiyVmplVZPc+9E3Wj9PyojbRytpJviMz/4RMhE=;
	h=To:Subject:From:Date:From;
	b=QdnYKrPVmUlSFyJ/a/S4z17oavh3FjSZUjeWtSF26mJdymPiYkp7X8Gsiml5TfeEp
	 /al+FPtpBfoFBkfnfDiFYajykpv9D4YtsaPgpTm07nk2na4aF3HuSERKVCn1e1mrLS
	 1tTp/aFYPyL7azVo3G58NKHy1iVaUCPv/OELZFIuK3Nlk3YZdY/hC8P6SWKR4YBysf
	 c5IsTCjzII5nExvZgrpDkOxPAoF/d2Y13Z2L5chVLS6LKWpkrM1vYZCGft5UrM/M6m
	 TYo+CwTjJkXNQdLc9/z94UzxmW+s/p+tYm055uJpLyboorzjdxC1W+vslkXfRxnn88
	 0NnIre0HSKSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD0CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701779357.8835.99718129372982744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde9f1d1a73715f0a68cd704017ec0dff3d472a34cbc835ead12a8a2bc950d98
Date: Thu, 04 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757017793
