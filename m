Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4455E158A1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717864643; cv=none; b=UOcsKAUznCz9ziWFkH1aqFn+sPBQ19w983pMcdw6P7ceKe8nJW2wYMTbBndMAih2chUF8OS7jSBYhXxHIBVCq6tl7A6EOjIcAh+S7+E3jG8wpF1TpvQ/EyvxTjToR0CDMCenG7zWQHyxQKNxCpehPBxVXgPqsKL6l98jD6iDEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717864643; c=relaxed/simple;
	bh=BPS86FxpcVRn8PDOwtzw+3fsiTGqgZi/mYI3TaGIRs4=;
	h=To:Subject:From:Message-Id:Date; b=G6fs2WcdcZBK7GwVk26jUHBNVwN1Como4gkGc+iKO+QzMzsMP5mzkARagF1wtE11D954socrBYa9W9dYXdIfBWAxubP7/3XQauEio7JWLMdcua86w5K7fzOk4s/zrbcwly7XQIFJ+0YkmTy1Cu78YXrSZHB95/r41PWqw5P0i/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGPVm5hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGPVm5hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6058C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717864642;
	bh=BPS86FxpcVRn8PDOwtzw+3fsiTGqgZi/mYI3TaGIRs4=;
	h=To:Subject:From:Date:From;
	b=GGPVm5hSAks6v0rynzBud3aoV9fTFRBS6hibsuQLc/6aQxrPctu0rjtHKDctzB8NQ
	 NwRXXj0T1nriaJnDscoEfGkMOski9EmPyU0xh1pGNCeSE0j37XhYRYe0jDxg0zbQbe
	 RWAritXAlvEbv3OHeIaBOh/eNeRbcI/A4JfTQKdxwnI3xMUt4tV5EmalSbavnsKF6y
	 BsXKEd1jhijYLFeBv+Ii6tcQEiePlvGnBuCCOlFRd/xAaazmKqVy1LePj+McgkdwMz
	 Cd0y7Q/Jatcpik3urQp0gNMzwCAVBQpl89s89smBr8fs/642uo5zrR+zq0d9ihlAtv
	 fMFdR/2vpACjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00B1C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786464276.5012.11860468337950680448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbc6d9b376513c306ec609258886b8629701a607e9e9757ef5102bbe3f269ba
Date: Sat, 08 Jun 2024 16:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717864642
