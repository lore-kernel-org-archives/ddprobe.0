Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58528375ADC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785180034; cv=none; b=ay9h/111TG6f1PuQfI81QJYic3j2F8sby3Nm7wfxNBZf1gQQgHmnEkysuwnIw/HPHJEXch6RIoAjoEdvAH3ymji3U0QJ9MTGscm78iltXg6SwxU3x6ZBRj3v17hL0gy20dg9pG++MGqGYvDSi/AECZ46ullMTWjkGP4uRZ3teAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785180034; c=relaxed/simple;
	bh=sGmUg/WOjKXtUDFtWpXH0oknNXLGWJn1PCSYvhyghQQ=;
	h=To:Subject:From:Message-Id:Date; b=E6x6LER0ePWU7DhcQmsCB/q2Uu9FCXBY6P455K/WTx/WRlMQ8HFgUXbGEdSQGc2/aldT3SI3mgwuAOAPS/FnlGBqlr8ej+Tkjd9SLgIG6turCKYIpyd5GChIG/LixWKJ0LEi2rSvIikZ/+i1ijKzFwGaP911t6gU4OVhDbBEFTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP8+lbY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP8+lbY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF72C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785180033;
	bh=sGmUg/WOjKXtUDFtWpXH0oknNXLGWJn1PCSYvhyghQQ=;
	h=To:Subject:From:Date:From;
	b=oP8+lbY7EViQdEcNH10HtV+3V3q/ukRloqmKNR3o0paZT5mLBzXFsblTiqmOGGrbn
	 f9ya6D3111fGNQIBuPsyVQKqGWkNVpXvOv8VJ2b9mPT1W//YhpVD/1bFBliFW/9EU5
	 rHkC6UfpDR/j2DPGJ0Dtiq2Tanqn3RG1qbMV9A9olYJMO74hyuXussFCAlTRHuDTvH
	 hdiayBhDupldcFd8BfMnB/TG6yI17WIPy1N3dkg4WyQVz+nRdliwI8nn8hMplxReTC
	 069dgCxKWtyrAG6kTiTQ9j90plTfWWfGwroiwp9h/gtMZaPsl8jYQrW4wzhpWneBY4
	 6AcfRz8dqgMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928CC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518003368.20400.6070129929231325379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fca4cd2819f4481584e97ad6fbad9e404f878e1461dc823b539bf6a4c42a03
Date: Mon, 27 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785180033
