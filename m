Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948C2C08BC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766065434; cv=none; b=l6nuJ3L6SwuY603mOpJbIgNim50hJhVKQPF+AL9rOJ5baspkz4hB0Wr6Op647pqNs3dqEGJ28ghR3621PDLmPEkdpytFQhe2vKVIP/AMv489ZTr9MPFWowo3kqy//FPm1GnITmP0QCzYZTLj/QZDKy/5U5T3SXRnOaC5OrpG9Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766065434; c=relaxed/simple;
	bh=VOwdFD1vgN1a4d12jSuOvSi2RWBi7HWkO5hPN048ZGU=;
	h=To:Subject:From:Message-Id:Date; b=jsMz1wIDIor2cDYDSvLO+uMuzTpJcRKduNJ2DMG42RDmq15M/LEfp5QtCAACDBnNq4G0DhY6pamwPP+f1dIH1afvH3gQMZUmId5Mo51an5rNutdHZwsGPZZCNHzcfLO/BZn2MzHKiEiuIBpjDM3ba8c2dC4dmmV5/E2Mj4F26ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/FZTHhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/FZTHhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3FFC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766065433;
	bh=VOwdFD1vgN1a4d12jSuOvSi2RWBi7HWkO5hPN048ZGU=;
	h=To:Subject:From:Date:From;
	b=c/FZTHhG6CJCLBHJtxNX6F8tyrg+Xec/cEq1NbctW3JruiGfnUmGcPrBe79hnYtdO
	 HlyQyPBt227d/HFWbBJATBRH+TPq7HTSDQqxN1pQw5NzeHRLk/1WMTKMKKYRS0qINn
	 W+CLN6Jmu+ZrSbD9riKpvf3f/0SylIcqcgr7/r5q7IcB9qP5llTyqA0K2NSD4x+X0S
	 uKmpzStQbpLlamnrfKkuvX05gLj/xPMYbG8NbRKsMKyhtTsZKd4OVjjeIB7d2i6TlP
	 y1WmojMlE/+mFZcNoW1S1eKRtK2pE2ZFC3ugw+ncl3SUYUTA4tqc3UIIpj+lYksp9H
	 +NLcfTyvBWB5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54AD6D220
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606543362.18062.13973740857908998209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e21eab8216e42d1336d6b5c7e0a9f1e8ff591da403746b8b78a07d33ac48ae1
Date: Thu, 18 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766065433
