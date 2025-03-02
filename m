Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55342EEC8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740904734; cv=none; b=KgSoeTFwgVIMn9Dr8NuBugWqL4YnlxxQ3kpLHxW1othizkbljoWNLWX0sVfHLL+Zd1LKjrzrbppmuPnTAqpjUIMHkldGnD7zimkR78Lb3P6Ia9nz0JbjOVSRwBUlwnbzt/c5jpqkRxWxw2dnv75ZwdaAEW9tebsAzV+HL8Io8Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740904734; c=relaxed/simple;
	bh=4eZEAeF205w9RGAlpga7/R8/FdWHghbS8HhocnS3eAk=;
	h=To:Subject:From:Message-Id:Date; b=VNfuK4PcWwGq/BQnvxZmN5PYSZMqpI0c0wlIAvH2K424Ujlkg1xIgLIv3kBdNuHXYb/j35XBAk8lvEAedVT0mrel7RIF6ghnZZnKhu2M/x6f1MJfJUdo8p3VfyzMA+5kpMep/p5WzzRuItgERIsC5eTJM8lJ87hst8Fp4w2FnII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCK3L8qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCK3L8qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE170C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740904733;
	bh=4eZEAeF205w9RGAlpga7/R8/FdWHghbS8HhocnS3eAk=;
	h=To:Subject:From:Date:From;
	b=WCK3L8qD1D4tXWvbR3t2HpbbkboMqmtxFu74d81mO4YivhF3+Eldre6upMwO6T4rr
	 lmhC/sP203DQs+rA7lug4YjloxrqVgeBpUHc3iyrAxPHt08WCr5SSBR0SJ5PIdX8fK
	 j92gRoHedAl4GsYs+rUpMLPB254KJZnuy0ouThN+Np8F4thJlEF1ORaGrxkG1QF6sv
	 hP0fHAyYxycw8lgp2NCItfBmaYBA5whZfjr3P7SC/HPlAV78v6iwO+IHQdoVZxq4zj
	 FExEzC5QkCoJrrvf+AGlDYNdji0Y9b14NAS7OI4SHoOt2xg4ocn12ypgACjS1pU4X/
	 ieqNphlTGIJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E7C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090473359.30426.5159951330717676987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875cf05f829448cb26dd083874cd0f15be6803c3e1684492e3f3a5f1afeef7a9
Date: Sun, 02 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740904733
