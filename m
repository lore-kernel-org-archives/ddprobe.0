Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2230C3382E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776754054; cv=none; b=DVMYsxlshXdH7mlquAC4mOOZbdYTXFf/dYdFoj2LZFhQ2YzOljhklprm+QEGcklEckfdRV47Zvb6BvuutXNCtVaDr679ki010YP9CZwWfpnBf977eXU4gSDXLdfU+0hN8tcZjE/cVuGL2im+jna6rhk9UZBWYTogR7cQhtKyxdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776754054; c=relaxed/simple;
	bh=egagcquv4TlVuRNwtSdnEInaRLz7zQ7FadrJw9FBdNQ=;
	h=To:Subject:From:Message-Id:Date; b=JweZvgd8s7sWfFv9okIbZgTAP5pK6xQJxKoxKO3eB7nuvkdjIfI48vsWMDVl+9YXcePw8LM1ZTF0hYpLgpcKVj629Ui/l/NZ7jkQ8mDtk0uqLh5vspR9GvAiQyD6B0aBpN+MMC4busFHnndWHPzp16+ApNKdlZWcxyhqMfJ5q6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPsRhwrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPsRhwrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B761DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776754053;
	bh=egagcquv4TlVuRNwtSdnEInaRLz7zQ7FadrJw9FBdNQ=;
	h=To:Subject:From:Date:From;
	b=GPsRhwrr1fCuMFK9dYvKIUSERUva+Jp8E11sRcvkXxg149Ymer/oGH/R90PoKmwSd
	 jPTHoWnOhD0u7lvH/wi/MDqWHgQq+ovmbOLeNBelcgb4q/icvGBAPtKkXPugeVcRzg
	 BpAbP3kdUkgAXz7TS3mADMKBNeFrFPTU0e4MdU/akKfTc9TysuK0a9viTc3lMkAi9G
	 xgzjg2IzYP0EcmMiGh1kBWpHUdiV/m3KVgaf9t2VHLiNhDIy1Z6+X8ro7vKv0NMsE+
	 z1YmfrWQX67mhNSTNCZ3a11krH0sid7BhWHMDqSS4l4YICrtVwjee4UK0lmrzBXNt4
	 iqGXRSLk1Mjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B64F327B1
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675405368.24066.1600473800957250402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8893e11f7017aaf841414b8b9789b0542b58798c2e48f1c4d4bdb3f0ccd86e4
Date: Tue, 21 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776754053
