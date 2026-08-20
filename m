Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC0E24BBEE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787191234; cv=none; b=gN4orpYwgvLZ+0sRmWDCOH4565zHm6ezgdpT2YUCdKJ+dyVm3rak+2SMXWUkWVZ5MI1RMumMF4EyxCjmLFRIEQ8ZovRYM0H3eKZlCehN9WTw0phlBYSscyr/NynySvGK/04k1rNJkaOG2Cd9rsY1cQ/RWH9REhaurvgZm/OZOVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787191234; c=relaxed/simple;
	bh=1OzLswRUQ1+XuyQj7W/Sy2TQKm4jzcCMwLT3EHI5/rs=;
	h=To:Subject:From:Message-Id:Date; b=Qi5yQ0uxkkR7tJguo6J5dgFzmKEbivKynn0DhHLh8PvjoZfXfSP03heQwTvIHRDw1GneKn5Qzg99xvBSGwSIdA6+51nlv7W428iUF13+f0LFLFgCHrBD6OVNJ/BfYykTYFhpPsDeAydYIJ1kym3RFR6YovLeSG9sJLRMQWX1Hm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SugELKll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SugELKll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05FECC19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787191234;
	bh=1OzLswRUQ1+XuyQj7W/Sy2TQKm4jzcCMwLT3EHI5/rs=;
	h=To:Subject:From:Date:From;
	b=SugELKlltAo9HqdvRcRIprO9yL1+R9aN5WOkUPChzR1A0l0C7z1g09QEbXPMgnG+Z
	 gPv7HFgv0yZtJlIw+haIDQfbQi6kw9VebpWBj5OtR8WF7DhViZKIvBeCsyItT/gq45
	 aMw9b8yearM0OpBYPZCcRy4sONL7c5hGNGnBIorVekXl0eZ8JB0Y0FsJMZlTR+DrGY
	 XLGvj5e0bi/XPca6GvEnz5ZSNM57F12Hx+KfiepkPk15+egMDWXBA9E5GkeFAE6tQW
	 2978yMHOluJgCfQa6XFw0WvnZ/vaigS0xPULs09Y7Ukze77MP7niGHY/bv8wa7brXi
	 ZeHjAUBbmiJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7190C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719123376.26044.11539411479021937664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772cb8e68afea9716c1ef88e26df9f4bdf843ae67e3f3d5b04a36de43f90b621
Date: Thu, 20 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787191233
