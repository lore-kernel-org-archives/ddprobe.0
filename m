Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D798156C6A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761095994; cv=none; b=Uf3ntopSVOvdk06MSSoSAtWsrWPRHoOAmiRnQKDGr136wJAAf2W92bhTafwoy/8O6PyHnZvaRo42zEHIAZFNJvJcGghzJNZSZlcwMB20EtlcoD0IN1c8mo4ShQY5yo8SGd/FJvYnLfSC6emtu3NOHuqR6lK2In9JJyEKQD4fCIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761095994; c=relaxed/simple;
	bh=/95X6SaUe3bITeS/biUJZQnSRTgHSsFBCLb0Prc4JKU=;
	h=To:Subject:From:Message-Id:Date; b=J92ediqcEHobVD0EuAfUJ1TWB5R2RcLvWSUC+ibAQBQVHUx9DIZTS1QaUSlfu2i4LeNIwyT4CkWo3c82EaA2B1QA/GCqF7nEemLoBemkgHkY009yr0aGfX3QuZsMwVO4yMfUJ3P2pwR7De7IwVh7lC4IfSwMil1LGxKWH4faTU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSK4c+FJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSK4c+FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA63C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761095993;
	bh=/95X6SaUe3bITeS/biUJZQnSRTgHSsFBCLb0Prc4JKU=;
	h=To:Subject:From:Date:From;
	b=oSK4c+FJpmIaVpn+yQUW7DLMdC4nfwKi3qIjX7UPc0QVJ3VcYeibMic1LUWN/K4uy
	 pJuzNZFd2WKZw3UCzJz4WG6I7vtGE6RMC+hBgOUG37HGq86ZipOt1v5tDdw6jVaWW+
	 ItTk2CfNoInuqdYd3MZuTHL1r+bTrtuq780FIvAzbcE69SslODw40+sqHMd/+LTT+Y
	 TxxPXvXtLMNgq0lOD3PNw9B/HrUuAauRwAc2RIlx3E0CfcGEd/crEu6W+ZtsI925hg
	 LVnGbzNk2ffHTbvyPzQ837SG/0CtC9DFKIdtxqURNW+TZajmXl7ZTciJO+ZeHlyETa
	 PCv1KW9DeXv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AFACCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109599364.3366.6070120375412915164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532d5e8a56c92f466f673737821bd772eff58b0d9c2c6366d7d6afc57c239134
Date: Wed, 22 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761095993
