Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42714368D78
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786134634; cv=none; b=OaUgFbf1mPHX9+2csANQ/fXa1ClwjshF2IWU1nNi1fyXUrCroashilRQpN3XkM1AaZ+rIgzosMyW+0nIjxvmnbcMj0z1oe5PzltksPxFOAfE+QMjdd1EmIZKBAm9eFeQCjx0vyHDWftHMeGqp5scMwjs+kpN/GJRZOyNMBNryi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786134634; c=relaxed/simple;
	bh=ZwW1Oif93cMcgyIJwKMbQL3d3JLWYl4czw3eZ1Lk/ZU=;
	h=To:Subject:From:Message-Id:Date; b=X22uEoWxFENfFI3Dx/voYmj6QO+xF2qQx/U13kELuSnzqr3z7vnf3+5CAj+ulhtTUE1xGi8j3994IbPmTiTtUBHt5GrvI1gJzCs4msZBeLH2CzLbMQdW2AcFojaIfuRHWtjADMmMm15V/Ia+7hOYBIIOsYESFoGFJGm3vL5epAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBUqz09l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBUqz09l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79B8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786134633;
	bh=ZwW1Oif93cMcgyIJwKMbQL3d3JLWYl4czw3eZ1Lk/ZU=;
	h=To:Subject:From:Date:From;
	b=BBUqz09lxPUfmqN3G96HzOXg+jA2mdw3zSeDxsgVYdmk23VPIIvcBcFkOZl/IKsFm
	 /6B3D6GpwKBT4Jd3a0HnyH8Xw9PlNWDufQoqOJZ468a+pr7touvT5yLuhInvsDHC/N
	 qgW6kXLg6ZzFFkjeJAKtcnbV6ut5DgOMh/g0DGqNYRyKINXN0kYTTtUQ36hqwf4QnU
	 1a41Cr4ot5m+m71gkwFifK1nXBfdMgW7wPmtXVwSOE/+nLHvMBpOIwOmNI4tF3BG8p
	 CYgX1TlBxu8R8zssHW+hGFqr3fdZ7KYLz8zQuWuMf9DavkNUMdqkJxxlHmqi+Wl2yW
	 OnhiibNf+Ml4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F0C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613463370.16328.8320427939807674515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1088a0ce8a7531a2793a54d4da74b2db4c1151abd77be8162c69bb05983d350
Date: Fri, 07 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786134633
