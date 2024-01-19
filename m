Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF151C15
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705638497; cv=none; b=XdZGaYwGOlUZH5eRmsl8t/pgPQGedoZaTYsjTKT8ycDHSrHqcBnjpoFMlVEsnVB7Y6d4sOuuqh7JWKhwhGA7lnKVTa0GuYvMwDr7SUpQLgjzP0X9k3nqNDaD9hWoL455OHi+iqFsjYU0GWbt8sOXzBQM45dcEREMJptjj/eAvbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705638497; c=relaxed/simple;
	bh=E9/SDAcTGyglEjiQmNH9dEDCBZV3sY9kURv8EbuxgKc=;
	h=To:Subject:From:Message-Id:Date; b=KC+W7hRHBMaocU1chyMIroN2KsOBSCjCVOknwFIWsBvgAC2/w7tU7aANV9+NrvY6LjwuX+mCPlSj6nROGgxVeMZ3WVOwQGzRU3Z6TX2URZH+LYa2kR50Qcvg7ugdtDihOkmyPpEdC8MglUG09ick/jLESSLf4A/9M8Bcn175vD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdLnE7CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdLnE7CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EF8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705638496;
	bh=E9/SDAcTGyglEjiQmNH9dEDCBZV3sY9kURv8EbuxgKc=;
	h=To:Subject:From:Date:From;
	b=CdLnE7CBcbRiDQfsQAlv1jJ4paPI5pKagxVUvOB7ZOLiv4hdn+aegzfrfNk+XgQq2
	 k2GhcrJ5q6kt4g3t5SX8dpHastLVry+1xwZ5QIIwC09NBqtVAxKfKm91jsfTEL7x9l
	 MZo1Bj9CIHz5Uq4w9kpi4nwkFifhPq/x4ixObEuSLYYUzb0xOhVIuBkk+FkXfMHVzD
	 toLkhypeJ8+BcPdaIvfExPmSRBux3e2SHVoeYfV5YplHoM6QEDYiGFvFPBY2cOu/J+
	 IbcQ3lq0l36deILZln3mvviSnjLpQ3a98bNQ6l1903NMI/xbiAtCpyyRf1HgaoUt7j
	 IdSSsE4SqxHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF6AC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170563849640.13241.11408511343726268051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c3ae51c56c9c0f650875bf72a59bf911630453c19dd9a0ecf090665b2961fe
Date: Fri, 19 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705638496
