Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD328C5C9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749028196; cv=none; b=N61tBzYSprpNF4u36qv4dj7LyUSo6Qjci20CA7xNspSOhpsleFA/NBfV3zLsqxV6+HJ7F7xT99h8qY9dSBaMwljThjsMA0wropO3fQoBEnyvo0ZHd7YegxkcHtHS/pAlK+hor8EIDpEr3NsS9fhktNr5VP5Em1n7EsR4BTjZlx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749028196; c=relaxed/simple;
	bh=p1r9J9cnMWlS+Y8+ofdTBlcBGj21fevuMDVBVVtIjik=;
	h=To:Subject:From:Message-Id:Date; b=BsYQPMa9qFCuCwnOfgz6FNQ2brpRfG3g9p8Jtv2We7fJYA4VRdCMT5guN2ZGoEiOnCxuhePmQc0sSBZMqchMk/moBvB+n1V49q92IYNZ62M6Gyz+BjxFNNR1PewWE2gVlJ/WjPtMJZ2XrxE3KZ9P95ITw/LlIzIYQ3e90RSrHEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulrVewzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulrVewzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2717C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749028193;
	bh=p1r9J9cnMWlS+Y8+ofdTBlcBGj21fevuMDVBVVtIjik=;
	h=To:Subject:From:Date:From;
	b=ulrVewzs3B0vOMPccKB+OIu7Kn+wN3Lauff6DSvnw5A3k18o91svHqJzKuFttNMkF
	 y71Qfd8z9QsNRqSl0Pryf4KR+WNyTb9tD0nhb2ZsbCVI9mjScb+o+Gyr43vgGdr2oh
	 elaeagan+nG1DH0ZoHYpVbzI8pay2zQ+DNSnWBZvd+EoiKCCziQ0OEKC/EvEZJvduO
	 grrhmSSSUHuKxmKYKsysxYKjnTEBalLZCDnSo3DZ21+PsP7HwEXalm1wQrSEbgkde0
	 lpXZ3E1/GycbH8bASdLnY/j6jqWssBEmlPKMEEdAB/Gvj4vg3NuoEeTz/CJWZL6tN9
	 /O+btJwZGii1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C0C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902819357.31917.17933764595863886540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad406f686e4af19982eaa3c3a4e7a700d6493b92e00ae5065467153b1a55b9b
Date: Wed, 04 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749028193
