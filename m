Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C1CA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757908794; cv=none; b=oENClQFM9qXaPxGdc3mJlYRA4wvEcuarDA9HOPNhA40753r7Tm+nQ4z1HgEmIDonwqRNB/cnIoGcRiB8V6vhPwBAhP8eAjzltlS+xOa6T1XfQeaOUB6AwRQcPFILB3d+1VPL98nIkgUP0jdDLg+QrdHCscf7u6LeCYVk8qkTtnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757908794; c=relaxed/simple;
	bh=OP5DTWeTL34ZWDjZKNMxsGFgeeTikDq/BoTGaBd6oWs=;
	h=To:Subject:From:Message-Id:Date; b=VjGKBHcuEb+E/r6NyOEwbW7um3OKptr2ntThHRorRusE0kOPpKKPe7Krg4rkt3njJYa8vJLJjWWsUTGwSkSe7hy7N4PBjX+gvgnKHNOLEtNhnZlL7GMdpKBDmjknl/O23yrau/b0AgP5ZgKFJ7Qy1fKcXT4sIedOvxE/Qg1PPzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKzsNfBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKzsNfBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2452C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757908793;
	bh=OP5DTWeTL34ZWDjZKNMxsGFgeeTikDq/BoTGaBd6oWs=;
	h=To:Subject:From:Date:From;
	b=WKzsNfBrpoVs83IcmXmTvX1ysMnaoZcOzJhUKTuQEPkzk7LgMEr9LtvTDUlPTzhel
	 P5QeqlTPQj7nQmx58NykVuUGwnvZxqYbU++axeAcsl3ywrwyocUMjiVu5U67XXxZHW
	 6mX9/rDFMM2w6NcbiNl4nF0I5BfLggZijU0Jx9sPQYD5vQL5eUSFTnAmW2/zpupT3D
	 GX0rOoPM5iOBE78Z/mmEtECxQISTTtkAMmvxAo/tdZyyXQDAsNdwuRuon30kJXZ+LO
	 uE31XH1Gl1Yzxxg7YGRmnFGibdsvwUSB3alYYQBAXLQ7p+svbuA4Pj5ZSkoE6l55Lm
	 ueJXjzE4hY2Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94119CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790879357.22473.4220447208536521053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a773e83e23a363b39c74821d872d14e1fe4b28594317451e19c4f285e2b966
Date: Mon, 15 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757908793
