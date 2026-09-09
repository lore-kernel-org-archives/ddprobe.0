Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812F03446C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788981034; cv=none; b=t+I1iBPXB7FF0CLpsmvqAmTgf0h7ivY3jkU1lKxmFVRVsK27FtIYaKVOIxfn3rtmuMEd4TPGCCVBez5korINdKrAdK6a9t/t+W48xD+I8gGbrISSJyA5OVTumhSnJSK3ndIe3N/sp0XduILwbna6jHo5DEo5hoslUFQbCRvGvM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788981034; c=relaxed/simple;
	bh=fBCbXju6STgw7DCQRBbyQt29xf7KDDDJWnoybd6PizA=;
	h=To:Subject:From:Message-Id:Date; b=ofu5mFYIHTYBNZ03YcfLaHVdkqEly7e9ItoQRdm1j3y87OFlskF+GKrEaLGl68eDevNpBitmP9+IMfejd8aRE/uSS+yZXW9Y09k1gfrXZ5IkzC2vP+wrQAqnT551Vyr5Yq2MQZ3fWRp7tDTGzeoIPtJKt+glkqH+3FCpujs44AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/I4Cj/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/I4Cj/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4CDC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788981033;
	bh=fBCbXju6STgw7DCQRBbyQt29xf7KDDDJWnoybd6PizA=;
	h=To:Subject:From:Date:From;
	b=h/I4Cj/IuYkGdwPU0YO+YE0jG9QGRp4YbfW7WSnro87IxKmxRlQRnWeZiv07dUCkU
	 jELeUi3pJJlXXWLAuVZGPo93UGNhNbxtc0wYS31pMjZ9H6mIIuUeskzceprv53+kPt
	 U1nTbDZ9Xfq7gp9nQrXiLf/YjhocmVxot71s5xZ12PyXX30LBFqNN+3lQ6pRBMwk57
	 4idf5sUwtz08urxPvZdstz/77aGRTXKTeKD3CoVtkhVkAobKJziEwf8T/znKSMoZtM
	 JApInwUKgWpqZUEPyeavZxaqaCd5q0xRb58T4On7/BhDG4JpCKxqyFAeWvbgS/1awK
	 2/ABmUt/AoPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D8C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898103370.15578.3026151009956571331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c3853f3c0d784031cdadea6a23ba99780566b72d2aa6ca35da0804bfc9eef8
Date: Wed, 09 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788981033
