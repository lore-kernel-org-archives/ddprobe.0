Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C261D5CDE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766159033; cv=none; b=S3Yy2eKVhKZS+N6DirdRnDsISKOYBnIrV5YyEriOvD/CgPeF8P7CvRc9OSaY9Z7S1M2NQjxw8mIJCzYtEYNBwGET3JO0njkKNln9GbaSUmEPxdCwOeLd5iNsQrgtm9uwlnYUJK2AT0GkPa+CSTSFZ2mtziPrNSOIRfFh9g7QzB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766159033; c=relaxed/simple;
	bh=G56FbS8ZJLDJBAk/Jfryz8Ffw97lybMoeQB4uBfLnjg=;
	h=To:Subject:From:Message-Id:Date; b=iO9Rl0XBt6EU5TzOfMibdVL5+Wf8f7GVoAzZDmyCMcKj3OqEKtdEGRmcphdWfXxMXt1WvS/7KeNBCTaTessT7NKsSsULt1fEhg7LV2ibJZSHmQ6ocR+QeYJclyzFxric0tIGPUjuK/7EIv4meo8nlbsznfqHiaZtNQZQ2B7uVJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7sIikZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7sIikZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1549C113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766159033;
	bh=G56FbS8ZJLDJBAk/Jfryz8Ffw97lybMoeQB4uBfLnjg=;
	h=To:Subject:From:Date:From;
	b=j7sIikZUfP/V2lsP2RBCcBdDTb6Xedbu/kMjfMDxaeUgilW1qlf9v1NJCTIApq2nr
	 4UBduoypZbYPmcsKy0VN+WLta9QCIWpn/ILDBX7kQHFDsqny+2Kyhut6TjRFj7nauK
	 RPf5CnMv9r8iYvHRpp5dkkIOT+MfzyDxIWub9DalPuFtfscwEJLgcvdTh5toa/p2p3
	 vI8sa1H+vVZ9uCoT96ARd8xoOMUz+FVc8PQM4+5KW4O091aN7wJ3rcICrbBTL+My9g
	 tv0X3foQJooDg8/Z4FQRsb3lC6biM3V6spGXpNLEkxk7AgVBEGUXEp+9KnZThKIp9P
	 gQIotvXjEsTuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0ED7878C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615903358.8135.3790802373805404712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75804429285ea5945f6e2d17fee57fb6bb414ab1420aca9b8707433343c186a
Date: Fri, 19 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766159033
