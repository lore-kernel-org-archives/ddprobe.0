Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B278221546
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791094834; cv=none; b=D2w3WGZ7K9Wq3wElE/uGpGi/Iuc6GYTKB2rb+syacsvr3ICh1Blt2N7Qeh+obninKDwI6/PzcZjvNVsC1SssEywLWBTnYqoRbRuFtk1dhFvBYr4CuWOzcKTz+ndh6/OXlOktdd/kfYB4MoyRbMKVqivuxbv0DGNPCTUgaBsFz6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791094834; c=relaxed/simple;
	bh=vZGdHaDhJkKZu1VvjlMxA35ltpG9YR6IVYrTP8U3cDU=;
	h=To:Subject:From:Message-Id:Date; b=ZAXA0gmS9ocrsDev7Nbuyz/BElJFXaRxzT5bRZ1BeXSMxkraEWEVQAW8EZsvcaJDPuIfCKsccwTsRFS1jsGpild8EzMpQe5sMbogMGHQa7TxlALtbYsooL/UD3FEvkfVksQH1pnCIT4wulOAxCdOdAdHM09Po++VoRWOdRP4Pw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j48bo9QX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j48bo9QX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1F6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791094833;
	bh=vZGdHaDhJkKZu1VvjlMxA35ltpG9YR6IVYrTP8U3cDU=;
	h=To:Subject:From:Date:From;
	b=j48bo9QXxgdguhO3O9jqUbCfc7dc2A9lcEldcVSYhR7MROdtSe1O08Eko6TWgARSq
	 V9RE9F/DJMpJFxz/oVCzo3ZDAlbpQ8MRbz5XSImktfauQiKLuFc0r6f4XwanU+PNPz
	 jnk0B8gRrgWARTgpFmqQn2rg5WmAKYDq2bTj0MqeNP3ux2WDQd0SWGL9yMp62wPV/k
	 lLj+Nm117rW8R+RkM4RIXgn2GX786R/IHC7H4yEPQfoLGD9oj9SaVcBQ2B0ODYGzgW
	 LeiynDVnu03aScp1ZwVwuFhW6/z92ODj/9hn1lw7f4/GlMQ31EJkriaxz05XPpKs9k
	 I7rST6WGcsoLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D63CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109483372.939.18004195664646225785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05abd2dd3cefae7546a51df7471365fc7d319d6e7d2a991a30ad7c82d2a5c80b
Date: Sun, 04 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791094833
