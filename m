Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D61DD0EF
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746136195; cv=none; b=Geta2YfqOWRUlBkhIdqVCiMrMPsLgiPRplCrvhogNvUWCIOuzoBXP0BE3HkoXhQqmfbGTK0criTEGKT0a9JpIy6YeNEHejXACI8l2bQyZE+nYS4Xi6JuYbJxJaKlwveoSjQcNDhTpIa/1Mdijl/aLbJwit9TR2a+H5t/UosKdBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746136195; c=relaxed/simple;
	bh=mba2L6luGYLrr+G9JcHPndPUe9HyoxHnWA7nxA1g8Dk=;
	h=To:Subject:From:Message-Id:Date; b=qyiVdAp4QZ4bN1izDL9Hge6qayBWXCSGBNTdZYpmjBCb2n+rH/5ohfGvYOfEE29DUzTUfzXH2ijAdlvx2KLLoU3b7VYG5kIhRNe7yIEbqTMZKbUIMpgsVxAh72Ch33VeeaDyF8MK6GunjaV+c/+zTZWAwJYHwc20VMgTNzsBB2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCIdQP0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCIdQP0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1D4C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746136193;
	bh=mba2L6luGYLrr+G9JcHPndPUe9HyoxHnWA7nxA1g8Dk=;
	h=To:Subject:From:Date:From;
	b=sCIdQP0MRq90WSOtvRl+9tQTfT8vrOIsIAefeehGT8ez3d//dNtvOkU0V2syPn6qI
	 CCts2Mc4+UJx5LpwRyh0IMDAcTpw6wdLMMdYuXbgorVo43nobeyCpcFSWtt49aqeEy
	 9YvoXB2mk0ak/aKix9FYQzwv/S85l8rRNTkJajiL8Sr8ayKhACdrdUxnhePmW1FVZn
	 ILhvENGgQdwnOk3ABWUSj1qK3k13+moAr9jmWPE+ZBZBV5E0Tdi7RcxxVLS6HyVrAD
	 8M4geHZnP09nHIeTOnt2WR9UabL7eVbv37rw8R5KC8jmUAtyO1dunasW5YI7sjMpAF
	 n9TW4Hr5QJduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88CC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613619357.24843.673604074179529095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fead6a3a77d3b0dca9f3378f1905097a3211ded4e936947c1d9d81bcd71a91a9
Date: Thu, 01 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746136193
