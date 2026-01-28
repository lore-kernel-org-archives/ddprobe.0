Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4142C3257
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769594634; cv=none; b=u6uZxtI4jApiwjYvaKWo/ipscvX58mISANLkAXxDSqMLNzA7618/nTflrsjKWyE/T1H50iUCMUkEoNa3vvniKPLk7+4+FkOih8Iq/3RiMDHDDTGC0mX5H20GgMo3XDugfnbPrhL28t4wlCOXas0ZrI/gVC75SrmiD95fLf47qnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769594634; c=relaxed/simple;
	bh=9p58UjzxAYgEROemS5rDoGBalg1a1enAisCZ1mHJEIo=;
	h=To:Subject:From:Message-Id:Date; b=OxFYgLWMk08e34GpI4KwDtCpNIC5uN2mIBaIN/IPLQu7j50JTMYtahIglvd+9DASA8ILoTDzC9n1m+wMcirrkws+1QeheGebrihfWANp/netT/8i6KFX9FlPYhD+ikAl7e6/mKiME0xTobj8mVKcGTeltlh7DUT7m0YYPlb34Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPpLU1Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPpLU1Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1785C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769594633;
	bh=9p58UjzxAYgEROemS5rDoGBalg1a1enAisCZ1mHJEIo=;
	h=To:Subject:From:Date:From;
	b=mPpLU1Y395UKTemWFzezOU1aZoczT4RXVgZGm361t0FKc4YH+T0unMp9Ny7rH0omy
	 nDdWUEuGdFCz/To3cDt6upd/qUg3luvswqZP7v6QZXYD6ItYz8Z2e7foGdN+hev57K
	 AoHMXebQUmW8NNWjcnbE/Uf9ALyXrJKNsQRxKeV/o7S28oECF5WmlcWbV8/qmSgtt0
	 rQTng5cLJzoaURSW5UR9xUSPzEOhplsYib7VHqzp0dHhweqk8INF4NGyRyCIIXijlt
	 VgoJph0vMH3yxuKHku2FyGUXNrSL+odqs0Up1GRlO+Sdcu+upPO/u8eV9+1WxzaOai
	 67U+8SG641wyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922CED35698
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959463358.2870.17676408955935216105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3b7e1f9c49518a80f80cf8f8fbbeebd599c4fb0f53cb4bc9b7277e6990964f
Date: Wed, 28 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769594633
