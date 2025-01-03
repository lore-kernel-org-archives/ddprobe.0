Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FB51C5F0C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735938954; cv=none; b=XgS+tTJPCABFXpPbgQK3YkA6RLUBGfVnPVarSz1DOWsK42qwW0neTj1FqcYfwMbBz877DCiqEIhf5cf+x3hdWvTDsubuXH5Czyd+bOLaoB54Q5bwbMx9HpTGC45GbSLPDkQKkKFxA6drkm8/5k1Gn8gUOehl/lUaykbabVN2lTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735938954; c=relaxed/simple;
	bh=0uBfc+YvFYoiNtfgvKVssiKJliTJOeSqQR4ZtaMDQRg=;
	h=To:Subject:From:Message-Id:Date; b=Iim/8f7Knfctou9JsOHtJAu1SxPSgoxxoD29SvVz/wd+AieBjMkThhMrnxi5EjXxUMKmqUY895UKAkfpRFAVXFjO26uNLhf2z77sfcYief89MMBR+AbPjqLfBy+yeTK2ulr0R0cSaK/cbo+QQxR8nsQE7Gk5ioEe1aGjFaI+Jto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i41jwILP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i41jwILP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDBCC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735938953;
	bh=0uBfc+YvFYoiNtfgvKVssiKJliTJOeSqQR4ZtaMDQRg=;
	h=To:Subject:From:Date:From;
	b=i41jwILPoksMbwvSAw5IpN0NmMyouxeFQEw+dseu/d7ZxZHRdXsB0m3x/Tpf0yTZO
	 95o+JxNZdMduBXvoz6xFE48G9skwFqmnakJM741JHLMhEEPx6vlvQMkuMcY8cTjJC5
	 BgTfUtjSqAxuz2W2T4mnyl0tNpP7FqByjrCufmdzUtcOwmxBSafUSGpitzQt4jwzBY
	 Wny7gUunJGjRL31TnGo7YlRpY6h73Cs26D9gaVrm5s0ZvlFob642HORJO5UcYRHhnJ
	 e2rLUX9wmwCYsgsiHnK87Y3XbnJtvP5VQ2QJg9Fw8Omi0sLE2z1SX0nBEyi0ECOYTD
	 4GV8YvpX+SCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99743E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593895359.18363.9975480486144896902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baaf7a07224732ccd5fa86d602a07726640aa3bcd5fefe929696a4758f3487d
Date: Fri, 03 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735938953
