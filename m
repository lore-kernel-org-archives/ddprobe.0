Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED01991B2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749070195; cv=none; b=MeOzGuxgeTbWRi7Ym+tcj7tPPZqLd1L+lYUlYKHGvMSWbx8+hP+2UpG/z/yK2GvQSze94Xt9+4CgFfNBs70QaCF1+YifjDKD7ldsHugFLLMUH0xxDw8/ydCkTIuSFOg4dCsg9lCbiKda4YBvxlMB6eyEpdXK1Yi47eG5jWQUXJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749070195; c=relaxed/simple;
	bh=hZIj71xvDOTUNatZeavjnorKn5Tkq1IBf3p0nTxYszI=;
	h=To:Subject:From:Message-Id:Date; b=Caqx7wVbWWSrKkx+kskOvCXg3/oxczYd2sRZ4Zxi3joDBOb2krbBPcy27JWPrJaWa1UgoiVJlXVgqpw1SNARt8iK/FPT1mVcQCs0Uqw1ilxMl1S4O0tlF1kZ0Ac6Gp/C05KrgyEJGdPAIfnzuLkBtZXiMgenFba+D/3q7uT3668=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYhMXETp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYhMXETp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749070193;
	bh=hZIj71xvDOTUNatZeavjnorKn5Tkq1IBf3p0nTxYszI=;
	h=To:Subject:From:Date:From;
	b=BYhMXETphzcRy7v2Wvm7pylaigFcuRhf2Bo60whCs8Sfw0ML6fBo4gaeUU/d/QFUY
	 ikEr5IQBlHs2GAIPGcYMc9Z9y5mudYe5dtFpXAN3MFm5h3m42RgQ2aN9MiUjyaE6Bg
	 n+h2/12fQq+4iwJhIijali9cRYTRQz3yd3O0PWVF5gIrijVkF15J4BPgp1L1m3E1b/
	 q3f5NMo4t2xgiKwmxcOyIhaFzuiBQPdtsdx2dqTnPAUnwTmszKiBjcfoPdEDW8oVap
	 /H7KiDD3M8lbyu1z1gkhgl8szjQJRVMCPEkgrvc9MdgfRudifAmvpgfI/+OQUBwYuf
	 YXtAsPYMsDhlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041EC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907019358.13133.1820600739057856546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c434aa24050334989cb3564721308dc46055a410f9c48d3bf652841fceb4f28
Date: Wed, 04 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749070193
