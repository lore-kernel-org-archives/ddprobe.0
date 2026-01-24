Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13852146588
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769235834; cv=none; b=bz0L5JHenAeCNKKF6BV2n5j8/spGiXuE72QdVgPGMq+zOZC0oZfJtbS4XdQNN9kHB4yJ/ebwg2RFVa2vZ2zV869gTcWr+w9n5jOGVvnkVmFMLp4wUN/nQ28UP3Zf3jCUDvz8rnwsCedoKvrYO0PhiCBIrZxf5NXep4gIVSTJacI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769235834; c=relaxed/simple;
	bh=+kieiJkDEI6I83l4phHWR1FsECCTHPl1hYCPlEdjTog=;
	h=To:Subject:From:Message-Id:Date; b=XE+JI0oZZKELAxjLTuCMfPEe+JPz5NGvP4e3bxywzQhk2mQgswRbhiU94wxWeRJK5AnbiEKHi4FRljB9iL43mF9XTjN6PEjPsdnZRIpMCJ/tJLSmR4zhFonioCKxy4CP7ai0Z29qCWuvf+/VYm+Gj/Dv5R+zgCJlORvX54yjelA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5QlhaAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5QlhaAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEBC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769235833;
	bh=+kieiJkDEI6I83l4phHWR1FsECCTHPl1hYCPlEdjTog=;
	h=To:Subject:From:Date:From;
	b=I5QlhaAIgAWlQfhGWGxQzaIxWsOGy8MJarfMHlFdqyzubkcnbhbs2ByJGSzk96Ab7
	 rXu+QG5S8TlCAsD8Z8BVGFESoYU6tmg40Zz7YO1aDX6BogvdaXxbDbS/oEtJJ+OCHx
	 CG5tsjR6MaPsE90aipDMTxLOpurt/zcaCyYxnpZUIWJr8YVJLJMWxrl0ZwWZceS8I9
	 vFq0sSHkZdi4W6TgyXWniPr2M0F//oUxfy7foVQoPLAjDCNuJDl75890DyHjcwf/fx
	 Y1ATpn3IjBo/4nDlY9kOI6D5ihax5mhBhvNGeM5obkEqiJ2zZHeadxebuAxv0hQvtp
	 Sg1SDCNSEdylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E4D715C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923583358.11228.5998950230688657631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3df734bbff2f941715b2c3482cd3bc0d19b7393dd2139b3e172d88253a5a92a
Date: Sat, 24 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769235833
