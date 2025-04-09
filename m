Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF9270EA7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744216794; cv=none; b=cm5TbCUPaG6wVxtDE4b5rL/76GH/FihDfinDOcIWgzvQb/tnEl9jzP4aD0V7fKaLnZ20iAChNa+oZWqWjfLNk91HrCN9ZPjjgB50MR5Y6ctVGj1ay1CWONYb0xjcpz1XB9bH62xSjo9pkHz3A06XkryAi1X1C37z/a2+G52ND60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744216794; c=relaxed/simple;
	bh=h811Drmncz42sSEgT9kEIOB4mDogjwnSyYOK6yfjLoI=;
	h=To:Subject:From:Message-Id:Date; b=bwCJLDTNSD9GVEf+5uewgpJGRqz9ri6JUFA0WcI3D72UGJpSczMz0GIQV8b+u1tz510gw85/QHIDEPOOdaJwNCm4ux2qY+91LtXreh6XYHGPAm3NhlBAK1Kz0WIxIMpfZH3C1EjxYxw4PM1ghGAjgQAuEXaeCHUzmnU1PyF3vmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkC4dsRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkC4dsRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB891C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744216793;
	bh=h811Drmncz42sSEgT9kEIOB4mDogjwnSyYOK6yfjLoI=;
	h=To:Subject:From:Date:From;
	b=TkC4dsRYPqR5tSIZtgTsYqt2FOQ7VeISnoS2/Dkblzh15HcZzwLdSHxjuDlEE0aUh
	 AmwdXM05lYCufgBLA5FnPKS4aXeVWAaiKVq5YujR7a7biQOm3q0sAMpAupNflVaY+7
	 ao34s2UchMgcVpIhQXHcVWWjOXzUI/vDA1xBmqK+yLmNuBHoaM/prUmS80c2ZAg0kM
	 85wBTRbO/mwsrlPX5c4NPDUGAeDa4E6ocBUvABLLv+A+SrgDAX1Vi+Gha+yevaEdcr
	 5z8chb/ps2C6YIkzMHDm3oVN5IsiGtEAhDiV/fuxyI02mSbF198E4KjSaqHBhb9NY4
	 M8FP6zk4UsG3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1D7C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421679362.307.12463006391890514435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04c8b38f0adb31799abc4f75a33a5e40ca5064f818c5a0979f36702b49eb055
Date: Wed, 09 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744216793
