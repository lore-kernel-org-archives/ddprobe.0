Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772A5471414
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784663914; cv=none; b=kjr3/R4VKzotzoVTgEDEpL/iSroi5A67qRhGDD6rEUNt+PVkKbKm28RXbZiud9jgw+027GTF0NeF3ltp0uWeT1s095kqdGr6GNKx00vHma+OFWDfg6nkJP/o83wm4aOHR7NG9mOEZHJUQD12uAvZIGYU8nmbRYschuDkhF5FhLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784663914; c=relaxed/simple;
	bh=Eg+OboUoKxia5IlEYbO3N3M9lv0xNA6AxvCKoDFjJck=;
	h=To:Subject:From:Message-Id:Date; b=cvsZmTjTn4MWwDgbQ1W3Y3jh/t3+WzLH0EiPvDgKVNILAebAF75vvZZeNAq2V5zMF/QCSGkHmkIBqUb0IqApU3m+i9iYaEb5cdN0MC1oMqYbl43X5WYGh3IANt/6lRiQLWlo4u2iU3xvTM1wMX29TAqIKKjSoBs4t6l5mnu7134=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkjuOwqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkjuOwqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9689C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784663913;
	bh=Eg+OboUoKxia5IlEYbO3N3M9lv0xNA6AxvCKoDFjJck=;
	h=To:Subject:From:Date:From;
	b=SkjuOwqQqD2A2S2bpCsd+MAU4V0356uE8vtnf1JHaw97UdbSdFSqzDWZ62NUR8Cyu
	 xC/YjmGTmMBnNPTFEczEA2kgN/Z+2gX8DCFT1dTOwy7iqmMy2jmQdkgD/8ha1daUSZ
	 77j8l8+ESuNiADYPB6v6bRPD3Ydt6kRBPW6tGqST/lNkRdIe/8U/UfQADM7npFymfO
	 6gQMEJtNRANmSyW/lzSkVmf4hFYu6Pmw3tahfMjQgxxhaHcR+PnbvmfliHqJ0U9Myz
	 YDhkM8D5zBdD5KjHHQQkeN2tzSf+qYP+sfQmNstUS88OQ+F5x8szOVaGEbYFWrrXhu
	 3rA1RlfztlSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1237C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466391371.25174.6548124001094475096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec40e22a661b17ea1b37f5a36bc2d0ed2509486f0fc710f4531152a1b679a8a6
Date: Tue, 21 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784663913
