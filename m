Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9754D3438BF
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779307234; cv=none; b=AuPbHA1x/fEys2rfLv+qwn0I/jirsNZUYkax4kaVrJkJ+JKGarc7jHxSvBfs8pEs3/bnglpkFwNfvZeCnN73lpV9idw4JQO6BiHNjHTfhnpE2q20kPajbYr6lzSF+VoEyYi8sLbBuDQygEe6NCx6CHNV/6GgC8CIuMuVB6JS76Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779307234; c=relaxed/simple;
	bh=XEpUIno0dcT561KIsdhg+I2CCfk+XSj3oxEueSXuyVo=;
	h=To:Subject:From:Message-Id:Date; b=IuSPXcuINdJCy+l3bKo1qbLRqoblrECWpyPwAMk1FHg1KLnsG076yUvLxdRp+vJOaovFJYpMgbWZ0LXe6o0n857dEHGTKyk+TwNttkZ5IOFs21ok/+CJtM0Mu58ja2VEQnbADUwauXMj2L9D8WHzuEeQ6EMy5hGS7xl6/N/IPXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eprxq4Sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eprxq4Sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36BAAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779307234;
	bh=XEpUIno0dcT561KIsdhg+I2CCfk+XSj3oxEueSXuyVo=;
	h=To:Subject:From:Date:From;
	b=eprxq4SqFbcvn0dim4IrKXZ14NAeY676T9l+M28PVpeM+lNQzDyL8KMWi+0yEviG5
	 XAqt2jwLg9kT6Hdpssu7dWkp0WRCcG9bbVUbioKGlphFbRh/9RDWLdvV8jZDm6FSLr
	 wd+4Cc+x/5jFFjvAy7m5dXQeW0JLsjXmejvWfCuYfvT1afDAI6I+rqCWhmwXcgy1ae
	 t9LKSbs0iz37UY4IEifvQqdBS2M+40FJjCqC81PpSFXNT0zOeBXvnR7Jvu7RdH24oN
	 M17CZbcwjX6CyNMCJZPxHshBPOyFhjHBbat/c24uzfiYsrgWD4YuongP7DsI1/uq/N
	 gRbirDOezae1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F27A6CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930723390.15065.16064203959297533297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6ef11389533121ab140e0f50ced67a7a27221061890ba2535e583fa4318185
Date: Wed, 20 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779307233
