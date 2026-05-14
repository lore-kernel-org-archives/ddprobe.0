Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AE415FA81
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778717434; cv=none; b=FQPETAZymc9YhQqjSvNeEYShjMyK9874x4JFKqzvy0j34XaWJk1eaLEgEUNn2rwurdEQ7QD1Sgi0GPl9l3t34X7+An9x98Jn4BkTVjWKJQmjlvUta4SMF6++2m2mB2E/TMbkRFVHvMNUWWfWH61wC0oc+JuF4FDdaN/v14e6cpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778717434; c=relaxed/simple;
	bh=fLgFYYRgDQCpYnPusmbchhdw7lp5KvfZWekVC2rmmHk=;
	h=To:Subject:From:Message-Id:Date; b=ANOB4z7xgTfkDCslWLdfBHBwClbN4FJ/twtZzHT2QaHMIVzVmtjCszkZguRaaZ0oZXsVs5s4r2sR5eP02X/VeWa7n6gMtIHwvSTzKHG+nZmypdAw8bkbDUuvJiRWDNOylvG5v5Aebpl4Zc4jfjYI8wwLRa/uWU3AJfn8r5Ab9kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGUXrYkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGUXrYkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C6FC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778717433;
	bh=fLgFYYRgDQCpYnPusmbchhdw7lp5KvfZWekVC2rmmHk=;
	h=To:Subject:From:Date:From;
	b=dGUXrYkjGmWVm14BrqI9KICNyg3G14UstiRUAuw20wRJrqaj0Ss5UloTLAILX/THZ
	 8Q6rFcha4oBsLcKCoOLZbtvAq2FJ+Hb0YGNByl74YfewGlrP5vQ8TAYjVRL05klaH2
	 PjDiyQsg72RosD3r8wBUNSynClfbn77LVF1IFkBIuWi3Y9stosmMYhSkPno2UQrysS
	 qh4B8lVUEvesSIFk6vjxsrw3JvKzfFD4h453r/ZCvg0StpHxQLpeElPWK6qPQPP02G
	 bEFBPzXGtYzwEB5BzT+eTBVODNJjBylfRiaXKNW19ktQfkbYb9D93VNA4zPrCIpRqA
	 lscW0tH9273pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF643CD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871743369.4737.10250767605119710350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2da832481cd30cae1573c9f9cb6dd5919d6158ea5daf57890e7edd93c93f76
Date: Thu, 14 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778717433
