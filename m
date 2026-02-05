Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF8413957E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770253434; cv=none; b=ba/9uzSq7NmjjJSorSW0ytOJFzuzWDzFh+UoUUsB6L2ZaispiymntSMKs7uzZE0QXtP9ZOgKTZyvckJzshrcZLp5dy6DqQOdof5oUceWYbg/TS961BmBj3Z0lY7vvzyNp4q70bJp/GC82Rm2YFsoccD7dZvZkKRLoRvWXFatHqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770253434; c=relaxed/simple;
	bh=qyUjBzOMooqetX6LC0ozfIe544xfihETkUKc01JYZlA=;
	h=To:Subject:From:Message-Id:Date; b=DhKxR5d3yrmn3tYbqrEWR4XJK+OJLKgoGQkaIO1/Vv+FpuWBr6in2x6giUdPluYKqJh/4v2LUI9AMqM72L7tx3SdeZtlQHa4XZuTOznule08FocIP0XGOPewE7DydBtoz4YZRr4j8iOMatHGFI4LHJXW4QEonrb+cWosGbPZhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b77bO2wZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b77bO2wZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B157DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770253433;
	bh=qyUjBzOMooqetX6LC0ozfIe544xfihETkUKc01JYZlA=;
	h=To:Subject:From:Date:From;
	b=b77bO2wZOShGyjh4jbyoZIpiJuT/2BsSXrzrt/Ak/lutlQZJdqAx1fUX1fGSzFUO3
	 zlHuCq9grQzuT6Ppgfs0c/4eUGsghoby8vnGKY9HxKjaKJ2UnEI6RGX46kbtBy9Yp5
	 em4AT5wX9TlGj1OAqSexLSOiTCBVnN+LLeEQuIbD07syUvkwwdAPdIpFq6HMNKjV5c
	 WLengv2rFdaXAOXcpdrfckRiIfXfZJlY3w9TZVx6cpjWl8sNsHOW+SPo690FsltJuU
	 naeObLoQsRFsICUAR53uEf7ps106rIkj7z2JnDGxWtihsOstjGxJEKxyRMSo0cwOi6
	 t9hqAQG5k+QvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98775EA794F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025343359.31723.16333393965217623381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45429dc877578181351b575be80bde0c748504645f807c1317754ee70d93a66
Date: Thu, 05 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770253433
