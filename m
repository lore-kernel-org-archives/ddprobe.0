Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602228F5C
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738980354; cv=none; b=APtGU2Cqd/REkf6Muatf1Zd3VKp8fcKMX9RmPobkzRaXMjp4wrtZy1MrNVbSIBSwk20DbV4eXx2lU7x9ls0P5zbPUnX/GYIjk/mlubA5hVRRs0mtB5iDSy1FZavEQqmU73Fw5Ka9eXWwq5AdVwCwz2zqPVXlWD5ifeOw7D3xsdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738980354; c=relaxed/simple;
	bh=xvQgrh40hWVxl4BAZ1stQBuIoPsnnOoimZwi2CsYEIM=;
	h=To:Subject:From:Message-Id:Date; b=N5DA4f0bBEXDM8akdL4c42XZILD3MhzMGTJ5AIrMislQs2Hd24tACePYkXyi3FiWNof+iOoJ/pl3oSmCg9UKOSdMfAosDIaqIAUqAf5e4dH8M9JedK4vz4EA7KpJSufqjF0Wh7likwTIKonnmRcWEzHuJ6yljRhVJdIr7P7BXFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK1PlPLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK1PlPLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6ADC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738980353;
	bh=xvQgrh40hWVxl4BAZ1stQBuIoPsnnOoimZwi2CsYEIM=;
	h=To:Subject:From:Date:From;
	b=FK1PlPLTLgaFFGOgHBwnpD5JVgejG7Z5Rd2B/OOsxCXrOwst5p3CCKWkpERVn4QOm
	 pzimjp5Mq9WQXsktiINWDn8lq2SlViSBMFAwM7coZTDPmuOLnKM9ga/WraurSMYVRn
	 XFLIO2yPD2HDqPAr4oyzPFWnhYwbz8eTsdtvEsJGIUGCeEbxkLClUs+xRpZCndn3s+
	 ugUH0GtNeupA3EpNVH0P++eyjtcVLflQOEBOgaxkN3L2oe5W7y7r6JtfYHxuz11ilU
	 tyVzisi6UekO2AXR68eRU+RU+I8/Lmj65t/tC4WEPVr8YoNoPPGx7V7u3Xr/VA6wZH
	 84pf48UL3Jw+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AD3C02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898035374.18353.17787440954972244579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e57bafb5fb0d375f4f39cf51e25799279e4fb82aa2cf6db27885b2fc034a063
Date: Sat, 08 Feb 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738980353
