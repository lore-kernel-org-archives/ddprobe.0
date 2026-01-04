Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D563F50F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767523434; cv=none; b=nyJiCOwYsf2t7r/QrjBesWkXKJyKiJ940jt4OTieBjbp3D0CMYayFJmluXin/KFXcOEg1Esd8sPbRMymUuwwOBBK0Ks+KvA9L7jZV3mWltwEJJiAU3FWeU0SOBWlpvTeohEjAqHjXRt//e3VjngIbysiTTSzK9e95X5KDIqDMRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767523434; c=relaxed/simple;
	bh=2tDP4KavfaTM89l1ACd0Uu1P6XfExMJAMq5ZbNqgszI=;
	h=To:Subject:From:Message-Id:Date; b=hdY634Fvwkx9eF/oUjMgGQIF1ZlU9UuxX5SBZNCgJRbj7vsm3ib/CRF2G4eQFSPJHm57lSqoLiUs4+7nHlTN3tw7OVNgfFPL3zFxvPkJJXiDI0JDpZk3BIT9hRqwr7Ldy6XYDAdwEFrT+wjJs77xCE6wJ2VdAwfFmrTg5nk6aK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVz7ssLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVz7ssLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1346C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767523433;
	bh=2tDP4KavfaTM89l1ACd0Uu1P6XfExMJAMq5ZbNqgszI=;
	h=To:Subject:From:Date:From;
	b=LVz7ssLgXOqRSp9Vdqn+68ViRlRbyaV2UACtL5YDQ8y/psHCgsLREy3Pbf3vt9IQW
	 EyNUeaJdkWwpjbvq2CSg98KMbYeMYrdU99gpaCQz2Ajsdf81GvzYg5u9cVI+/kgyj8
	 dzwQl4Qndnq7WWh5pRyes+fqE+bRm/eSZg+lYKwJzw6rULXwiTCNuCfOBFPpE52Pp6
	 EAxXCgz3NebPHpl3r0flSVMjmXa012RDDsOebFNssWt5Aj7VYqr0Qrqfu8YLzapbAL
	 HuWj23TL5ki256ayzx6t8swBv3GjvVtN+pNhnwN/mNSVqRRkar2L+Rg9hzv0+L4ZEp
	 RW1diNXqAA56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CEC2A074
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752343357.32743.4613744667305676361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98df9e8a984aa5353d872b1606c9c17735645206dfc10d7374cba855f066147d
Date: Sun, 04 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767523433
