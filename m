Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C2610FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757818794; cv=none; b=EmDxJPuWVt448RR/R3e6akdRMKm3ElmFcH2wY/u5EeZolU0w5D2IwKMU2kPwIJ2qyg2lRqAyJtM9TKbMQeMAl/hwzWAlcydMxjIcD7PY+437iyP7MgxPO0eAF0pPj1XqqIWxfOcrlY0IMPTZqO23v76FoHi5d1m6JUYCV6pNBa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757818794; c=relaxed/simple;
	bh=2xeR4fZR8pIoyccItrIGeR8JDFJT3dhCqdlmkG7Y1TI=;
	h=To:Subject:From:Message-Id:Date; b=UosS8iwJbssV+m875iiT12mR7B4PpraefZ95wtHrT/Zg2zWRWWGWuU8EPyBQE44D9mL2crk7kc2LwjBEFY3sFMVdCkD6bmHxvzPHgBOe83UyDUcoVfqLcgvPW3PU5l1AB5RfIkxHCz9IjQCT6nqddbNPk1VtQnGy6Hr5KeaIk2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcRwaLRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcRwaLRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE0C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757818793;
	bh=2xeR4fZR8pIoyccItrIGeR8JDFJT3dhCqdlmkG7Y1TI=;
	h=To:Subject:From:Date:From;
	b=VcRwaLRpgz5BBes6vezQUv9EUvCEvpZV620YUjQMbdUdLxF8Bd9RMzQI2BFErEY5D
	 X+lp2EiVtR1uX4ma/cyKub6CklZVMowyq30KStVPyA+iH//eQ4WrK9z0VTUFf3g4Oz
	 V6MiXwIobSUrVUEaDM612sAefpI8C55/jVy2FBbYWuSPcuTnXlfYfykPqMWkfTje7R
	 B/BGUVfiPg7x0B1PROi0jpqCzzwC4/aJZlrVqOtyr8XzHR0it7+bqjduZYmJmJzh7z
	 Lf38X5PC/mM2XXOoJxr2xf3w2xBeAUUTEd8tadRDd3FyBjfIGdehWRzNN+DMbvEy3H
	 rPw7xAeTvFEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CDCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781879357.31251.11371942395850018417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05dfc4a31974dc00446576ccc073227eda0b235ab7bd6357af0ecc4949b7b803
Date: Sun, 14 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757818793
