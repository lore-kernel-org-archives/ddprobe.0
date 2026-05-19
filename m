Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0786A365A0B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779228034; cv=none; b=m1JtET8nz8qqc/PDOLYG2nZ11u7AvT8qhzrm22ERtsOL9AZm7a2oGLvMyn5oVPtCvqUPqD+PAxcG+BVt7hxo1ns3dXbNCZ1z6ZgaFgjpsXjfnQxMS+vC4RVA5zcDBaCN1LJtpSHp1udbjIFT86Fc9IiWz//DCoM1flIQInpflAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779228034; c=relaxed/simple;
	bh=Xe9h2OCpE2a2hyaaKuR8QKfWbNzr8c0uV87jzWbWmyI=;
	h=To:Subject:From:Message-Id:Date; b=lq1d0q6eXxeioec/hnq2sfgLUaNyyP2tG8VpbPw7cL3I9CNpuT6xBOVFiHUuSaZF/q78Eyd5GfwHGU0I/Co7KVosEEZ6NPP86AruBKqQW2fQkVHe1W+d44db+Qk9gwIoDM7PnC1WKJ0EivKMxiItVd06eRdaNrTn8KQEnv4PX9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxvCMSae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxvCMSae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2571C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779228033;
	bh=Xe9h2OCpE2a2hyaaKuR8QKfWbNzr8c0uV87jzWbWmyI=;
	h=To:Subject:From:Date:From;
	b=uxvCMSaea++opcPM/k4NxU6BxACR+BFje2drswCBhyPMv/w5sHpkHSUYNQlJrekKy
	 UahLPsjGrsBJTdSjJLY/uiQzUDb25KnqDdhPdZwL2V8/c+eKzZpmXAs0JU7LNjSdqX
	 7/5C2ut2Dup+Jqm5xDpuWIZoEGSY6CHq2rEM8chC/ltZ1lPJwdOnpPykCkMwS0kwtz
	 Iy/MjgL0ycMxBOgHaBI2463oZtcA1cj4PZqxSXIc4LWgXy++MKwBh1NSB6mOaXjyCx
	 kIVimdpeHxUmthq+vWCS/Oj8RBZqZn5L9eyWmOsVaADmkGXSqXMmq/x5zJZnnsgNa6
	 iI6TLPLBmTzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10DCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922803369.22675.14663636092758443884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704a93e581b2c0b3a47f88de710cc8749d04bc2ba39ff40fb09e283df2db7290
Date: Tue, 19 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779228033
