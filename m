Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65833B955
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768971834; cv=none; b=M5QAUjurHZ7LKr5btmW93hyzp3G42fZAHJZV8ZvCVoRmqxHwmp0Q5Nbcmxhj0RKGcuAQAyvwetS1Zf9gtwyMIOY6y+qX1DsctItMyDMrfCvb1XSz7mjXYFN9HDCBsP4KdBNtNoSMX59PdLBNgljNRUkQwHwtVE3YjNfnU73NjAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768971834; c=relaxed/simple;
	bh=pCfICUJ+BvQXdDkScVHAdP4iVBXsl691FkyPoKXOAoI=;
	h=To:Subject:From:Message-Id:Date; b=mNyM1k4Clwddt4jogUHvDtKi6Qc1visLn6lcLTARs8Rz8tXuH3Z8a+7qKsVJQmwEJYPc4Xo/r5xHt353O0UB9S3TdEF3vhAMkJi979xHR6sI4igSDzNtMEEfd2iBIJdb25Alf2J1awaavsY3lvRs/7lcOyrEnm65Kx4RQvIa5Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlJ9EDXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlJ9EDXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A964FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768971833;
	bh=pCfICUJ+BvQXdDkScVHAdP4iVBXsl691FkyPoKXOAoI=;
	h=To:Subject:From:Date:From;
	b=WlJ9EDXgwSsRJBl70YrSrJ9JmSpzyl07aJ43RWmtDRUgC7BUqSS/exSePrM83OCmP
	 F4J18yzjBYzvJNc5yN1yRIzKUwSDls8CI/LI/Y793cWtilA8rnxZypX7Xtd17of4cq
	 vWGFAWT2u9r4YBLQlR1+UshqGUd6DTHzH9xjQYr1SbeiBjyKipe45aU4RQOF6rrpQS
	 6u95YwUnMkt1LuSLWjceSKXt+j1g641SZVI1ls6VGa5+Ay4+EJRzgkTNqnNiUCS0rk
	 x+xYJSL1KYbdlyw+uQslJs0VJ62U83UzJCiRuqhc2yPW+mk17nlyU2UWk3kfYqhtoU
	 rWNx+saEK208A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96916D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897183358.14266.378441507887033861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c704b3f8de9e05590275cac68d8d2cb8311f2da4d83e796d5b6bdc6d0bf31b53
Date: Wed, 21 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768971833
