Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A910EAF1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748212195; cv=none; b=HqMWmRGBG6TFbIZ2CkOpP0K0NMO8GJTB88qvUZhIlzR2FDFTPcqSYpRqWN0bUXRGPQ965vRCg5pLSOykLmy9qF/MzukW8l/TzCnW1JE1PjFWvDrVzMGKTNcef1BEJmG2ms1S8cb6CYPDE2T8DpJcMkJkWpsWEFos+AkYJTwMl7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748212195; c=relaxed/simple;
	bh=xHLOH8ayIXfTBnwvFQiPHpuIKspg/XaN/Uu0wPACLjo=;
	h=To:Subject:From:Message-Id:Date; b=RjGCXjKwYrqWk3mItpzPBpHvB9FvSVjPTPz6qiWLGxa6/6R2OCjj5gcFSxrKRAg+knceXUQWIPLNbNmWbP7vX90fWv5S86UAuwtkrL8LFMY6ZPFLytSEr3O8pXfLI2ArsRC97q6Ty0xdxz53YWruCGP48RTlNuikX1JVvFyEsnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIPkI7cV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIPkI7cV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA28EC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748212193;
	bh=xHLOH8ayIXfTBnwvFQiPHpuIKspg/XaN/Uu0wPACLjo=;
	h=To:Subject:From:Date:From;
	b=mIPkI7cV34hCg+S6xzdKXeAqYZ84DE8oVN5EhPeZfGMym1ezNLO/TAP9DTWhS6P1R
	 jiWA0J5yjXg6fPCvVyPWqiU9JHYLdSo7nnoTVjH/G+VtD0+4KvbI7aKr1vrzVy9qT2
	 GrF/QNADyooI5AchpcCo14h57hr7wpXCGJLWFYZ3dz80OemNROQBglCsNXfgpcCFjz
	 1biyMkEyJFAULp0V/3GoQsjEqRJ/I+qL9BntSaKXJmMLiK+Me8jJD1gvKRzcM1SDlO
	 tyEsaeGGBxzwJsxnp8qc/q3mT7xkloSbqLNbxNdPDrK4BFNtErNoyKZgwPtFurrw3h
	 bCM6x/Up8/Tfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C29C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821219358.22070.9169904395405118040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0683acfe484544b91eda42a8e0cf0df20cf644bfd142c769ce5eb90ac11239
Date: Sun, 25 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748212193
