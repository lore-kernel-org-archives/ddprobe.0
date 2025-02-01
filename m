Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579C925761
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738404354; cv=none; b=s35oeINeqVlHBOwDxosMPoQ9BfQEga9PN/AVNeVgc8mNykE9Ce+Q1pymx9bXbULCimerhfM+5qKFUf6oddtu9p7geW/VMb9X1jyoNjkuNOsSwZjqVLoYEZwCmLGNe8hjCyZK+ozndXEQVIs7kqkdXM3KxqbQXvCX+Scr/LrvLY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738404354; c=relaxed/simple;
	bh=aRugD4W+fo/bwSbter8tVHqWQpj5NGLazyChoQaiATc=;
	h=To:Subject:From:Message-Id:Date; b=gAD5Zt6SThbIiRYLXjxru2MoHR+HVN272q/OeniDpdmEPMbidrN7E0iB49kOmLn0zH85WDkEjgvGXKYKxENHaa/4Hak1h25C/NOFtRim4dI06yx49At6/wVyufSWQIX1lA8+UA2/RFlbM9OY/juheNliHoAydPLaw/2pXbDr8z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=droCO059; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="droCO059"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738404353;
	bh=aRugD4W+fo/bwSbter8tVHqWQpj5NGLazyChoQaiATc=;
	h=To:Subject:From:Date:From;
	b=droCO059c2wAuDahNfi2Nc58albbflIPw7Ndyi/Ffpap20nTHQKyoO3+cqGEYylpc
	 4mBEwyi/ItSwxKrqe30nFImeVbmwl9r8JoVTTUhjMDep8CmzkMo8+o3dmf1WImxy2W
	 02tPOZ5hPTTg0ZAWKxJrC9sexIrGDNlQmz3Wpe8mE1CfAMwDYQfIqxeDI3z/AQzQHD
	 SThfXeJ/ynzajs2E0cH4VWuWLx8xZ3BRenHuCyQv7fpEJLS34DRG3RHOFdf0nj85MV
	 rvoVGErUzoaVAB9bKBsrRCnffZ3oBYDuYAgTof4496XASz7VXzSjZ3PMM3RP7++g8G
	 c3AZGjLGDiPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E4C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840435359.25545.13467288170090974759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31601221b34685f4c9bf3831d33d8167a02f0c67c4a27d56385bc1849747ce46
Date: Sat, 01 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738404353
