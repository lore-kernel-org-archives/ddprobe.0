Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3418E1E4AB
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740085134; cv=none; b=Jcb9Xith4A8SwC8OXupFN/Um7ghWYXjor9+f2ICDZ/b5KNXA3HdbqY0kaN+kUf+LsiRYphqatPHXlU4tZFIKxexg+CiZPPqG/TBjh0qdI8NfFNni5K+LLwqC0VuoXY57+ogd/LU0MbWH/xBFRWlR7u+L/oXDcqbTSTbDhw58w0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740085134; c=relaxed/simple;
	bh=F5ooOBsSrH+OBElfn7dKC0ZMNu3WxZil1MWmSY1cdWM=;
	h=To:Subject:From:Message-Id:Date; b=i2V9hI3mRvRW2/lPtvUPvfyTWQYD7vhR+LtPPQwxxNN7griKZJoq1rW/zMxTlkZDD2IbE0os3Bwn6BYEVklgkYJ09oWm2QZE43c7kzk7wt8OxvIOE4+FcYdPk27AfRp0VYCBZEwoxBfCWdlSWy6aUZlpbnCeqt9uPoEfscihf6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or0PTeGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or0PTeGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA577C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740085133;
	bh=F5ooOBsSrH+OBElfn7dKC0ZMNu3WxZil1MWmSY1cdWM=;
	h=To:Subject:From:Date:From;
	b=or0PTeGruEVwtTWo5z0XwNpe3REto83Cpbk7U1CCaWPH3P8yMvyX43pAbrmhWmyhS
	 KrngNxEwci71H41uagh0MM1O2tmJfdnOhWEZuIV8mQx08HxV5eXh2Wyk8ZLfU+Uh0h
	 fJVootxTDn0JxwDtGmHvv0ykqjRxfofL9zS1Ro1WejQzzbGJzdQ93L3sApuL7LwMMD
	 RIrJf+Ipy7bJEAGd1Fqt17oqzoMFw0AQ1Fjaug7pFSshAJuTURAvT5QxdRJXxZBzts
	 Pb7muBE1R4a2pDyqMdwGd5OY3bBnFmq3V96ke+4aNP6CjW6rooQUB/Sr4RgpEG78PT
	 i/G+l1STzJWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BCC021B2
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174008513359.9946.14050051518259594314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2286221610f1b42cca68d4e1d80814a1873348d8c85b6d34ddafe0316e368699
Date: Thu, 20 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740085133
