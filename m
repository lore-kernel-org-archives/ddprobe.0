Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E69739A7E5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775552134; cv=none; b=r3RHf7xw93baGfgF4GtDJ49nwYmzUaVXBl4aAjAYIs6Udtb2Jc0o7wyf7rz91PQuyjLSbKRr9Y2gYCvIPanAkTNhHtJwVlawolHAwNeWJYcO9ri0PrnLV8balGJnaCiqexO7yjk/yxKEO9jCTkHn0t3c576zCEu2xOxDlKkRXTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775552134; c=relaxed/simple;
	bh=5yQonbGCpPKl9oqHyxkcDYnBoSRMMj+aYtdklMWdgOk=;
	h=To:Subject:From:Message-Id:Date; b=sqTLNQsN+i4pV2bTVaVl2Gdi6T6Io174bSvirg44WaV7D7xyf9rqiTm8XJ51JDpaJAzVPWfhYWcmb30EV8f0OzcCZWxo39HwF1DGE+udSZ/H6jgfmmup3hJMbjkMlAm3kj5CFo1m6rTShpkwZOg4pCgvyEVi3kjXLz5TqUQwcVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7r2gyqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7r2gyqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C861DC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775552133;
	bh=5yQonbGCpPKl9oqHyxkcDYnBoSRMMj+aYtdklMWdgOk=;
	h=To:Subject:From:Date:From;
	b=M7r2gyqFNPz8SqGPqN2s7AF3DdHd4Y5UyGO4MvqMRtuZVgIL1xJUrm9lDY/19uul/
	 2LtZDZDgEj3oYlQBqiEUft8XPy8F1suTmw7cV9v2U1+OZX3fF7Vyp3ZDOHZ/LdenbV
	 1BvTDP3jQa4MfegxYaaP/mTs0KsyvnyIpQyXcVajh//9UqrqJ9pxHxcob1jzCH9s/C
	 cU5Q5uyEMkZ60/Ni+qCeE+6OkGPT0+Td34JTDNhn4U6/djDEMXtZAttrxPRCHrRaUz
	 wu5GEOrssElC7bqrte4KwZYbt/b2RclYhzG0UcRX30QX1jLCn59G2k1LNKNCfDfvRi
	 2YhGMR79nHClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B5CEDB7CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555213373.15183.6222963344901953334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6f933afc065f80ea2c0ef1e80ff8ba4bb480a5feed606479db4ac997872237
Date: Tue, 07 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775552133
