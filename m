Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BEAA935
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717997243; cv=none; b=atvyvj7erY8kcl4voxIfNmSbpIA1daNoTEYNUPAW3s5FhbBJMryXllMO7Z/MVrcEK1xKYrbKVYj2TMS+uDngrhnjjtGWfkFr01RDSpSp6/anfkl9ZjbP4pPXFHTB0vnZuYkAAywyfF/f8CFr0w6XKDXuO2ekPySFf2RPsU/nqwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717997243; c=relaxed/simple;
	bh=iItRaB0otSRiDFbtNT+ebpTzH/Oxgk81ZW5kBx7OJdQ=;
	h=To:Subject:From:Message-Id:Date; b=CEzHsg4KWzYgWoXbBpsQGDQ5rWzIEq2cOIxkRziX3OZWeqUaovv2qDLspLkaC6NLRKCEBLJLZ0CkOUpjUUgpc1LYQWEwYiRL7UuURWefDXbSQMNrqjMrsTypXI8GdreKg6irIKyaOLinLv4o1KOl7Y0P6CqdJ2NRWzY4/BvZGyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWV2SDE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWV2SDE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E655BC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717997242;
	bh=iItRaB0otSRiDFbtNT+ebpTzH/Oxgk81ZW5kBx7OJdQ=;
	h=To:Subject:From:Date:From;
	b=kWV2SDE1nnKJEqDjXs10cEOUKnnFAlnH1sD6Sb7an1mxA54hpWhhP3MDX3gd3rViP
	 gtTe1fTerGdu2Kvr7sk9BrNx6fNpAhXPQUo4bg3U515jC9ap+UPITLmyFFZTCdH/st
	 0pHFMrunKB7VeeCW6dGmZ13JRGNUzj5vne5wwelM82j85jd9nMqRboztfQM4eDnXiO
	 HcpUDA1Td+tgViikqPTYilBkG2emlJQPAqlzttAcv5JajAH8i07lUQW+kavqvUJMJU
	 iASbNStJ94aMU0PvikHfpOnzDdJHO0ItLyYJa1zZ6k86MkDrExxnhLeOAq/Pr4/ozb
	 0qApwBxsRg9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC45AC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799724279.29551.3764453033875036096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72f708e08475d3cf0ae0f25d743e90cb2a0c48e1bb3c002381d9c7d7f4a9081
Date: Mon, 10 Jun 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717997242
