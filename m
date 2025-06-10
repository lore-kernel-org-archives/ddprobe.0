Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216C18BF8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749574194; cv=none; b=ZSDYUSfu4cQqkX7aKCQqnLbV5Y+U+GAYYBr4WmKBQLJ9S/Kg1wbuRxpBGoIn7tgXBnnILVrG5ksXN6YPeQAhh0+MsqLI6oEZsw1v0+lcfOtoopj7bUSNqftIryNjp/YXwVtieWtSHx3SZqy23fDe1uclsXnLaeZ0UmYxead+wD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749574194; c=relaxed/simple;
	bh=EfQ25lsGAWGqNDiUOxOtEoI0IcaA2Cd88LXLKJ+nRfU=;
	h=To:Subject:From:Message-Id:Date; b=Dyq3Q2HXJpaqB0QDPmoqR58WnEfbnl3cnTTHkH07KEHv+CUjy4mcZhRlR/5hIlc13DdYbfbEnqaiHO3HbMw5nIWx80pOZq0qVGaKZlfqZqPwdpS7wvxuESUaQfu/bR83yEvwJ9kJJ2K/NxDV3ejIZ1E2DmSJn4xLz1M0DMoiAfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jb6Pcslp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jb6Pcslp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749574193;
	bh=EfQ25lsGAWGqNDiUOxOtEoI0IcaA2Cd88LXLKJ+nRfU=;
	h=To:Subject:From:Date:From;
	b=jb6PcslpJFlUT/12EFEaSkZk55j/cZgwDZNlLX8EKcOafzv713+sJSqxEk5n4UKGe
	 ClOGddmFkWti6eFzzY1BQPjlS3v6JMjqOfugu+slG0cuexihrtFePeUinm4eXl0wSy
	 Z6Ga4AcDl5cvySzCNVbc0oS2JhHaZzdkv17TKADmKYJycsb8Bs3K3I/MXaHD7OgsXe
	 EjcTcYD1QYlfb93gnyoBociAawWqMLL3EdO19Odb3NZ00OgzSjM9bEMW6X0yw40Slt
	 bKEMcaFL9dk9tSAfM/Z+GPPrmLqonV4sDZkkwkfJRVqKWkKJ09ZY/TBw++/eetfh0M
	 zov6Uy8OneFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD40C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957419362.12715.18258595198351812003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf85c93ec7c4b856f0a53bd7af025b896872f9ad3d39f0e19eff1f6c52a83757
Date: Tue, 10 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749574193
