Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328D922DC30
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736909154; cv=none; b=MY13Qa6rRS23e+eP1k8ccb4g+txVvNhH+PpYoc/AgX9RvpMM6nHeJNKGADOsOdqVmJ0xQ9D2CuW9EkaBTDPIP3meaqKtSGfSTrtqecZEXzwmwyjD7turbWmeSP3sqH6v1PgfSA5dkX+kxmDsC6YoO/EQqztJ3QhJ5e0XmpS0b2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736909154; c=relaxed/simple;
	bh=yxeKMnGeIozuyfcQsUykJfRtcesvmg+YgUCR6noLA8U=;
	h=To:Subject:From:Message-Id:Date; b=RLGCMQbez4KULFTJ7uEyYArZyORMnNN7BuVBmukc9CMKOpD84pgfy2MadEtBqA7eYfPIesJfOTIuyNBLtQKF27aK2XuZHlfE0VaAMgGLndp3IXcRGQLMJJ5fOY8DOWWeHEN3HqghuqOyqV9SeMvh5G27O/zQ7q4Kgz6V52H9UUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3V0/2ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3V0/2ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CAEC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736909153;
	bh=yxeKMnGeIozuyfcQsUykJfRtcesvmg+YgUCR6noLA8U=;
	h=To:Subject:From:Date:From;
	b=i3V0/2ri6O+KPira61nNiVDsSkigHrZ1VxqsAhAEYera4RPb/77vU/DisIdVLgDKD
	 cWwdRsx5rLJoq+OvtVOZjhXLVYRXeJGtgcSvrU2KqS4ehplLl37UNIDGlZE+WuUJM1
	 wVMF1nHSTMPfOUiwE4KbXJx7qSveyo6w0neqwjVRrJUZDHVKSZsspw+g6eZIT/2ikr
	 X43YbxXnP4eJJS6dp2Ut3OWcNG4j7hjliok3coCV1GWIV+KgQa0cZ86c5sw5jW4AEN
	 cJBph0V0jiPy/+aUoS4BcxNcyI9aRXskIb9rBjbc1V5dN+Ag1olYQUJ5dTcs9n4/et
	 cXM7pLbWxbpug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966EFE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690915358.17907.17899388554476360710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465599529921e754ff1ff7a0b43992ebb5577ade3c3430f8679c87a60a8c5ab6
Date: Wed, 15 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736909153
