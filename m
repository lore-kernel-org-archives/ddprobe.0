Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A43186A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766352834; cv=none; b=Oo9vIZtdCKGnwdalS03EqZLUSSbBoWHyi8BaFguHbQWwUS7T2kMZklMgXcJNCqkz3ocVK2Mxqk7gInKyEB9cSpVSruZaWJ2LEVG3TCChOTduepoefu3WJQQbWaZ6ZTItMW/JEIO0qubGl97znwdh426tAQs14scAg3ra5Dro9mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766352834; c=relaxed/simple;
	bh=VU16G+cU8Xmj+cl+N9tjvaWfZBYRqwrX9/Y6qqm1A1Q=;
	h=To:Subject:From:Message-Id:Date; b=igZQt8iVQqa37qeuySFTTkqyMRPJ8hMaWQ3Mqt6GL/jBvKQ2sPHRZTuipi2zXJ5IS5tbZbv2SjgXK/MCzEIwPWD92yLE7Z5AfS4W/A5EnmEZeeWUMR5seuCp/V31ylUdaD/S7UsLssi5tDK3sdM9Ia6IJOiGzbaxZO1aZp4vlaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYSBjk6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYSBjk6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766352833;
	bh=VU16G+cU8Xmj+cl+N9tjvaWfZBYRqwrX9/Y6qqm1A1Q=;
	h=To:Subject:From:Date:From;
	b=EYSBjk6QdEEjZQjZyA0HHonG/3JN2Dl3qGb3+vwfvHwqx9QMsS49jkLgfHgICka2n
	 /C6ffYSGV9hUFZmBX2n2lZ1bYDuHK4G1JC3YapSWuGa8YEK4PFtVlWo9+EwiPfjY/y
	 NIGZ9+jtlebcd2WcPmUTDGWcxgRYlqIqCnD7LX87a2a52iXIZr021GwXGrhj2KVsiy
	 46tSSQ9DySvH0eeMJp0NwPddWOJckZSrhyRoP05mgsLAumAVnCZAoRqEs/cWbkqmxV
	 n/mHNwCh10xd177WFs1K6azgnSOSstz+xONYwkbZvnW5YhPmYm4PerGrc4LHciDcie
	 wSVEC7KLd/Sqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92495E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635283357.15872.11644103485286434907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca0032055f3bdbb0679b02a441f76067de5735bb184443207736264a25b6150
Date: Sun, 21 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766352833
