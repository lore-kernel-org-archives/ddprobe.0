Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4541C17E473
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744456194; cv=none; b=qNpft5LTETTbeEpQJwLK3wIcUdn2+u8ZyZNrLOMbARMZjXGTMYTc7aHphw74rxwOWUmrDHI35pmTJpkyxiGQpbEbcTv4ep+xGb3I9jMk/b37qGOhuvItbABh7y1eCdfTv/srK4B3CiI9bwxvff9DbcI2wdi8OWHdL9JEaQEtoN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744456194; c=relaxed/simple;
	bh=dlIGcJfzBVXUxAux669zC1jRpZyDHsSF6PRwJhVytwU=;
	h=To:Subject:From:Message-Id:Date; b=BMXOFIoXs3PX83IfZumInoajUdDu4c2IOsEF2rHU54pKl0ZXWTi8SpXbP/VLx1iT4oIDWMjMhyz9Yxtx73Hb1sSofiOiBp/ucZWKPSY2wvRXRLpsNtJBGx+YZ5VEiz9dsBTYhW8M9N3ddaC99KpsMPQcqqmTtG4bmDmvqKPl9R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJAnaq1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJAnaq1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D38C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744456193;
	bh=dlIGcJfzBVXUxAux669zC1jRpZyDHsSF6PRwJhVytwU=;
	h=To:Subject:From:Date:From;
	b=DJAnaq1vPtaoUoKRLTHDgMVbd5PIy+OB9GSdw/8c9EjLT8tc76CpnzMRSH9egRizW
	 RvNixRVIkLyvYrOYfEYBr2wCxA6DutZJom8banWkpL+J24ZjibwvdNXk/QguXLtRtH
	 jaIySbA+QijVACAPxSIS/dYZW7QHdmvdwXFQA1teBBol16qbt4L8dV0naleAkVpIco
	 kSk85zhAwMLJFgIq48KIsM5lflLNcpur4k7INFTsmrIZIeucOcBXQ3pycOLQHrnwzt
	 5/he3P04HYxcKgki3aD7wHl75mwBaHnhR+ZgwmIwcVOSp7UJtFeiFdaH1ZBFk/a+Lm
	 MsVwOWDV01hQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C23C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445619360.29701.11649287904033092557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a956362f6cd46bea0f33728adebf0e5029cae1fa174994bdfbb6ca86dce8e4
Date: Sat, 12 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744456193
