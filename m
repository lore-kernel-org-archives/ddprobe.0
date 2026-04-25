Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACA940DFCF
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777136854; cv=none; b=BDIqtk8nWhkO+9S/clDmk0z8qmuSmxo5WHcASha63mLLifqZFDznV2l9qsIaDT7DGwKYh+ahtz6l/7T4vMI1LVx5zT2YIrUBXJYzhfAMIEfdqP6ujPR2zTIdf1r4nKeSyZjBpQDaN3t/KEc8U1Dv6SySwjx6MdUEbyb4C1ofmqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777136854; c=relaxed/simple;
	bh=si/+NpMkMKjjhcwXDpzRfSrSqhrMzLdZLr0iZul8hJo=;
	h=To:Subject:From:Message-Id:Date; b=gaRYi3k0OovpAC4gfSgBPHpWZrsUXO+OUcriWQZa/69sI+CawgyNiPMrS+HQyWr01lsG+rgzpswbqtaIlNGzw+psYMiUJJ4qqtoMC3j/+HJJrs3JW2T6RE762MBsj1uIDQ2yPZKvF6WUM4QHNm/gEIAA2Q1l2rgv6yG+VFZug28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ70b8jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ70b8jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B20C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777136853;
	bh=si/+NpMkMKjjhcwXDpzRfSrSqhrMzLdZLr0iZul8hJo=;
	h=To:Subject:From:Date:From;
	b=cZ70b8jf0PGSZj79TuctSCWAQ8/QexsUwnExNo8ROqZcGnei858UiCD3sqOzNNqtb
	 ukp1ERcG/agyFRZcQLd8C8F9oezHe2K6ByhIFG7gEqxOZLyggMG/HmxYW0jTjeUVLT
	 9PV8q2/N5gIWWosx9HZASxaDp08dr+fCNHXHof/E6imWetvz+quvzbUQTC4B2Eio1o
	 wzB5YVklpxIeUDNAjb0lvKjinscf2/FVMRS0nq+pi3cZ+hfQyFVEu0xlOk67yv6cWo
	 4U9Wo1jtrJWijaghTWf2zR6Of27rrXFGaJCo8xr8MrelXcCnUaEY4SyMBoy2R0sDer
	 1dX9jddzza/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC15BFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713685368.23096.7684585413382565596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a707f2007ea4535ba7c9f09726c5d2cebc31ae8b07d20c1948b52c8f95c2db52
Date: Sat, 25 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777136853
