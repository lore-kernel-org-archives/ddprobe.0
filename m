Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9193A63EC
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777903054; cv=none; b=ezaVukcmwk/CNEUJKyIreHhEpwQhRa3FbYtrfnRX3zwoVRdOhRtc+DiRNX3W0+QU4kmf7iAC945ZmASR9yUsmXPcOcDVwf/Eb+2Pz0wbXE6dY8EhrUqaMeuP0uQ+rzelgs3vvs86AdtrFX4M2kwv4sWC/WA/ULlVmC1BXI5IFZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777903054; c=relaxed/simple;
	bh=LRbtbJKpYyr+qlCUq6QuOXCGeu5DdllkPHC8n1twGsA=;
	h=To:Subject:From:Message-Id:Date; b=P0/o0CF+na41C5iOmw0LGA6vE2TfMXNhB1KhbimX9W3GFimsdPP5z+J0mVSEFIfLbwHB3ikMhcpunuXkvQSa9nkqTdVr04xUbKOIlf08xavVJ5OefOTcmWwpDbGSsMOV8LTBYZo0GXG2ckHHm9UPFqlNljoCPytMGs6rXnGZn/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjU/1FPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjU/1FPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9091C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777903053;
	bh=LRbtbJKpYyr+qlCUq6QuOXCGeu5DdllkPHC8n1twGsA=;
	h=To:Subject:From:Date:From;
	b=KjU/1FPYcaJEE9Mz6x5Hwec+ITIO83fEx36vTwkCk4CCObyK4sPTX3fcnlIEZY97B
	 BRwiSD+Yy0fPlt0TZUeTos0BOlRU1Rf8elMNN6w37MFEtJ3h+9zrH/Oq70wOhSPcEj
	 e2EwiAne/95YT/nOHpnBiGurhX15P7QjOfqiqA0E6nK36yaCslRyrS2MU8v7SDZOdn
	 5WxJdWJ9Xoc7T7B8Cune9gtWZPGdU8BJmCikxbYrZWkL856YaITZWd42FkxEHDd0Ie
	 DqGl9H9TeY4Awaxii0CxWej4jWJMruf/f8Y9B8BlcTY0QUa3JQjghQorxxtEbbD1hm
	 XM32X1/sPpoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D5FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790305368.30384.12344598048888014457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b5f905404618afd4bb2b95f83b4b0c8dc06e4d4d911dffcf56259b7d23c61d
Date: Mon, 04 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777903053
