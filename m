Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE7E389118
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790395234; cv=none; b=VsjIxptOKWjVcn4NnHTvwUTcSlhzTSnapgyMWfF8aRTDsbZczqfpzWs48kEHwwTqHuV6GbQUq9kLC9YOfKO09nIRpnFT2drkebq0cli1YsR5wmWCpLO01lvqAZTtQRQ5X2ZI7Ybe6xQTHDjVi1hcPucCCSOBrp5u5y35/duQ2Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790395234; c=relaxed/simple;
	bh=Ec0Iu6NQYItFOSLBxP6qoBLhlInIKUgF5Di7h2BWBCQ=;
	h=To:Subject:From:Message-Id:Date; b=ec7Q/Rl010MTnYY/ttvKCq4N+R3MtU4nZBpjIYJUfJfkaiSWXeiLnQ+qde1ni6m0flYasHiG+2B1WmRli1OoQhGn3WUkOv+wzOgKTiBCczP937gfJic1fCVlPfOrn0gK/XpZsby72SHNr22dH6w8QrzJqlAJXPGTB5scPTM6kxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvZt5eVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvZt5eVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F04B5C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790395234;
	bh=Ec0Iu6NQYItFOSLBxP6qoBLhlInIKUgF5Di7h2BWBCQ=;
	h=To:Subject:From:Date:From;
	b=AvZt5eVP3ZKpphx9BxcsI7Fro1eVIsiQMLVWtfsfLF5OzLF0gKCV4SN9rccN1g0lf
	 RKrjiE6SBC1lGFTCvaY9ChXAGOyfdsG1wm9q3o9CO0hIZbRbPxXNowwOnBYvVZS8xL
	 44zsWwv0SDf9ZP7T2ac1UGGzy4Y2c2eYd0W3aGAq47L1jji1z/NAWH3mvPGsjbtvHw
	 bRQWKhjr7NMtiXRilQ1W6oJbGTtIMQqh2Z5Hu37CxU1K6HWnqAiu18WLFJs5FYgYvh
	 sEj1baQXXFCk03SHVvoaYZ+E30V3xRRoVPRNO1MYvjIMH6ecU6PjJl8UF9tqqCR/XR
	 JQIZxYkUu3viQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1B7C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039523382.27822.13340770550263214453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9bf1cf5b55a3ec4f99f1c517533941db769eea2fffd17c85410964b31fb8acf
Date: Sat, 26 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790395233
