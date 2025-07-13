Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DD71A8F60
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752394794; cv=none; b=MqEs8usYmnMh5NjIVacRApuNqGpMUYGrel6CVzWD6CCRjm5H1CyjPnr78Gw0FaQ8wkPv+WGbxj/NNKalKM/UQtRtnt2X1JYU/qlddQRRf3mwK5sHf3xU/x7iEvfpF/iZXy/YikB/yVWrfXrTAmOTSLoPIubeKZI+2cr6ytmmdkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752394794; c=relaxed/simple;
	bh=PTTIFfbWvb68IhoN2VAsjTsABu4xlvE3Nq/zB8XS3mw=;
	h=To:Subject:From:Message-Id:Date; b=LCZO4isoxejaQbUgbmyB+MnLV6SaehGX8gvhUlhejArHJXtrkyWa7sp6XOKPxOLIUu3zBuMygPWnV8nqXtGaiuVEQ+cDNJnFEVJgxOudMRZPGnMb46G52cufbNpd0FVpZFqwrQsZsRGiuGR8+tmQ6RhkzmZNQ5EV7p0EmWm99TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNkoSlW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNkoSlW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE05C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752394793;
	bh=PTTIFfbWvb68IhoN2VAsjTsABu4xlvE3Nq/zB8XS3mw=;
	h=To:Subject:From:Date:From;
	b=dNkoSlW4/W5aFfitxeMUM5xw8gH3UyV7uyeoYaaxUDJHXckm1OX0C252iRg8+3IBa
	 JD2dAkaFqiqaF2XQz0Ztea6Y0z72GTGQCCTKRSM9esLvyPOJArVPYI6/zYJbEE41yo
	 WSbjoidHvuCDm//ETns4Xzmorl9BOtU+vAx/QDC6zKMiRUeoiNAu8xLuo/MAGn1wQI
	 TKXqwkB5a8uTRDQyJOmp0grX4dv8cy4xi2WXUq32EYBkByVMby1SFULD3/cQXhPtdX
	 qci+H3z1T8mO3Ec4Pky406RLzzCaDU60VwR/be2SleRtOUlePidA+K4lzxlcOfx3+Q
	 Q1ixEF4Dryy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E334C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239479357.8788.12857800566101578928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be474318a767a0d106bc67b5cee76cde56275594c39658d6c678bac0ef042af8
Date: Sun, 13 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752394793
