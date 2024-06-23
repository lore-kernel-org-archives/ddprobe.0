Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A50434CE5
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719150143; cv=none; b=TFTg2xrI/w0EZEPwwZQzo6lT89Qn64dv42G7RQYL6rHzSSA3Fx+4xyDL8Z3odciiMHOAoSXctVnmuJMmsoWE8dkK3VB8ndhMVxRBzblpW9SsbW0+g6z9gQDL3RpN+qgvNRr187aJkLySha/a3V3Ov4qeNtDUhLwtQrHjIRAkHRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719150143; c=relaxed/simple;
	bh=N8y19KUZ/1dfkwTrNbrVdkK1s8GXRsSK/i5fj2ihiJc=;
	h=To:Subject:From:Message-Id:Date; b=DSqccUD/bB4ROtOsMTW7vrji0AJmQZBoT2t4/NNrfSnZS1r2DHmMWf33DuNN+V9H+tSKcVDiQvaaCO6lewD5a5O3ZXR2nJGZk//CiBjzNF9gAqQFhM8Ez6fDMJHSu9huddfS4/Dos4XXJMIBtrMIYv69AYCCsPd+PD0BbXORfvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4zu/r1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4zu/r1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D857FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719150142;
	bh=N8y19KUZ/1dfkwTrNbrVdkK1s8GXRsSK/i5fj2ihiJc=;
	h=To:Subject:From:Date:From;
	b=V4zu/r1fOpVyCb5OVuZua0+WnDua8nBnVOx9bCxjSbWk4nc7TiaB7EWQApt0G0JZp
	 t6uvsBr8ZTSsXJ9BY1QTc3Sp3qI7bZr+jeLrW3De33Pt6nIx5KS0sLgsNQxxnU0y13
	 9OYL+VQ4Cc2URGrPhANMQI+lKFUaI1qY46rhPRs28zfEXGCNjmVjX6MmSYagEYW0ce
	 Q2THpPn89qNwYUAdnd3umTVNP0v8zL00TU2YHTc1Xn8XavfKSAZDAWWMZHMHMZtxUH
	 lT8oW94p1ks3ogN3MOC/AvwpxJEg5KhZd20q0x6Lu895G1pm25oCKlL5U+Ci0cqAfz
	 z+vdED4/hk47Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1572C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915014275.2700.9858529966439949980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9950723640c247d2a6296b2c3a469bc5c3158e3f6309bce541fa0b99f0ae84b9
Date: Sun, 23 Jun 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719150142
