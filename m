Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B1C19AD87
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724705754; cv=none; b=Za8+bYhMKIV49Q3QKSwqGUG++pEumhq4+dirqtPL7P5NTatJMTAg3cneI4tvqgM34+HnvbDYENv+oxixvgTUjIhTqQIRQ0LTlRUxIg2Wy0TjtA+anrMrfA7TsL7pcaBGpDw9pREVYlJwp6gICxkL9kA+qM6sqLQArhlmRof9CU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724705754; c=relaxed/simple;
	bh=24dA0Kx2HBTbVxgEaLYxv81zRA1R8bD3khwE7k1LqzQ=;
	h=To:Subject:From:Message-Id:Date; b=FrkoJKmuKjqTDehtEckuqVfv8owNaObnR0R2ezS/pksNeiwBpknC8I6ItR80tPpyGRkwjelr8qYsyRasP4RyAyRAtnrFLBLJlNz+AuJnOHGNtyRotdU/YCqWrFW67FLkMx4wTENFyF8tH1485vtRyUhmLbNLNRXNeFDluefGTJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chco+T0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chco+T0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A166BC8B7D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724705753;
	bh=24dA0Kx2HBTbVxgEaLYxv81zRA1R8bD3khwE7k1LqzQ=;
	h=To:Subject:From:Date:From;
	b=Chco+T0vvsnSW8KF8yu41H3cpJdCdoXfA9s5MC5VQL4rkDwplrY5Qz5Jjh0BbUEM9
	 3Kgvy/wu3kjQSQbL0oCCQwNyYPdPm3+bz1WFQ3jJVl+AXpYtmMc+u/X8U0HDLfrsoP
	 FicoZHPsa/BmIk904nSE0e/k4jFB8ZXiS32FAVaqFs+LxC6BeIGTxIveM3614hVkYv
	 ovUnkD/8Emj7aQPpOQ7VzMjqjiAwU7AXq9QLkHkPT7WZZ2cItcS27UtmZ+YZpyEsYx
	 8gXgl0fXtGSL5YCSQ1eq4fuUXxX4/BRhYHKcao413o2w14Wjrk8EPHBubZV3qDkapX
	 p7JF+vYzpLfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE3C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172470575358.18142.10578235714329859666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210368fb19935e06773b915dfde69745f297a7ee9ca17c784de117f4566d6eac
Date: Mon, 26 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724705753
