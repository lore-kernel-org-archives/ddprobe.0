Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12AE17C69
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768052634; cv=none; b=JDXfFeFvh6O9C+eSLAfQR14fNLDtsTv86s0iZtqfYtKHwnthI6dhjIo4KUXG9GePxtVv1RaX2q/k9zqO6wdhXyRh0SXkzK5yHMjJqNgxfEh0fpMiGiCfjeL59K/nz7k1nk3fmksgtmYCrLSXXVwlWM8joiLmRedacw5HaqnZaNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768052634; c=relaxed/simple;
	bh=pyy3jXGS77dZ25WHaEIHCeCK7vbj/JgmhilVFnmbFjk=;
	h=To:Subject:From:Message-Id:Date; b=KxLVwwB8Iz6xhF4uSWUB0E2Qz5JCh5k4PZ4J5IRQCrMNBDIcAXcp3DZNXhMeBRr9i7GmoADlFXDxdbJxx2mcIwICZ3vY134X3kuEJsb4V2V6yJ57UuuKPME9h6BuAijNxxtnhGAvdaZi4642jzhyajuUQBQnAaOacLlCSPm54X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN0hnJ/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN0hnJ/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768052633;
	bh=pyy3jXGS77dZ25WHaEIHCeCK7vbj/JgmhilVFnmbFjk=;
	h=To:Subject:From:Date:From;
	b=sN0hnJ/4bR7MmzGD2aLGTn75GFO/4mZ413Cx0Cx9Ex/oOgxuc00h3D6bWKx8Q4ItW
	 RyYK/qtMWVtPIkUiUK4K5h3SdWWMcGmW6Rj2/SoKRjgra4ZD0ynap1myb3N+Z7LZvy
	 rbqzdZZ+Xw9VbQwjdZRMHuHkJpOxHNaaMgiceAyucTL9KjRbDRr9Nt3HIAJVxG+0dF
	 IbD2THVy1obxbZNaKrlgtaRfirCaxGkYWgC56gcxFXzynsOjimW9xFdq7FaVSTaayZ
	 n/XLtr7NZH9rcgN7PRo47r+FMmFmYIeCrQ5Rw0Eeb+CBhdDRxClxTsdUeVmOszoEoM
	 UB1ntg7STKyew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90855D277EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805263358.3781.10033648119474792766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d7ac188fd3c881c9f874cb100c42f7fa89eb20b90b486891b7d7af56f98b67
Date: Sat, 10 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768052633
