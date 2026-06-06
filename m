Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161A21CA13
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780722874; cv=none; b=lTmApY+GIz3HHVUtlgh6NAjgbkMlygc9yAsiJrUxo/6HsfmQSF3GdRwg6nSsMCLnXVfn05b6AJWFsMqxWlOyozq73WtM+4Gscv2GpRv3nwMcxG/we1QcBob7Viy+e56hfWGErGUexDEN8EJfVL+/k5bn8soSvbuRXQ2C9nmJPaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780722874; c=relaxed/simple;
	bh=vFchlLyafKRr/62ikdpcMLLkc3m5dSpAmSq+7XHRRlM=;
	h=To:Subject:From:Message-Id:Date; b=uwBNfhYrUEeWLSadx6++AdIDAEKVs4d4kgwqbBIVLZauOUzmt1mlbKRUicVx6ZNms2+IVB9WoINqbJQSXblaa2kIApST76lRprUoG8m0uXQUcYvDqBRd+lz9Qcw/KdyW58JKYCd+t3GqIhM4JODubFArsKjqDp5fkFmoTJ4+5yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/GGDmKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/GGDmKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C8DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780722873;
	bh=vFchlLyafKRr/62ikdpcMLLkc3m5dSpAmSq+7XHRRlM=;
	h=To:Subject:From:Date:From;
	b=G/GGDmKpOaqn+aF7Dlm+iK9s/oz1jyueU2/tYTW0OgVY//3JzViF2ctHxEkYuEfWW
	 a95zBeIfP/Za8CBJgaWOj9HAXMCO0WoLgXQStXNF9/RzlLnKcPII6BWBlqPQPck2lV
	 t2t7Kk8/sZeu5I3X8OBPMzKWWdXnbDU8gQXuAP37Kzx7qcsxN9o8cSvLd4SH8EJPC3
	 mSOuljUWcnrLZWS0qtCnfQ26ZMB8PlPlV4MeVfsJDyxS1jA39XOWtU8JwfHLh7nzh1
	 EpKGdD9DOOD60Yt76p4XEdYuBd8JxPD/G7W23f4+MyUgZhT4cai3gzDT7bJBEJ5SNY
	 ZXhOnuYijkkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE9CD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072287368.4896.4828905481390868956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9977d17521306ef9af8186dfd725cc6342578c0a6de7c1ecf07afc4443b05d35
Date: Sat, 06 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780722873
