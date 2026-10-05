Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568312E737F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791216034; cv=none; b=fwiW4RVxFawFGhvNoK9CvznSvqFhIfSVsDD6UJLnqivIG6MOkcug1gWfw50TF/4OO3GaeIcagnnnVZhgu4GEMu58ZJ9FG+Fx0l9B1/26Un20JhD7MT9Eg/QxrNf05zcHAoyOPtUm+5phHL6FO2yYPWR5M6W70vyv7jC1MdjDYXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791216034; c=relaxed/simple;
	bh=pV0/Nej2fOhth8GOe9SALesf9zz0SaEVMxIrEND0Aos=;
	h=To:Subject:From:Message-Id:Date; b=Ol348XoWy7uecLCCVA6nACA2EJej7zWZ+Osi5YeeWoIif1HM3Stw1ePGDYdYr75DGc1F4hg6o9ldjbJfGbczXWrVhpbogdn1GMDeEHV9QX72NZntrc8OPDM8DVINTPn0TfrmOfDu0Dm9V40q2hQ6pTWwZ9bAdvZVJyyFZ1qFY1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3lewNh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3lewNh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEEAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791216033;
	bh=pV0/Nej2fOhth8GOe9SALesf9zz0SaEVMxIrEND0Aos=;
	h=To:Subject:From:Date:From;
	b=B3lewNh4ifpauR6xrdeNKl4V79XodRQzNIIJERtxbPH4UQF91OwgSfaxMBcIqH2LF
	 m8ro27iikpczEES+ne+iM4nkEABAE1hf1MiSjB3cDGNHt9KuURe66hf5qYyGpqUVlu
	 ydA2zxs4cwfBxrbXMQbM9AOZZz9fn4qXZQ0/xsEK3H3lUJjh6lMraB/i+NP8ko1E+V
	 gWztV/Xt3V+MLrjwmLkgvVSU+LBU6uWO3SLdfNMvs2us3oGCNdDA/YBGHcsXdzVGTW
	 MCgT7pYOrjjbck0rgJsHiSFz5e9v9iX+YQyczq9JcuwSPxiO22DdVSp4Us7o5JhOee
	 JqvqZuUoVkVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B1CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121603369.7651.11178383834587293928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444f5684f817b8d3777bc34cbab709b1684b50a44bd3350d9f0db34401bc5a38
Date: Mon, 05 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791216033
