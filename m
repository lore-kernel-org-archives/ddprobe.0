Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EFA274FEB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773803094; cv=none; b=m/Nd3NSD597aWkiOaa4+6zQm2e8lMamez4mhBH/yNP8KZFg0yAk0b/zXIr2McvSLMrB6z0wI8WmppQp4fCSzmmFn/1o4THIjb9IQ/aSw1rsNbW8A2sbYEGcc5LfwyXiKhB98exsEYFqUY2vQavtCzFXVC4mK90nLSer3R4+mvj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773803094; c=relaxed/simple;
	bh=e9Vh3KUkvFN2QEbsWECTGlJrZmx6VftI27xbjCvVd6k=;
	h=To:Subject:From:Message-Id:Date; b=PMS2dfGUpyibsbT3mUAxtjSYsRTEGS4ZMBccXFr8F7z+EepvagfKnSY1wQGgIeukwPF7k5CZrPODJU7AX/BiWxf9zpfZxEgrzdIGt5FpS9zAeOUKewFhsTXzXdrY7XLFGIawVGV5/4nLRSs0Om9BFWyd9qep7Ka76WMEKlGUn00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmgGFWwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmgGFWwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38DAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773803093;
	bh=e9Vh3KUkvFN2QEbsWECTGlJrZmx6VftI27xbjCvVd6k=;
	h=To:Subject:From:Date:From;
	b=nmgGFWwaJPe7FLs1snikpYoLVuR3G26zIrGNBubwIyOnld1wxE/rlipLvQsAdptIH
	 Vl0DRrVoMSz6L4z5zgZ6Nd/QNBNuaJQkQkR3knrcb13wrZDs3NIx+25J4r/OGavr3r
	 bZ/Q1+WOfui4uGZuEpXExXZGZ3s4ggIghsYCv4PZYkwqDsz9WoRjIYo7xnXozGVOmL
	 bkH2OZVv2Kg4mwmoXw6ctRX7Kzj4m//oz74olNB9dzO86pQkyNa70TCe04PYAwOylH
	 Tcmal5HUMdbzsFo9ync/3uGhfvYKsspchrh0uUKGpr/fKATxZ2sRS+6UrtxtOSearD
	 8EWbh1SoUzDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904EF10854D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380309358.26344.8314803860391441250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cba435510940e539ef03db88c948e11bc03e766e67967d8951daaf4d810b37
Date: Wed, 18 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773803093
