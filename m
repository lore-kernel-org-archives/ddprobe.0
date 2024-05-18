Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D437BE49
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716045143; cv=none; b=aCPdDdr3Od7/oW64s9BBdzEQPgm5ZwLGHkpPftPTRWmaNJHBdZjFNvXrphXubP60pBezTSShCFWgS8k+tOFcgBoc26iNLKArtKQh3/bRbiL5y9NXLKTo5g3H6CML0Wn0K0pHKI1uoFLdCMYbkML0D4CqkyNcFTlApdMLI9YLnfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716045143; c=relaxed/simple;
	bh=V/7hKWeuSUyUy6rA/578NWo28AgMG3dyh0/Oxg5auRM=;
	h=To:Subject:From:Message-Id:Date; b=Gs373ILV7E18PN3+ztVQOLUqA4WdImmK/O1ETp2PLWNrDPTIkB+rEQPvws3LOb9k1TMjQYkpuJN7IqxYNIiiTFUu5BqylhF9a+7WC2c+8f7nSBsxCWnUd4BCMTecTMiwyDYi/Oea6vz3zWuqO9kXA82wPx7C13RXgXOiLs7TIk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY+msM1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY+msM1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6857C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716045142;
	bh=V/7hKWeuSUyUy6rA/578NWo28AgMG3dyh0/Oxg5auRM=;
	h=To:Subject:From:Date:From;
	b=LY+msM1nO2BQIj2pbZq6KBv9wmFvQ/qXl+YtXraM9CTPQbp5Z7+rkmDyW63xP8FwQ
	 dp4goV6RKROFtgHz6EC0jFXpsqx/GxcvV2ALF8YfhVMJUQcqZcyZwuZM53iJFbTIhK
	 A5Fn2ozR/3RaXvtsIMsf0JTp6gd9UxOvP6a7K9JLJ5VaOg0V8Whzpb0udNIlLWC7Lf
	 B9Kfm3hgmKMFXW3CVUDj+O3VzSNf5rMoxVE8sR/I7DsJH2P2ZSXF0m2ueD2hre/1FK
	 LcSjO0NQnJg8bAC+joHGshk2Y+nxIT2Cc0BmgXbAN3lTrKlZunP7JqTd/76kSoOWu0
	 bJYWRWtNQEQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8931C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604514279.17028.15411741123599565549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9424ee93425431e2fa0708ebea197a3f930e1d6dea9e393e8145966637d737fd
Date: Sat, 18 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716045142
