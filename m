Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A90A1A257D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726296354; cv=none; b=Ceh3eGbC7CWOca28hvtY2cweSnX4s25fTeB2dMiDVQtdpLFLuypIgdLYRqPmK4YAxVLlnLYTbNUuoSprBjDZFzUgrYiuOk3efxGIiMJYV4z9BBqjmQfjxVFrpo8APCS7lLhErywo0eiKSyreaKKJUqBQBuXtHUD+wL3VFbdrI4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726296354; c=relaxed/simple;
	bh=XNsDd0OtJ9DbnFztWvWHx34Z1X2hG62Zl5HrA2joN3U=;
	h=To:Subject:From:Message-Id:Date; b=Pts4GYpbjjrswi8BGDyRvJ3u3O4y65T44W3JyLfD223/WYrqGimA62MPaXDhJJI2v5KE1Ox5mmt1JVmI+MoQw51eWSNrHVueqeU8Fu7qP0isBCy/PCpIKvwR6Xv3dj5f0KYxN02oxpHLgWKr9Re2I62geJ6p8fu/w0zlic55YlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhTLLl0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhTLLl0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EA6C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726296353;
	bh=XNsDd0OtJ9DbnFztWvWHx34Z1X2hG62Zl5HrA2joN3U=;
	h=To:Subject:From:Date:From;
	b=IhTLLl0GQzrMbLVsOvvu/GXYN7N8AS7axb77JIrtmjE4N1C/kxWZDaqOBhKjfLRbK
	 aeQogf3VCPUlMxPWlYgRbwwppGGigAzhU3UA6twKAvmkYp8GMqOHupWp2z2/xRtXAS
	 Qy1jgI3e+MS5cDcSMm5Di8pXC00QKSDSNAlvysySxTbbnmisJ6SCGbrPqyMtprb8mB
	 CfbS7N6ypGZJBev5cir0AVhdk6UaYXejZuq34SgOAHh5Nq1Y7FFByvI+1BiwdNz+h+
	 J5Ns8g0O0eQ1p1dl+fjT+Ajzh9VgUUxgYPs3Xq9eP7kPXdzAxb1NvPNKLJPyH7n0RQ
	 iBVTjKGmomwEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A6FC619D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629635365.26962.3535009033335833605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a535bef0f4b5aa1af4e8008575d349f8bea1b752aa71e171c372ef50af14492
Date: Sat, 14 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726296353
