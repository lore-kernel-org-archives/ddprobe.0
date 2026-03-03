Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C74E423A77
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543694; cv=none; b=EXCLCVu2rRfFZUk35RULtLH6MEDoA2WC3zXp9rm5PeLdTBIYaP+aKzOJBKLa0RcJtQq4pFgFjqvXDk4pNUHNiI0TJdwOu0r3hGSN/iBL5UrC9kCaipk++O9vuDwdh9cMdgKZ1T8oUCn7fvZXbG+Imso72mxcec36fxjKtS5COx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543694; c=relaxed/simple;
	bh=iZqS/CiWhTkflWa+D/04J/n8AnTfap2qtbQprNYlLRY=;
	h=To:Subject:From:Message-Id:Date; b=h91a+i7nlJiw4oJZLmER2iYyrYGQl5ROzzlibzuXR18KFw1K2L/3EyEOL2LU0ecZB8udha6yNXRLKeQeaNZeNttMyvPkrA4KZkk/efza0/0KZ7isO87kfrg5AFjb6Ha1BfjnAx8C1NpC3MfUBugSAPlzFHvnAqU1abT505YUGl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSECSkx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSECSkx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4FC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772543693;
	bh=iZqS/CiWhTkflWa+D/04J/n8AnTfap2qtbQprNYlLRY=;
	h=To:Subject:From:Date:From;
	b=GSECSkx0msX5NuWFtaghVNZIKrymEr0iInrpS/loYp79uAt300APH4sZTOHVsGYAb
	 HqRpXzzD4MfRTRUwvB0J4j27FNeywOA9XqGoCozay04ll5r+/WJbmAUIAloETIqKiW
	 JH1cZz4Rma3jrvS+cZTispTsnQPdiuKwHVsW7PgEn4ZYYXNkATJ0IOh5dmbNrMyrTU
	 vutRI8UIoMxb1VFHD6TxfI7xntEL6G52+HJDpFjytj8WvmA1vUz4gYldwm4hvsbIEW
	 FdFN0mYyh4PcgSvZ9r+I9q1XSIctSy2oCzSzw8m4MQtkK44zskHdLrtv+gk/YKXquo
	 whoBFgQ5KxDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBEEC143C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254369359.11363.5579527468300737855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a67623f27d362ba902f4c81aab9858f689ce045ff562088d534401dfe0ca91c
Date: Tue, 03 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772543693
