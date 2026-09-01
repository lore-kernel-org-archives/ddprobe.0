Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123DC367B9F
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788245434; cv=none; b=MVmvLTAvhtckCRSxokiWVonxXATzC0c86AEHBaFCjsT0dYCq8t64MS19zb/DdSPGkxewP6RNm53WdpbpIJynAxtD0GShiAaHRcG3s8Xyib8uKlpS2gFBT1xyAC52IRKUPVcKGTDnppl39ouH4TvTzbi9Lq1arKUL3IAUq9hg9iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788245434; c=relaxed/simple;
	bh=3yR7q5SjBGh9dKCkNMnQoEUcXVjQBTBOotuy7OZb29Q=;
	h=To:Subject:From:Message-Id:Date; b=YTsxxjKIjviU693oPDCPKcn9QOan3bSYFVZ+QsrKffimppFJaa1RlrYziqBQZ5gN29G0gExyK2Z2BtGw7Mz/Za3SuP4udKcLZiyb/d6Rlz7FqYzI44O4MFAC0ZcOh9NSYRk5AZKoiYYE+UG2weRq9PxTUmXn25EKpOjTi0+kJVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3vMKUKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3vMKUKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC973C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788245433;
	bh=3yR7q5SjBGh9dKCkNMnQoEUcXVjQBTBOotuy7OZb29Q=;
	h=To:Subject:From:Date:From;
	b=k3vMKUKTSeRv0QkcaVJxHXbZHKiZKRyrjjWlQ9xxnoDp8AGvXxYRfnjTl9fKzHtsU
	 4mMv1XDD+2CDxVFe5+sM7Y2uufDj1gV+1YH0O0AYbB73IE9oR+xYT8ll1sN2SsI2ix
	 Q0DO77JJk6hhmSBTiQkVGTOq0sc7kSOWFJZib5R9MLj93RUExYmjuC1m3bIhCEefJt
	 7dZiyzrsY++SaO8vXiBSDk0/22nuzH/HxDOyHK+Xvw95v1BwOqC/i/EfvSbXL4K+Wj
	 guqBDDBFeuN4fUmEHT6Y1/FK1Oy/ckKvsLIiXHpELZOZkdMhWh62bxNjdAl4ExiROY
	 Kk4F/VuxSl8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97AFC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824543368.21337.10652019884401315460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdc00c66f49f447b70bf0ce6407aebc6129627a2f1d702a2f928859c486ff6e
Date: Tue, 01 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788245433
