Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384481DF968
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759100994; cv=none; b=HIgTFXM9R8Q++uGFLiqBDXxzvqk18GT0Oe67adrmEWyMH24gHfYgr06VKpUuc0u68PXsIdFuiOIpJ0G/q0gtWdkl6mahtA8wCaT0GRepph2Hrh0/e5mADwecXNXYMpVl872xI8lFLHyff12FzcInnWK8pDGULzN+/wyBGMdH2hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759100994; c=relaxed/simple;
	bh=7ljMKazxX8gQ8FPeMxkv9/2PMdpnYwj7XMWSSKQF4Qo=;
	h=To:Subject:From:Message-Id:Date; b=HauUQefdCBtkK2FQr+tk+5GvZyD6lOfAtsi1blhxMpnrVIqZ86RgME0Qhu/uDBU4puOXmWOu7LSQV5mppMb4UiJhUQaYLc5a6QZZccStKk7q//9D6eXAjTskCA7Vsc68kPqfRVvW/03V2P0iuVgjpHqSPcZkR6XUNrd6IfhaHWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNbbIe3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNbbIe3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA422C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759100993;
	bh=7ljMKazxX8gQ8FPeMxkv9/2PMdpnYwj7XMWSSKQF4Qo=;
	h=To:Subject:From:Date:From;
	b=lNbbIe3n9JjtSZU/wsN6AH61Q7PANquq8Hws03eJsE70sg1XAQEw+UPfNPuiUzElW
	 zgD4aaLsYJ20npZZQH/khrQX5SA3RwrRb8cmn6G/bZzz5NMLVOUXcRuCVGjo60IUcg
	 a3hgj1hfewkvI0WILzgevn5fYR6PvZfbhhdVQ1bHVH7kgD3YxCqcOPRExWmnqmmhX8
	 Gu/dTZUOL/zNV+HGr7gww0nxX9NJaToNjiAh6DPNhD+iinqsvSkq73IlYEhGF5FFgj
	 30HrbkGdSBJQajBb47OG0kHxiJvlHC9Qz5/9t7/T0UH2pQbMo/7+pfvqhdnSvZEqrS
	 ONJev/4KxVIGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8FCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910099358.11271.11393223087891676257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ba471c299b08eb27bd64877a3789525456d842bdd253023a2f9ff170892c22
Date: Sun, 28 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759100993
