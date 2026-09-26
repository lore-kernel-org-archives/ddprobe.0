Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C2A3537FD
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790452234; cv=none; b=nAT5BO6fyfYh21PPBfEDM7u1S/XV+OtPCMm7ONLArA/nNfgDIxWWS/Z8HpCfGi2Tf/9h6DHpf4pDoHnqJO1/HIX6bafHOhMQZN7e073H1i5Sg6V6Sl+n3B1ScLPZ4koSQYLOGAYoNuKkjmJlbX89oe8QESQRHg6gi3qSF/ph+fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790452234; c=relaxed/simple;
	bh=dWttGMtRfK+o+adZkingSLAFmAaXkETRbME8tZi2Jbc=;
	h=To:Subject:From:Message-Id:Date; b=jwAC7RJx/oymogVu989xjde/lxPP24D850WGSm27957d6gxmnMxewIYyarKZ5J6HYro2qiDu0mNfDv+srdDNoPUBw85W1BhSBdDgnOeOjDNCd9I8v/+IaYRP9FlotNWCPXctnWJsjO7DWUWk4DiJ/4e6rIykUKLFSHeCl9jsYFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVmj2U9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVmj2U9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34ADC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790452233;
	bh=dWttGMtRfK+o+adZkingSLAFmAaXkETRbME8tZi2Jbc=;
	h=To:Subject:From:Date:From;
	b=JVmj2U9/aQqlXj1CZw+yFOglm23xlTxo7lqv+vVQKARDqySwRUR+pxbOVQ5iHfYHP
	 Es5+x/t5UnDpCxSCSRJKOGuml3245XRp1saeaO8jb7E92R+eFGyYowBkioXargsBiH
	 Jo1txogK2i/Sj2Qu8NHJBFLf9GZuBZnNF61oOzyTNp0S199sv4nPeb8ws6z4NTRzsd
	 hbB4g+z6SUiX0ao1Ndin96B3xKyhasrP3nt74NJ0bSNKZIVEu5pt53AmariBRUKPeC
	 mtc+rpOUru+Q9ywyVIfE2RGxN+5ZyNrr+ePWrqdy1uWVbUuFL17cWpErWXpy6s4OVu
	 fCNw2CODX2aog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0291C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045223368.25730.9003961788057142436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86828006aa533a8151f48f988be6af152bb51ddf1dd4cfa280c622677bd5a9a3
Date: Sat, 26 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790452233
