Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257124779E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719875123; cv=none; b=neBwZU5QNAn2kY0QdbSiYZfofzMBgQow1bG+RqNGA80/IIRsoH8waZ0u/2YDMFsFBcaO5/ZIpxCw0zgv61kaKJhrg5gBOt9XgRXJLWIcwQxo2AFC2ehgFs2VRJuq+zYie1pRWZTagUgTf7b1i6Pl8RucwTsOADA1Z/fYRuxBzwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719875123; c=relaxed/simple;
	bh=gbarPnCNxyh3ARXtM5qvXy43xY6zo0MOvG4aCLdxciA=;
	h=To:Subject:From:Message-Id:Date; b=NNuwFcwvu2PIpTrjMOjnn8DYhyO1uet6UUh1iAn7fmfeVHeg70qCuAHAaugcsVVBaXdJdb02J7MC1J4OZyDTc9AMe2UPeiViohAXdd4guDcLNRiq/TuqnRPdpWIaV1dcKdj2NJpxzi4i2R0rAiCGUWnyD69WD7y1UbIvvDZ2zwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgOO3Svn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgOO3Svn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E699AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719875122;
	bh=gbarPnCNxyh3ARXtM5qvXy43xY6zo0MOvG4aCLdxciA=;
	h=To:Subject:From:Date:From;
	b=hgOO3SvnyeIjHzmTfWh2faxWfOWyq+Ev2uv1maJ1+9mjNqYikWC4GlG2+hoXcObKr
	 tYdx+gCAqIMjVRJ8nLZY6h/Zls25MOr1CfSzsAp9HrG4J1E7BYlTNHatLlVBL5WhhR
	 lWSG4FEpYBs6sLIDvEDjEbn6GBOBzayKVUS52tG5T/tH8kxknQ5tilcjScexJspV/A
	 2cSBQy4le2lrDnWnwmOJsFduI6HWy6apfREHwxba4eigLXpppyl0TpQFUX4jMFq48H
	 xw0j8oHmu0AF+OOIGpxNeMIJzIohd3gxwV9hgoT1T0CSt3NXzbsiD1P+s6RHC3yv1P
	 5tHHW+hjSUldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE9BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987512280.7385.10181217993441259821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27345c17c0dbab581387f8a2ca37db06463e5e76468132e1605577c4d8978408
Date: Mon, 01 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719875122
