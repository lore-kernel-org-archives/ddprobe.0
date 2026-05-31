Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9A932B12B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780258474; cv=none; b=NmiUwSbRDt/Rh6ry3R48OaqRCmY9kSFvdTvMwRL6P4k8Cluu1rtF5jmYaBJ+DLIe1lXZy+QNGNWtIhcdjAKfXwM0OuMY6kCmKRHhJNOi6/F4vY8GPI0SSWsWcxfhFkehTMDWgq5KU74WV7w8xRKXhzg0LUVp/z6v7X/bJwD5p4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780258474; c=relaxed/simple;
	bh=0fbdpD4gJS+joyHfQljKCVH4KSuc/8f4FQtrPZGrMys=;
	h=To:Subject:From:Message-Id:Date; b=bKWuBZmvaASPFR9WErsendubxP/oYOMQjTYZOyMpStFcyutlEGKf/g2Wag9nEbUZ+cLcc4kNXra4OzuImYhXdGEycmG6RnSh3xY5p7Rg4twkQWWS1wPKlb0UP/4uZzVhM1bd5ngjMN5uBT+5VO4gUH/QhU+b0AXcp8ed5hd8I3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzd//p2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzd//p2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2996C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780258473;
	bh=0fbdpD4gJS+joyHfQljKCVH4KSuc/8f4FQtrPZGrMys=;
	h=To:Subject:From:Date:From;
	b=gzd//p2ko7sXiExFJtaRqfc/6JqLZ0QOtJRYePXXkWZ0co/veFXmrQdmnN6I+9nxU
	 /cLfO2XEUFQumJYqNrcrHA+mEFl1qwAV7wIkzI3fu8lE95j7V8MdtLtvDxAX+3IInG
	 rVfPy2h1Zxj7/LFd+Gh7QP+9NsV/pMjBP/IUTd49CqUxRZUomLFHguhatRDM3Dvxk6
	 khfuB+RVzrcRWJFVyGkxMht3st5cT+Sg67nvlWZe4wdfvafaBYrOsnmXA41nkrT+1J
	 A0N1Fry/aiGB7W/KxVvaPR5MJcukaF/PhWJlU6KTxJdIdgZPoqKO1Fe0Z/Zeiijbpx
	 5ZUuHJYwh/d4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0CBCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025847368.22906.2697578653376789177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb142a221417b9667a19283bb2722769ac2baa7194a979471427cb84ded1df2
Date: Sun, 31 May 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780258473
