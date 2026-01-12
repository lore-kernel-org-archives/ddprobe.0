Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0CD274B42
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768259634; cv=none; b=D7DAtODuIbAOKvU6ECyUYeJ05vMa9ArvoyMYDyE1uCtWYjQjrOVMdsmhPvvYohN7zI6xo9Ka94Z36V6idQPQzMekN/fJYbzQ5kBm0KzYv3mVBIjchJgfCWTozsUji8Wohs/OLF23fX9XSufX/swWl6XjZ6kLl5v8rE4ggUfUpLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768259634; c=relaxed/simple;
	bh=w4RkcdhMvR2kGtEZIEFGvKqlkXhBd15QJvdMByUp3Kk=;
	h=To:Subject:From:Message-Id:Date; b=EGzyYaYbhwLF4EBDdwbW+wOfsvnmgnfnMIgX2R+3BYOhVPw5nAkyO0TQH7ouZsCgziXnCL6afMpuW6R1sj9y2wd+fuLyFrCK0A9/M13gfv+miMQW2KcNTMc3vZCnsqFFJyo3fgzLua+IR03zJVKJxt5BcslzLIwCI5xlu4C74OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqQ3TU0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqQ3TU0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9215C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768259633;
	bh=w4RkcdhMvR2kGtEZIEFGvKqlkXhBd15QJvdMByUp3Kk=;
	h=To:Subject:From:Date:From;
	b=oqQ3TU0BnLBjN5LijJrMTrAHs/+DkVeTxIeNAgPSn+kgzprJ2EI+anT61NG4H74y2
	 jg7FgEKJugZLM/nOfsYVmktW8Xgm0wRKsTsXgjXQYrX2376iGyUuUhhKqUpMDZ0b5J
	 U3FD7RjBr4NiOXDTKZSbTB/zUECYC4SWLB+t8JTWArXQHj9NMTx1edul+FngfQry3O
	 nr59ilValQgggKq/1KseBHZ+RwECyld8lQW+jIpRPjpGk5AMS92vWliBpcoMS0FaFj
	 q/Jcnp5iPyayGSaZF6GAjeG2MDK0Xr3DvEophOfzfSL4cduH1yJG7Fhyo1xvWeqWLA
	 aqk1bDpn5Xx0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F75CF45D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825963358.16420.15714892974957798776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f3bf65f8346e1b25af24111bf5cd1d7655cd4500227af69a6a4f4887527ef5
Date: Mon, 12 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768259633
