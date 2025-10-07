Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BD28F4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759799994; cv=none; b=IR9nlGOd6D/zHg0iuCzwRjtZmLJJ7xbBSsV/PjXX9PqdyyN/KHk0hEfM1FR5JdEZFoTNxPWcgpU6+AlAnXAptjNexSIl6n5gx4/Bikork8uOgGmrKyYET7uuCZ2LH2McYwSH94nqMLNeNiLpuIRX3lWJ9LmZXfH1v6r3PftuqEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759799994; c=relaxed/simple;
	bh=81VHqF6PQIx+1DmulHgmEuelYZtC+9R5K4kGXclJy5s=;
	h=To:Subject:From:Message-Id:Date; b=D3Zt3eo4wXtl6exfFOqjt/oG7wXkPPKODXRct3ZbEAm7a3EsJZWfGOYsteRzXa9gxzj/0VoLyIXpoEfkp7Sc1ZJHiB/uYSAWRJDTb+d4zxxPXlYBClGUrNq2PssiEWWCd7NE1OUoAtLGfwphGVpLptE2/JiPu7pj1UNBAqbsUSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXm+R8pE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXm+R8pE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7319C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759799993;
	bh=81VHqF6PQIx+1DmulHgmEuelYZtC+9R5K4kGXclJy5s=;
	h=To:Subject:From:Date:From;
	b=XXm+R8pEQX2l3TteGYJrh0T8AEPcyEwoQFXZ0JBa6QijE2mnYT9ZKzQyBSJd4hKsC
	 AAE9alKEG8PQxXErXWVEwJyMRP4OONgTmqf0UXHv2ekXK2LGWKd7W5q9/ErPsQFNzE
	 mn2EHW97+nNMrOug2Ae8nWhvGGEgqGTxfXBcAoRcc8QQ00cwgT10KEDalv2IlEpUC7
	 Y2WGABbuU/YGA98EewMWCogOMNPa5PzLNVHVU7GwefPHUl74tmLs5+SQQj4mEMlY9Z
	 42xhSUi2Ba0Xo0mOiycFCwfmDLvowda/k/N6QD0COWjOFGS4lRzp3h7RNls24UMhfz
	 NKXkwsE+hsXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D0CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979999357.7527.15399027963845193810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1c69ec33bf3f99c95bce83e3db324e715b0ebd71441eb01cef6400083af1c1
Date: Tue, 07 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759799993
