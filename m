Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A4140862
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727679354; cv=none; b=S0+lMYkXTwYAGD5Jue6M+vMXcZ8JNOYxojdFcKI7Q/UmqBwFREqfZkYdh7OAqOgVEICYrE+970q8MBXeYfbIMNMI+JiezjZCM3NbnqF3Q13Zxut/2JAwEhOVNyxOtvGw5TmitWk3EG6qj4sCcOepBnNVd8zNlHPDdpAl5S7RL1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727679354; c=relaxed/simple;
	bh=M8DORAz5evapROCpk4/Jx+YPNtoBP404KewIFORtf3s=;
	h=To:Subject:From:Message-Id:Date; b=Le7+3S4S7UVWw68725ug0eGdJW/7bKxPmq9ikExyPB8D2kO28TlsZ1Ld9ylIIIdmqQkHzdyHnOGwFbO0Yj/xArkigI+zAwLu37sGJG8XTyV7M5UppLqAKXXVmgro7LJdm1poiO+6MUD+uqDLlgg2H0l14XGIP5H9a4v2aFZ8fhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuKoroFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuKoroFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9B4C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727679353;
	bh=M8DORAz5evapROCpk4/Jx+YPNtoBP404KewIFORtf3s=;
	h=To:Subject:From:Date:From;
	b=uuKoroFfqUFzA1/P/6msGom0Blzm8StaXjE2/nJIYZ5G2Oo9SiraZErEZxjBGid15
	 LQbr8kDCkzqa8+JaGZQMh9h92vtHTpirsx9MbAPBNeBOESxN0bCtc5uh99S5tyva9j
	 ZTwKMST2QdF041a7K8h6h8WW85JCBt+VnNa5Qf56pNddD93zgWPWf74xmSzDqX1pKf
	 n5eC/joKG4UWUONtUszi5Ce6+IwN4B1VwR+oIicp7sHer0SWSdq7dvtD5PQHrOhkrP
	 6KLoGLuwCmVJ52Watvu4+ntLqI6QgN6+vPUWkedxtjN0gdkIJ0ApXQ5S0Mhpm5vbfI
	 G9ULCsaExGRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CEACF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767935361.2801.3520180916037700246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df29e4b444f98bc1e300a3402c7bff5ed63705a4aae7ab030af5306cacf4c01
Date: Mon, 30 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727679353
