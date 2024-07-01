Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5737E847B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719810863; cv=none; b=MDwow06VPdNJeos7VsV+0JZwwUwIfG2VJcEAP7sTKzKKlUk8RrsLUtaYfeFNYB65gix2djaayoQ/3MTlfq+/z09CACLEB/Dqbpit8Yhlk6wXbPz/47OjS8Sdsu9YnYwf/aAWUWe0oqiybyFDNZZ/OPEApBPLuZvve3ZXcjsu2Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719810863; c=relaxed/simple;
	bh=28TarEPX0kV0SgMJdABW1woloHMbgv426gWMl0YOE9E=;
	h=To:Subject:From:Message-Id:Date; b=dZPUodYjY22OoL044WFe3SEJCPzOGNPnZGG2HnLOismcMoXS0lvyKOk2C/Ij1ZwI/Utte4WkZQzMGk8+Zynqv17fKrfXuKz2OKov4s9IpDsJAVcq2cmddyJsAY30URjCPQcH6R5H4M+ZNk+M158XMB1s38Q5MejhtDsflmK/y4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erczokM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erczokM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94F6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719810862;
	bh=28TarEPX0kV0SgMJdABW1woloHMbgv426gWMl0YOE9E=;
	h=To:Subject:From:Date:From;
	b=erczokM4877ZtIzmdEv3J1aM//EjIS/RDtgQQ88MBUu2n+2mo8mk2HV9usEJQFkaZ
	 IJf9YOruiUdpBeYkDRujPrsQt+1wIxHgfq92IXmakUbF4utHXvM8xygYjwRMYPkpbe
	 em1oQKyHaLRhfh6UCBA1f2YS2+tslZHeiJrB2mOkKSsuyvIGCn1WB95whVt/ISudBW
	 poF24AUyLvP8Dt53oRzRNG+euZeAw0uYyvSEKbNdrN7Cqw0CVkyeWWaG1sU98YRjEl
	 kifab15pk2xqGsG7ltixcPhF9km6NRsgq6MPN0oD0FByS+s5kyOymF7i9k4uSZmo8K
	 jgq/82aqfsY9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B06C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981086276.13492.16294904165942865135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2681a9b36cb18003247b6e26c09d12729ae1230b0db21bf3a489820244135f1
Date: Mon, 01 Jul 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719810862
