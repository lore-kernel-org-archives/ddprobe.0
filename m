Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E6F748F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769921034; cv=none; b=VM5wnaTc6TmkgNF813jpCEHjR2/9KwWG/h+ChhiGHr2/TfDKJNB3TvmBHSxZMHHoodDuj8e5u0LlOkjmTk9YPdn6jzwp6J8CYgC6iIZ4sglJEQGxTOqlRLmaaFHtrK2BXgV6t2K0o5ad6FPJRgzka7i79iJowZVg7G8xYm5MPes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769921034; c=relaxed/simple;
	bh=3Wb0g285OpnCZdOkavkruqGWd8FDfVahsDy2J5nJ+ec=;
	h=To:Subject:From:Message-Id:Date; b=f1tnkTTLd3BM9PCoYX6OhO1BPf/H1duNVityA6RuP2GWywFtX9VIjrQbjkhdUmXYwznGxcl3RHKBjCwFxF0cLRZZ1ReKE/3pCNxWM3GuxkphXqcOSH+4txcdV0f35NBpDOKdXCe3w/Hv/Wv5YpmwZTE5Dk4iH/pGc/WvPJX2GpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgYCUQtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgYCUQtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA456C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769921033;
	bh=3Wb0g285OpnCZdOkavkruqGWd8FDfVahsDy2J5nJ+ec=;
	h=To:Subject:From:Date:From;
	b=LgYCUQtXo2tUHdkN1O6Oez/rT0JEl8nHMz02kF3if/OjXLpD3FGaE/XVnfik9NCGs
	 1AWn/O6cchzNg4lp1otxs5pMZezBdnsGmjzVLlquhmarXOaDlCEXJdKSIHrnW3ZuJz
	 ZJeKdoFd+9Ti+AgQ3AOhBnDeS047wzeysSaM8XIe4mm/ynAvhMWi2kXeBxX8Alhhg8
	 A8D9YG3zV9R2wjH7wpGUIQuYsve7ozmLWPnBGe4dkbUipC2tRtg6xb0h37GmlkKKa2
	 uA3THqo/7naRHuzHH3A+jLX7zO7yyi9oIJvRc30IZjOZqM2wmgsIxOBp7VREfM4hb9
	 4k9qROvDJsKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3EE7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992103358.27845.10338817926999715570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fcc99884e3849342304e5a1741f6204bb443bf7f2bb020d968e667bab5508b
Date: Sun, 01 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769921033
