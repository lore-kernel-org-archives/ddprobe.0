Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180A033711D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783631314; cv=none; b=kx9ajFanUWYtni/jxBONTHuegqATCq1A+ii0PbOvL7tcUMWMZuSOdhyH0B3H8Gdxtw62gb1enPrD6ZTNQZf8VlZNqntAIK60mpCLToZQbkYumvhWw1jot7cFe1VJkekZw6PkrMCrUhVBO/yDTV1CvYvL+IXYIFD16efCqkDPyjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783631314; c=relaxed/simple;
	bh=EIl2K8gnmOu5DUyYQPWr2q/ikovXIa19worNSxOGJmA=;
	h=To:Subject:From:Message-Id:Date; b=DFj6TMpPeEczIbAzu8cmvVd0S9CAoqZQFlg+dwRM3jla7vdj6D1QF9vS7tbBV+bA+rrn3uzajMEU5hMfX7AR3bCBbmm6R+JHyGdR8H/Gs8qbsmoD2eBxDz5e9LGd60QCjSU7rKFiaodJ8Amnd4HcPQa22iBFrC9Tr4mnjwJfQJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVXZJsGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVXZJsGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EEC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783631313;
	bh=EIl2K8gnmOu5DUyYQPWr2q/ikovXIa19worNSxOGJmA=;
	h=To:Subject:From:Date:From;
	b=VVXZJsGF13Ym8L7paqvHu63ATwG61XheBpluwOSIbebup269+H239wNYpF9rslshl
	 YjWUP/R6oYqBYDgnLZ3K8rULXQl/eIL4FJfOwhl3megCKO+DKAxQOQFT6IEVvXF4fs
	 pDmHpgb79xv3TdSWO6sS5snp4gIweYH/a/Bvcl/tjUboYghdDSN9rvzh70zyy6Z3JT
	 7uwr7ySz+yv9eP7CNCOHnElaonw3Pow4AzIpYqbHeCGn51vjac2NMIPSo1tnXWJ2NZ
	 1rxK1xExKQN68pgFMeP5JYuqJ0H5tjiAgspGqnGU30e/ojM7+4/DXJg08ITax2/l7l
	 oLGeNyYiiM5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C34C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363131368.32202.6409669299973815328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb39174840e398632f2b49e117bb9e178b7c91b3f2e22f720225c250f08d06d9
Date: Thu, 09 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783631313
