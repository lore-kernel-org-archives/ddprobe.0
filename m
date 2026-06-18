Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD9430C16E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781754994; cv=none; b=Ct8cmLQA4j/CGlW7fPIfNUgxKMtswpXuwkR8UIXel7+ZeTZEEHI3FwRnliMbIp39mnhc6vzej05056ivgYE4ftURjG+z3Jj/1lXYlA9A2bYizqwb+0TEtkZmo1auAlbhOanz6DDZ1bcMkztkZ/JYyrMlpssQnr060fcLc+Mvph0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781754994; c=relaxed/simple;
	bh=ahxlO/GbGaAWMUv2+5NapaoZiIxaZ112R54i3O36mSo=;
	h=To:Subject:From:Message-Id:Date; b=l4bdDzyUxv2B/7Nl+2q1Ag6vQcX2DfSccGu2+bmFvWOKUGGTbQ+UpfBd02x1gjzxnwfJwPqg4a+nHhZADUvsjCJvIDnUko6Yrbu8oMchxj6b6rj+8RY6KSgA9IUZ68/Uq6FHWjPwoS6fPbo2f/oomRovfNYUTYxYM/Ym7Qa16pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRnjuKk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRnjuKk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD00C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781754993;
	bh=ahxlO/GbGaAWMUv2+5NapaoZiIxaZ112R54i3O36mSo=;
	h=To:Subject:From:Date:From;
	b=aRnjuKk55OCghV8o+YuT6luK3ET8p7oDELAKBMEup4csGw8GE32at/8WEWDpw0oN1
	 7IJtxbB5Z6re6HI2uZSyyIoCD4sgYvtkmDn08OxFYeQZaU+KHNZ1fN2Sv29Q6zNk6x
	 ZHwuVNrJdyk3WMcw4pzLjeZ0MZZwvV2cXkWTWI5KNseLx0q3sBH/HiHwHDl37LWhNl
	 jbZdGkPfoj/6F7Z8efTz6+CKUmMmaNhgKPxP1y+QTdPd+6XZs3FX2n6oelRlLAIiAu
	 WVrW1o5ccCNfsMs7OJ0tjF/Ll1d9vfdiM//3URqy7uQKFqteTpTfzBD5WWJLgCddpx
	 spQfECsXevQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA502CD98DE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175499371.32684.2492190274011035574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916eec17c984066cdc7af4c70dad3f23782ae94d63e4f8ece454b991bef39d92
Date: Thu, 18 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781754993
