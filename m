Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B19E20EB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717817843; cv=none; b=n5iFQbh2ZnQjkxw/JhcMhFpX7jobVQlKYIDgtPqYJmwNDQgghEUdpAxTxHhgD7nx8+/Z5m7Ul0bPFcZcFB068B4RN2Gi3ND5ou+IjF57gzr1E2Sn5tqGJLHysB2qxYVQFwRgvzzxC2RuAkxRa7co3Hv9T/PZZOwbkXgXZxISDaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717817843; c=relaxed/simple;
	bh=8F70MMY5zmj9uZBsMuY8kY3lr7UaR9plx1dLF1jJ1Lo=;
	h=To:Subject:From:Message-Id:Date; b=iQJnnE92SzDJCV57nOyVkMQ/S9DPbzURHCwGQ39Xrp9/05vkELPzvCY/9OuyixZAZ0TR3sEpMjSLeIrTXypwmhtKKmpMtjZ8veRuKEtdXPb09DGsmeGpcOAbveud0O3zK7jOX8i+Sdu3z4CWQYbuNPEKEk3byhCsvZ47WZ8MehA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4gCJRn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4gCJRn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE49C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717817842;
	bh=8F70MMY5zmj9uZBsMuY8kY3lr7UaR9plx1dLF1jJ1Lo=;
	h=To:Subject:From:Date:From;
	b=e4gCJRn5kXju1F85gJ5cznp0xOsCSdJb63PfTsJSkCzQWBA/pIIvaojKUFgbaEfC6
	 f/+WGWTE/l39hlSIgWyuEfcuePpg79pz0UCME61ml5gEdx7xlQIGirUaqVDhkcLrsI
	 Y5djBON52l+zx9D2lVawnVq4MMYwNEfFv7mxwfKNviw3S7wwXHGQ9kmrlywFKDwJq1
	 Q+VHMh1On7zR0/GWE/V+hgo/W4Qu/0skXIXvLxYlOeSuf+j7jJE66eJrGnP/faz5iR
	 3JEQOVpQDHimZyr54/BpJaIwYyiljan9JuLeNVC0SfQN049rGKfHHQbvu/trcEKxwE
	 BsyOxVk6mM7XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C364BC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781784279.5878.13785875423917625267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ed7872391b63306ea27d86649a068eb6efca9b9aae9b47117ef1e6ae39ea86
Date: Sat, 08 Jun 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717817842
