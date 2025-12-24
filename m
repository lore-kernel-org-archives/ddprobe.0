Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156CA1F0994
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766542434; cv=none; b=U2z2qqGj2Vw0fzwAdvWfvv+9i+RVjXyRHN2iqXjgifNjk4EdsZsqaBDjAtg4Dm9/ETKGmHr3IIloBw2Aa88RnyRfTqO5KAUT2rGXB97MIXh2+vsRRd74WSjQK/+L0x7VVdgA5aycraMmIT2xk55hlAmOnQPnE6KyDd9nRhvgYXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766542434; c=relaxed/simple;
	bh=JgqLe9/PJtBwlqGNDdzfcGxCqsKwZGWZUCMEgIlxxW0=;
	h=To:Subject:From:Message-Id:Date; b=RIZdal4rn7etWqUC/RkMTKsjume0i/HBBV7/wkSDmurlmPQYJ4wuqYMkAuv3ETti7S0DQTMsDFwpzhu/3/NwMglUL0d96u6EtBKb065ibilg2+LGkv/4VMDYvKW83dm8Tp9Ki2yFKUBzAM8a2/gOUcMKE4/nTgjsNRGSyHhKGPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4mOGO/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4mOGO/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF94C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766542433;
	bh=JgqLe9/PJtBwlqGNDdzfcGxCqsKwZGWZUCMEgIlxxW0=;
	h=To:Subject:From:Date:From;
	b=N4mOGO/MpxxQqyLEu+V4Fe5e3P3/xjTyA1TzQa4QoCy5HC2SdkTVKkFh6Y0bIeDHG
	 HRmN2Dyqjx56SzFRyBa9ssmQTIwkRWaqmxZvDNePKMHxa1bTyEXqaSAsmdMLYv1DAv
	 7SGiW2eTYVwFlHj++HOVQ473ln8tL1lpW95mL+YdE2UO55tdLQs3gVVSGrWeqcvyEl
	 H7aI6azrOKlSi2zy0yfWNnqTlpl1A6niCzBI3waAg/h6HOwySmfNXYDHhyazrHWdVH
	 FSfsvQIDsBlepz8Btu9I72I6XgFhYgiCRx7ovDrbFh6gwNInNwQE8+s+hGcCwmjhUV
	 LKvzRy9vzmXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBEE74904
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654243357.15970.13798122384392163137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffc0b8a3bcd88aab84d8f262673ba31186387ec6f0f65628218b7df16d3fd6d
Date: Wed, 24 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766542433
