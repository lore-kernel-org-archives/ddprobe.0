Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE53299932
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747084794; cv=none; b=g3GV3t3srgF2g2VGINe0HkftZuJoeuvElXzOXVSO3mL87FnFlhNxsOuMBCcdw9AJ0sNJJcrQe6FrAgZiIxCUJOM8q1WasZFDiAGlk1JGtQJWcGcLNsImnHUkTHesvZHsOHZOoiOThfRmELa6xwHIo6KOAkfCDnHfJol4GhcON2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747084794; c=relaxed/simple;
	bh=EY4CdjfsX6h4fyn4UOYy90POgHchEe0XUrUVBViIkFQ=;
	h=To:Subject:From:Message-Id:Date; b=myAJz17DOehTRq+JuuW2Tj+2bb2gpimQbcEhuhuj4JiPOadxYYRZAoGAu3Vc98xupcoBM1XIOELevj6nk2X88ySAbvnzR9e2G1Ns0MZKqjRt3KktnUcWl6pC4M+5qY5EeXK0HVl0ZoriCO2j1rt6kRWqVioRQDPxWWMYF2miMRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ6h8dVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ6h8dVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3006C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747084793;
	bh=EY4CdjfsX6h4fyn4UOYy90POgHchEe0XUrUVBViIkFQ=;
	h=To:Subject:From:Date:From;
	b=HZ6h8dVJ4/aMpaJDKeTnSn988BUAtCHZqKsMdWglXES8UEA4Ai+cSyIpGQ95cHZp7
	 gsppG6zjzd5kWudPl3QR0svyH9iZrvcu/Rlo7eUqAKOFs2OtG1L6w0twjY4354f4kY
	 aXe/9JRuMSstcYuLn7bPiATYKjFOh4/8ZoRJgmcWJc1YsipQP1KEWGzrOHJCitDBFQ
	 h1Bn137iqy6M7LCN7ASdig5O/6HEPZX7nUxyFAXe7+G59IrxcoEOAW1XXfiZRnx+ZR
	 Dt0gSkD9JizaWf3srQZi0pYZByCBeUJGg+cdNnpacTtY1uKKUiQFkXO7Ik3XSFldC6
	 +FKa8UknEfVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90076C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708479358.10504.3471289507544491404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c3486e705c8fd1daec933f46ae3d19174eaf3a06b098832b53614dfad41b9b
Date: Mon, 12 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747084793
