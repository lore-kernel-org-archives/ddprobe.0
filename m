Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105E33264C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772762094; cv=none; b=E/zO+SfiAVEPkcQ6votSSI86CvDWkjcs1ixq1N6JH6pPzgSrv0sPbQyybgMPwrXU27vkJzINJFSqzKBSnopTbuy7PJIT8lS94BsQnMDIP0XvjRGFuzh21qRSsc6evifEmlk4R9seA6XwaIc1F/XuHaXBqi+ta4dEgeBiehMFav4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772762094; c=relaxed/simple;
	bh=svbfyElS1J0DT/o6KKkJC9sx3RvOBCJUnHMvgy+JGBU=;
	h=To:Subject:From:Message-Id:Date; b=eXuH1RWSDiAEeyXdFy6fmalYYsh7L5HW71Bzq7btszsycS/Tf+SSgzadcWKJtlaWu88r5OzuJgNvyGpNkpDW8RN7ARfBncg5WoqWgFjzC4PTA6dR3uhBgtF+6UF7V2jdqt5wx80RJ2vb7SHY/IryeUL0LOVQesZZFeDoImrPRs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRdjUsmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRdjUsmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D190C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772762093;
	bh=svbfyElS1J0DT/o6KKkJC9sx3RvOBCJUnHMvgy+JGBU=;
	h=To:Subject:From:Date:From;
	b=FRdjUsmrMrgpCS/dQfMu5s+R2jXr3kmxA8E5CgAAdKwYc/5znhYVvmyuyQrG+joQ4
	 OfS8/zk+/ivR1oYX8VEZtrc9DEcVBkD3GddbBkPGo/ZceBLZv/ilL6ZK2YH+VjKEOf
	 oDIPi4SeoMOQ6fcCiZ3UphlCIVE8kLqsYibqEXW4upl6JsYfOIS64HzQMdQL77CMdh
	 FPyuCqzgRi/gwxq5SPonukuDqiQy32NaQ67ejm7+tdnWMNIUjfkuqOo9LxZaj8kOtP
	 5xp2T/A41LU/4ATJ3c5iNnnYr4AKFb5xs08lFplzkupFk24vZk0+LC6rzEttKl/kPD
	 n4anMgY5xWYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F526F513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276209357.23044.9481722404358785544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46d1eff7a3408fb6e3efd3e7ec86e7ceba30e05de39b6225d19c77cc6e14c17
Date: Fri, 06 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772762093
