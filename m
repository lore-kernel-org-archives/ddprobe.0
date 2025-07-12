Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8726F06B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752281394; cv=none; b=F15ome2wRr9ApbjWpQWuriyWjV+uqiB44TGJSP1b7RdmocmJoLJC/QjRhKESuaFEe61EZYWmthdoqSL2VaBk56OEHpB5rvww9HXMSK9ufIuFDDCZ7mCwl9dQVvLlIMQpY6Vo1y8a+3eNElbBTfmpm1iYKuRrU51nueAPPe3B6wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752281394; c=relaxed/simple;
	bh=lLcJ6QxFxq7Kc3iIq4V1Q8DHWIlLjQZ0P/SUelBDEbU=;
	h=To:Subject:From:Message-Id:Date; b=GWvKqYPg27Gn4U+X12RbXmql+TMikkSxlilY1ldkM/T3V8xOUg81RYwXfJh/93iHQJKrZczpp/shdeeGIPWdsMx8J1FJ2pmKRCDaftQ8NBjIhOh68mjfX+2IZGyKWVkHuF3m0MtcBVs6X6zoSkr47SsWSLkuivY2lMy2HOIsjJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=driZR22o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="driZR22o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1143C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752281393;
	bh=lLcJ6QxFxq7Kc3iIq4V1Q8DHWIlLjQZ0P/SUelBDEbU=;
	h=To:Subject:From:Date:From;
	b=driZR22oIRpEpMmJ/lSYMpOug4Fkwnm+3AhVJk1CuTFDWKN5VdcgnGSm7acx4UR09
	 axwOID8lw3QD81WCtcu2fj45+6J3JgBfE5epMTTNKL5RtT/gxo3G2SDMKlfCECHnj8
	 80m3R6TK+VMPQInBG1d+eZ8buzxVJZqE/pe3oqy8mHou/Zt2nPdSsLh4tG7oyZbmY9
	 +BEn/ln8dvNOb79MeUVwDNIbw2uIPhAsq1oVF/e9d3wF2xyGLvSglhMciYQGJYUtkg
	 tKwzCYJ3CZ71h1Xo/EgFddJ/H5YY2xlBGTmVsL9DcMYUtpi61QWd6P4C0zkeuSDfXY
	 xWFllmKUFHZWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E0C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228139357.29741.6780821036628637900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7b57bad0161bf2822082e29d3d6c86443fb6c1e25877daeebf08c7df05e096
Date: Sat, 12 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752281393
