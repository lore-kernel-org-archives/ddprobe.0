Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93B17736
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754375394; cv=none; b=kgUPo1r2awjHozBr91z8rbiXszWDKRTNVuLCFPr1UlJuAWIHIzuLtaKYKDV3PbWHdftZN61CeqPB9bNF1K4LZtJhKEgSUBglm1JzitusUJ2CX4pctxBrY4Wph3Sqx6uWAp38oqWeHYIA4SaYA2aoYbLYcd1ZsP0+jAjpPLDMtrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754375394; c=relaxed/simple;
	bh=ZaoOhVhQExb3k+lgOUpi28DeHDtgUEp3pVdKr9zaxro=;
	h=To:Subject:From:Message-Id:Date; b=tVtQNSnXI5JQsf95Cz1RAVsMrwKZlE3krX7U14ZkVZ68CSdRaf+JVDCfhLNYncNphDEC8B2FtcKqGjAFomZ3l/OXrDJLDbsRblbkcTNbwij7V3o6VcLXVPDTpMWuxYXfd373X2estgTlWhcbeoda99u0gwKF85uvL4EsA9IZXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anm+H36O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anm+H36O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ECDC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754375393;
	bh=ZaoOhVhQExb3k+lgOUpi28DeHDtgUEp3pVdKr9zaxro=;
	h=To:Subject:From:Date:From;
	b=anm+H36OXxmTsJMFPxHu76n5nx/JFYHubWOR6+2F4Oq4AUEp70H1KzUG6gMuxaEPz
	 EfqVQR+abWlqChiJoboiCWyiGsCh2Vu2W6q9J9OKdfhYQAB6dFfXnKy9KYbH6rCi0Z
	 +r50dMWzkhKKtdSS3bX1I903I7Ci5bfw3lfVgvXPvbLaevM47QcWV4UE6tWiVuV5LP
	 3TUtEvVGgAGLyISvQozTj8intFZiUNvBUtyoyIkVCKuXKI0AtOG23tGymkxGqeknfY
	 LpYt2B7Z/oof4I9KOlhDhKdmu4jIscRdYPEFSc8M3v2ZXu5figpAe5bJIKHmCxgCIp
	 WEFRXwYGVIduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99193C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437539361.2828.2646744657074096406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ed868ba379dd2f1911c49261f41014fca39d12d2fcc399463da462afc6fece
Date: Tue, 05 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754375393
