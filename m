Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1B5321F35
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758631794; cv=none; b=bK/xjPIO8OsIUEKY0Vk9S+esH189THHRj3TyJVx91Ox8uYZ8XLfT6NuzRr/JPP87luxPUkWHKsyrL+ZscsbIP02cUw+8xSJ4KMmBgyypyUmn7SOBhdDiFU8Z9/Djtbf+7SdB6t9CssuyBzgTSlhPqhjAppWsA1OSoerRvRcpj90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758631794; c=relaxed/simple;
	bh=sAD49F6i24Mo1wBuWEUw801CkJgHhs2zCFm3+OZqlgg=;
	h=To:Subject:From:Message-Id:Date; b=jZZlx1HrJleP3wTBlxrZx0ahjVczdJv9FF1LLlnR4pr9WPKT3XrnKr4P1+i+sn8DqWRip6Kfg1qbjntdTPPlXRDFSzTIDiRZCn03VtxZwArGQmBYmtipUHFkLeM3SOm6x/FYatMaoTaz19PgZEvhiIN8dT9jz0uCUFx/C/H4aK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSLptQ/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSLptQ/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A971DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758631793;
	bh=sAD49F6i24Mo1wBuWEUw801CkJgHhs2zCFm3+OZqlgg=;
	h=To:Subject:From:Date:From;
	b=ZSLptQ/6F336LhL/pFXJwwRtbMiBfDrt1e2nvYIGX40k7lt+9eh1ussLUpKq30zha
	 Ku93KUla5IYh+3ooi0ga7XAmnPYT+oldC6kjemFFM6f1MqS6bmFKZKJmv7h/XRZoYh
	 GyCtjGcWEPPgC33X2K+2Xt2aZtb+iWwf9JZ1CfpET4nw7S2mMydyq+kJcBDCvh14cg
	 TVTm/0yivD+aeIZJqGtM+qh6wS0I9yhCeuIURxm6daxcZNNIovYgnKssNNIqBx0hsz
	 j1CwDVS8rvMZfJiv3okowoIYaxxaA+MAkezPyo+zxOFOBPVbJiFB33nxS56ZdSXF63
	 d7oACgV7m26yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E23CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863179361.14709.9181606101477228737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d732a215eca3de8e0a6ddbc9d9499650f1e2e790f563d7fe0c3ab0e0700a9247
Date: Tue, 23 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758631793
