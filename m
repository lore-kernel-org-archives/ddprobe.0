Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE683F9F2D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785149434; cv=none; b=hFAY5Cbp5SKucxR0elkaBXMEmnIUmtqAWsPxc+gUXHDNu8lEB0cvBolWc48UGfzzn47Wrow4sc1nfjPGRDqcAjyyEfLMvZTRURz/kVNzJgKK0FI5+NFpyG1E/wrbuUwC3Wq4m7mqMU54tmwGfbtmTNLrkD9BVBwyUvLqsS1wcOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785149434; c=relaxed/simple;
	bh=tBhB/6EY/dn60DFReWet1HsIVoMESlV9Y7iqJLlwta8=;
	h=To:Subject:From:Message-Id:Date; b=JYvgzIBLvXtmt+uCqjdkHreKiqdeJwPoVhcHTYWvyIuqdZOKxnPz7v4RpBixHbxEAiRn0+ChdsSC+lYIUpPfgkMPCmDw+iDxxpqAuMc2NTCquoOITZRSns6+sKmBaEne1qx6RR5KyTwx8X9fCzlAZumDZzhwe2AAsRWNkrOM34A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtsuaZYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtsuaZYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E975DC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785149433;
	bh=tBhB/6EY/dn60DFReWet1HsIVoMESlV9Y7iqJLlwta8=;
	h=To:Subject:From:Date:From;
	b=RtsuaZYFgduxKA3AlV0siMKLaJtMbJlU4J0Q4DJCeMdHLUOtmHX7jMhiytGflPhwP
	 vpG1u8lpl878x4TjeDFwvOAoF+p6m23Puycoi63UOScN9YHsE6Vzeet/U23aE+62q8
	 4iDlZfv9y9oSkgb9amIGFk7LP47b3Aaiz9Rbr5SOPWzGceenweY/a9ai72Y9R6jwhu
	 6sUGw9ur7bVNy7brvrgQ4Dd3uD0qiUDzGC9aCq/ClDvQsVBRMaXgxAhcXN5UQtZXfv
	 5ygVkT0tDLGma9nElQV8ITVMX/sAvQ8gYRTgFnT2onQs2RdjG3cpbxXh5VK1qlo8y2
	 ei+NGta7QBWCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96B1C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514943374.13673.973954108165758413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eced241db6986c40a73c7abea5b533f8c23ed35befd4670093722a254e308da3
Date: Mon, 27 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785149433
