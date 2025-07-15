Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E04F1C4A24
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752615594; cv=none; b=mmDn/oQSYlhu1OiD9h72AU57fWkT/4K5xlNpJeaKfr0LCf+BsSCA/tlftHEk0GalbEDylb33ygA4qNg5LsIfnz1dfqkCsGpetwIB/wvR2qmpWBdanNevRXg7O2e2t9kBd+RsMPs1cgiHQfXwXJ43ZeD0iLSjtm9aW8NL2OI8Bgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752615594; c=relaxed/simple;
	bh=zEs2iJSyVA9LSJU21FL1iTTU1/ERGsBpJwKb0geWgtw=;
	h=To:Subject:From:Message-Id:Date; b=u3aVnkorqtaHReKsra/CVr6+824skQkPpy72Wye4AZ/gAG4tNrfcsMTuD/tSDOk/DWg+npN5fY2dOzc8miVMH/MnQ4Bxbou8SnHO3tiuTTqgNpOxN8XhVhBhiPPQeM2exDq95lutMyBMLSphHoMbzfgm8XGbTLArJgbHdjdu+Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozvEmJ56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozvEmJ56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A21C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752615593;
	bh=zEs2iJSyVA9LSJU21FL1iTTU1/ERGsBpJwKb0geWgtw=;
	h=To:Subject:From:Date:From;
	b=ozvEmJ56FAbAqTMeuufVshkdLoV+A+yFAdKOfGFnOH8gPEBIeiCq8ML8E8ewyF9uQ
	 6YgZz8T9Ixo221L+pEYFVBCnEEY83cnpqJwf5kJJ/vkJXdw93u09/sPb79hJptMQMe
	 VA2KvkKvybyWVoCmnyCugvWjzV94C/XzS/bnhScc3b97hpEHYTxdmH8eAnONkDhkD6
	 pguvLC5dW1qzWA10qkho+5U5ITFPEeLpR8/YoTp1/V517V6evAiHcC/g7z9JiLoqMm
	 3I4z9iRnN7DtRKzDoD2oiMJdQZz2CUrFOWPnGOfXME0ymB9A3lp3dwSSFlv5wyssi0
	 wk6zipUn/yR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95890C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261559359.30970.14582074492760567498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4127d4e182a6ff146f891dcee34d927d2bf857607ce07bdbc7eda36025ec65f6
Date: Tue, 15 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752615593
