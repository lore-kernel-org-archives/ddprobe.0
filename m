Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E042570
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714177943; cv=none; b=cutzwgIOLJQtG+RWqL60jmv0xDD603+mOTZi8xmORIaCww0r3Cz0UpBJOQZyUhA+Oh4jy87izMXyKIujUtz2AXm3S7YFop8GbejFVaKF3RWWHEzcLG5besnSYQiucZE3uhaCX+2J/DsmIj92w7P9ArimdTmhe7pxfsicQr5ahMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714177943; c=relaxed/simple;
	bh=GOMbx4tXkcMKBl7gNkJh2T0ha3EjgigtLAJjyoGarlo=;
	h=To:Subject:From:Message-Id:Date; b=lsd2PND4sX7lVE9d8vCgZDpPcP4bnthA6Cd8NSkllFvuoStyHcMlNn9nC+0QZi5W/qhCETu18Z0f30XJuzTfCTabEyYXE9GHSi+6gjMHKQISLGENa7xOztjYY1v5cVZQ+ENEfn2wXBrDTEEu77CWPSjf8pjcR/t799pCoLS1ICs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKnjzmlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKnjzmlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDA9C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714177942;
	bh=GOMbx4tXkcMKBl7gNkJh2T0ha3EjgigtLAJjyoGarlo=;
	h=To:Subject:From:Date:From;
	b=rKnjzmlPHOEyiev6ePBR+93jb4+mH3aHY0ooHcpT9t6f0qlhpkJDxiNg/0+cuO72y
	 pT4qiSoZ2597Yhh4CnSnjrLN1ZkzxGK/tUoB1Pkb1HOYpP8ttuBaTM1/QKA81gBcPx
	 HDQGFjdbArIA6cgPy3N5rQSDwGs6CMhNuezzwlGjczE8z1yY6sxfCTkhbIrEuAcTsu
	 OqyMnGx9bemmSc6gq/STKL+CT3kaisK4mPO3oW3NpxUd2jJXx4csxwlAYPU20mX7x5
	 IRCFGbnZzi/qegOgMSAcS6Eroj/1OwtJ1k97TGvIlCM1mxUCjiHJ26WNP4Cl5y+1NG
	 kThaav3vUPYpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A3CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417794277.3663.17149013093480364349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e682295b83cf3fa25ce04e5a5b6516526ce1a230127e60cafa468c3165bf6a3f
Date: Sat, 27 Apr 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714177942
